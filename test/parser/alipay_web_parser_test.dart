import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela/parser/parser.dart';

void main() {
  late AlipayWebParser parser;

  setUp(() {
    parser = AlipayWebParser();
  });

  group('identify', () {
    test('returns true for valid Alipay Web CSV', () {
      final content = utf8.encode('支付宝交易记录明细查询\n...');
      expect(parser.identify('test.csv', Uint8List.fromList(content)), isTrue);
    });

    test('returns false for random content', () {
      final content = utf8.encode('random content');
      expect(parser.identify('test.csv', Uint8List.fromList(content)), isFalse);
    });
  });

  group('parse', () {
    test('returns transactions for valid CSV', () {
      final content = utf8.encode('''
支付宝交易记录明细查询
交易号,商家订单号,交易创建时间,付款时间,修改时间,交易来源地,类型,交易对方,商品名称,金额（元）,收/支,交易状态
2024010112345678,,2024年1月1日 10:30:00,,,,,商户A,商品A,50.00,支出,交易成功
---
''');
      final result = parser.parse(Uint8List.fromList(content));

      expect(result, isA<ParseSuccess>());
      final success = result as ParseSuccess;
      expect(success.data.length, equals(1));
      expect(success.data[0].amount.toString(), equals('-50')); // 支出为负
      expect(success.data[0].currency, equals('CNY'));
    });

    test('handles income as positive', () {
      final content = utf8.encode('''
支付宝交易记录明细查询
交易号,商家订单号,交易创建时间,付款时间,修改时间,交易来源地,类型,交易对方,商品名称,金额（元）,收/支,交易状态
2024010112345678,,2024年1月1日 10:30:00,,,,,商户A,商品A,100.00,收入,交易成功
---
''');
      final result = parser.parse(Uint8List.fromList(content));

      expect(result, isA<ParseSuccess>());
      final success = result as ParseSuccess;
      expect(success.data[0].amount.toString(), equals('100'));
    });

    test('skips "其他" type with warning', () {
      final content = utf8.encode('''
支付宝交易记录明细查询
交易号,商家订单号,交易创建时间,付款时间,修改时间,交易来源地,类型,交易对方,商品名称,金额（元）,收/支,交易状态
2024010112345678,,2024年1月1日 10:30:00,,,,,商户A,商品A,50.00,其他,交易成功
---
''');
      final result = parser.parse(Uint8List.fromList(content));

      // "其他"类型被跳过，没有有效交易
      expect(result, isA<ParseFailure>());
      final failure = result as ParseFailure;
      expect(failure.warnings, isNotEmpty);
    });

    test('returns failure for empty content', () {
      final result = parser.parse(Uint8List(0));
      expect(result, isA<ParseFailure>());
    });

    test('returns failure for missing header', () {
      final content = utf8.encode('no header here\nsome,data');
      final result = parser.parse(Uint8List.fromList(content));
      expect(result, isA<ParseFailure>());
    });
  });
}
