import 'dart:math';

import 'ocr_engine_interface.dart';
import '../../utils/logger.dart';

/// A reconstructed logical line from one or more OCR blocks.
///
/// Represents a single visual row on the receipt, where blocks that share
/// the same vertical position are merged into one logical line.
class ReconstructedLine {
  /// Merged text from all blocks in this line, joined by double spaces.
  final String text;

  /// Top Y coordinate of this line (minimum Y among source blocks).
  final double topY;

  /// Bottom Y coordinate (maximum Y + height among source blocks).
  final double bottomY;

  /// Source OCR blocks that were merged into this line.
  final List<OcrBlock> sourceBlocks;

  const ReconstructedLine({
    required this.text,
    required this.topY,
    required this.bottomY,
    required this.sourceBlocks,
  });
}

/// Reconstructs logical lines from OCR blocks using vertical coordinate clustering.
///
/// OCR engines often split a single receipt row (e.g., "Coke  3.00") into
/// separate blocks. This class groups blocks that are vertically aligned
/// (same Y position) into single logical lines.
class LineReconstructor {
  LineReconstructor._();

  /// Reconstruct logical lines from OCR blocks.
  ///
  /// Algorithm:
  /// 1. Sort blocks by top Y coordinate
  /// 2. Cluster blocks whose Y ranges overlap (threshold: 50% of shorter block height)
  /// 3. Within each cluster, sort blocks by left X coordinate
  /// 4. Join block texts with double spaces
  static List<ReconstructedLine> reconstruct(List<OcrBlock> blocks) {
    if (blocks.isEmpty) return [];

    // Sort blocks by their top Y coordinate
    final sorted = List<OcrBlock>.from(blocks)
      ..sort((a, b) => a.boundingBox.top.compareTo(b.boundingBox.top));

    final lines = <ReconstructedLine>[];
    var currentCluster = <OcrBlock>[sorted.first];

    for (int i = 1; i < sorted.length; i++) {
      final block = sorted[i];
      final prevBlock = currentCluster.last;

      if (_isVerticallyAligned(prevBlock, block)) {
        currentCluster.add(block);
      } else {
        lines.add(_buildLine(currentCluster));
        currentCluster = [block];
      }
    }

    // Don't forget the last cluster
    if (currentCluster.isNotEmpty) {
      lines.add(_buildLine(currentCluster));
    }

    logger.i('[LineReconstructor] Reconstructed ${lines.length} lines from ${blocks.length} blocks');
    return lines;
  }

  /// Check if two blocks are vertically aligned (on the same logical row).
  ///
  /// Uses vertical overlap: if the Y ranges of two blocks overlap by at least
  /// 50% of the shorter block's height, they're considered on the same row.
  static bool _isVerticallyAligned(OcrBlock a, OcrBlock b) {
    final aTop = a.boundingBox.top;
    final aBottom = a.boundingBox.bottom;
    final bTop = b.boundingBox.top;
    final bBottom = b.boundingBox.bottom;

    // Calculate overlap
    final overlapTop = max(aTop, bTop);
    final overlapBottom = min(aBottom, bBottom);
    final overlapHeight = max(0.0, overlapBottom - overlapTop);

    // Shorter block height
    final aHeight = aBottom - aTop;
    final bHeight = bBottom - bTop;
    final minHeight = min(aHeight, bHeight);

    if (minHeight <= 0) return false;

    // Overlap must be at least 50% of the shorter block
    return overlapHeight >= minHeight * 0.5;
  }

  /// Build a ReconstructedLine from a cluster of blocks sorted by X position.
  static ReconstructedLine _buildLine(List<OcrBlock> cluster) {
    // Sort by left X within the cluster
    final xSorted = List<OcrBlock>.from(cluster)
      ..sort((a, b) => a.boundingBox.left.compareTo(b.boundingBox.left));

    // Join texts with double space to preserve visual separation
    final text = xSorted.map((b) => b.text.trim()).join('  ');

    final topY = cluster.map((b) => b.boundingBox.top).reduce(min);
    final bottomY = cluster.map((b) => b.boundingBox.bottom).reduce(max);

    return ReconstructedLine(
      text: text,
      topY: topY,
      bottomY: bottomY,
      sourceBlocks: xSorted,
    );
  }
}
