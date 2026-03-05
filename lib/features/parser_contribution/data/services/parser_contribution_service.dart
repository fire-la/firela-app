import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/utils/logger.dart';
import '../../domain/models/parser_contribution_models.dart';

/// Service for creating GitHub issues for parser contributions
///
/// Supports two modes:
/// 1. User's GitHub token (recommended for privacy)
/// 2. Backend proxy (if available)
class ParserContributionService {
  static final ParserContributionService _instance = ParserContributionService._internal();
  factory ParserContributionService() => _instance;
  ParserContributionService._internal();

  /// GitHub repository for parser contributions
  static const String _githubRepo = 'fire-la/parsers';
  static const String _githubApiBase = 'https://api.github.com';

  /// Backend proxy URL (optional)
  /// If set, requests go through backend instead of directly to GitHub
  String? _backendProxyUrl;

  /// Set backend proxy URL
  void setBackendProxy(String? url) {
    _backendProxyUrl = url;
  }

  /// Create a GitHub issue for parser contribution
  ///
  /// [request] - The parser contribution data
  /// [githubToken] - Optional user's GitHub personal access token
  ///
  /// Returns GitHubIssueResult with issue URL on success
  Future<GitHubIssueResult> createIssue({
    required ParserContributionRequest request,
    String? githubToken,
  }) async {
    try {
      logger.i('[ParserContribution] Creating issue for: ${request.institution}');

      // Try backend proxy first if configured
      if (_backendProxyUrl != null) {
        return _createViaBackend(request);
      }

      // Fall back to direct GitHub API
      if (githubToken == null) {
        return GitHubIssueResult.failure(
          '需要 GitHub 授权才能提交。请在设置中配置 GitHub Token。',
        );
      }

      return _createViaGitHub(request, githubToken);
    } catch (e, stackTrace) {
      logger.e('[ParserContribution] Failed to create issue: $e', stackTrace: stackTrace);
      return GitHubIssueResult.failure('提交失败: $e');
    }
  }

  /// Create issue via backend proxy
  Future<GitHubIssueResult> _createViaBackend(ParserContributionRequest request) async {
    final uri = Uri.parse('$_backendProxyUrl/api/v1/parser-contribution');

    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'sanitizedData': request.toJson(),
          'userNotes': request.notes,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;

        if (data['success'] == true) {
          return GitHubIssueResult.success(
            issueNumber: data['issueNumber'] as int,
            issueUrl: data['issueUrl'] as String,
          );
        } else {
          return GitHubIssueResult.failure(
            data['message'] ?? '后端处理失败',
          );
        }
      } else {
        return GitHubIssueResult.failure(
          '后端请求失败 (${response.statusCode})',
        );
      }
    } catch (e) {
      logger.e('[ParserContribution] Backend proxy error: $e');
      // Fall through to return failure
      return GitHubIssueResult.failure('后端连接失败: $e');
    }
  }

  /// Create issue directly via GitHub API
  Future<GitHubIssueResult> _createViaGitHub(
    ParserContributionRequest request,
    String token,
  ) async {
    final uri = Uri.parse('$_githubApiBase/repos/$_githubRepo/issues');

    final response = await http.post(
      uri,
      headers: {
        'Accept': 'application/vnd.github+json',
        'Authorization': 'Bearer $token',
        'X-GitHub-Api-Version': '2022-11-28',
      },
      body: jsonEncode({
        'title': request.issueTitle,
        'body': request.issueBody,
        'labels': request.issueLabels,
      }),
    );

    if (response.statusCode == 201) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final issueUrl = data['html_url'] as String;
      final issueNumber = data['number'] as int;

      logger.i('[ParserContribution] Issue created: $issueUrl');

      return GitHubIssueResult.success(
        issueNumber: issueNumber,
        issueUrl: issueUrl,
      );
    } else if (response.statusCode == 401) {
      return GitHubIssueResult.failure(
        'GitHub Token 无效或已过期，请重新授权。',
      );
    } else if (response.statusCode == 403) {
      return GitHubIssueResult.failure(
        '权限不足。请确保 Token 有 repo 或 public_repo 权限。',
      );
    } else if (response.statusCode == 422) {
      final error = jsonDecode(response.body);
      return GitHubIssueResult.failure(
        '请求格式错误: ${error['message'] ?? '未知错误'}',
      );
    } else {
      logger.e('[ParserContribution] GitHub API error: ${response.statusCode} ${response.body}');
      return GitHubIssueResult.failure(
        'GitHub 请求失败 (${response.statusCode})',
      );
    }
  }

  /// Check if user has valid GitHub token
  Future<bool> validateToken(String token) async {
    final uri = Uri.parse('$_githubApiBase/user');

    try {
      final response = await http.get(
        uri,
        headers: {
          'Accept': 'application/vnd.github+json',
          'Authorization': 'Bearer $token',
          'X-GitHub-Api-Version': '2022-11-28',
        },
      );

      return response.statusCode == 200;
    } catch (e) {
      logger.e('[ParserContribution] Token validation failed: $e');
      return false;
    }
  }

  /// Get repository info (for displaying repo link)
  String get repositoryUrl => 'https://github.com/$_githubRepo';

  /// Get issue creation URL (for manual fallback)
  String get newIssueUrl => 'https://github.com/$_githubRepo/issues/new?labels=new-parser,needs-review';
}
