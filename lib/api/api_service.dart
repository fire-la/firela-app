import 'api_client.dart';

/// Base class for API services using generated types
abstract class ApiService {
  final ApiClientWrapper client;

  ApiService() : client = ApiClientWrapper.instance;
}
