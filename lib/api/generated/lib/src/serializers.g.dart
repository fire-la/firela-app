// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add($NlpSuggestedPayeeDto.serializer)
      ..add($TransactionSummaryDto.serializer)
      ..add(AccountExchangeRateWarningDto.serializer)
      ..add(AccountItemDto.serializer)
      ..add(AccountItemWithAssetClassDto.serializer)
      ..add(AccountListResponseDto.serializer)
      ..add(AccountResponseDto.serializer)
      ..add(AccountResponseDtoBookingMethodEnum.serializer)
      ..add(AccountResponseDtoStatusEnum.serializer)
      ..add(AccountResponseDtoTypeEnum.serializer)
      ..add(AccountStandardListResponseDto.serializer)
      ..add(AccountStandardResponseDto.serializer)
      ..add(AccountStandardResponseDtoTypeEnum.serializer)
      ..add(AccountsResponseDto.serializer)
      ..add(AccountsSummaryDto.serializer)
      ..add(AnonymousLoginDto.serializer)
      ..add(ApiProblemResponseDto.serializer)
      ..add(AssetClassAccountsResponseDto.serializer)
      ..add(AssetClassGroupDto.serializer)
      ..add(AssetClassGroupDtoAssetClassEnum.serializer)
      ..add(AssetClassSummaryDto.serializer)
      ..add(BalanceByCurrencyDto.serializer)
      ..add(BalanceResponseDto.serializer)
      ..add(CashFlowByCurrencyDto.serializer)
      ..add(CashFlowResponseDto.serializer)
      ..add(CloseAccountDto.serializer)
      ..add(CommodityListResponseDto.serializer)
      ..add(CommodityResponseDto.serializer)
      ..add(ConvertedCashFlowDto.serializer)
      ..add(ConvertedNetWorthDto.serializer)
      ..add(CreateAccountDto.serializer)
      ..add(CreateAccountDtoBookingMethodEnum.serializer)
      ..add(CreatePostingDto.serializer)
      ..add(CreateTransactionDto.serializer)
      ..add(CreateTransactionDtoFlagEnum.serializer)
      ..add(CurrencyBalanceDto.serializer)
      ..add(DashboardControllerGetAccounts200Response.serializer)
      ..add(DecisionOptionDto.serializer)
      ..add(DeleteOwnUserDto.serializer)
      ..add(ExchangeRateWarningDto.serializer)
      ..add(ExpectedTransactionListResponseDto.serializer)
      ..add(ExpectedTransactionResponseDto.serializer)
      ..add(ExpectedTransactionRuleDto.serializer)
      ..add(ExportRulesResponseDto.serializer)
      ..add(FileImportControllerIdentifyFile400Response.serializer)
      ..add(FileImportControllerImportFile400Response.serializer)
      ..add(FileImportControllerImportFile413Response.serializer)
      ..add(FileImportControllerImportFile429Response.serializer)
      ..add(ForecastItemDto.serializer)
      ..add(ForecastResponseDto.serializer)
      ..add(IdentifyResultDto.serializer)
      ..add(ImportErrorDto.serializer)
      ..add(ImportResultDto.serializer)
      ..add(ImporterConfigDataDto.serializer)
      ..add(ImporterConfigDto.serializer)
      ..add(ImporterConfigDtoImporterIdEnum.serializer)
      ..add(MapperDefaultsDto.serializer)
      ..add(MonthlyForecastDto.serializer)
      ..add(MultiCurrencyBalanceResponseDto.serializer)
      ..add(MultiCurrencyPointDto.serializer)
      ..add(NetWorthByCurrencyDto.serializer)
      ..add(NetWorthResponseDto.serializer)
      ..add(NlpAccountConfirmationDataDto.serializer)
      ..add(NlpAlternativePayeeDto.serializer)
      ..add(NlpDefaultAccountsDto.serializer)
      ..add(NlpDuplicateConfirmationDataDto.serializer)
      ..add(NlpParsedDataDto.serializer)
      ..add(NlpParsedDataDtoInvestmentActionEnum.serializer)
      ..add(NlpParsedDataDtoPaymentSourceEnum.serializer)
      ..add(NlpPayeeConfirmationDataDto.serializer)
      ..add(NlpPayeeConfirmationDataDtoSuggestedPayee.serializer)
      ..add(NlpResponseDto.serializer)
      ..add(NlpResponseDtoActionEnum.serializer)
      ..add(NlpResponseDtoAssetSubTypeEnum.serializer)
      ..add(NlpResponseDtoEquitySubTypeEnum.serializer)
      ..add(NlpResponseDtoIntentEnum.serializer)
      ..add(NlpResponseDtoLiabilitySubTypeEnum.serializer)
      ..add(NlpResponseDtoPaymentSourceEnum.serializer)
      ..add(NlpResponseDtoStatusEnum.serializer)
      ..add(NlpRuleConfirmationDataDto.serializer)
      ..add(NlpSimilarityDto.serializer)
      ..add(NlpSourceTransactionDto.serializer)
      ..add(NlpSuggestedAccountDto.serializer)
      ..add(NlpSuggestedAccountsDto.serializer)
      ..add(NlpSuggestedPayeeDtoSource_Enum.serializer)
      ..add(NlpTargetTransactionDto.serializer)
      ..add(NlpTransactionInfoDto.serializer)
      ..add(PayeeAutocompleteResponseDto.serializer)
      ..add(PayeeListResponseDto.serializer)
      ..add(PayeeProfileListResponseDto.serializer)
      ..add(PayeeProfileResponseDto.serializer)
      ..add(PayeeProfileResponseDtoCategoryEnum.serializer)
      ..add(PayeeProfileResponseDtoDataSourceEnum.serializer)
      ..add(PayeeResponseDto.serializer)
      ..add(PayeeStatsResponseDto.serializer)
      ..add(PlatformGroupDto.serializer)
      ..add(PortfolioTrendsResponseDto.serializer)
      ..add(PostingDetailDto.serializer)
      ..add(PostingResponseDto.serializer)
      ..add(ProcessNlpDto.serializer)
      ..add(ProviderSyncConfigDto.serializer)
      ..add(ProviderSyncDto.serializer)
      ..add(ProviderSyncResponseDto.serializer)
      ..add(RecurringMatchInfoDto.serializer)
      ..add(RecurringRuleResponseDto.serializer)
      ..add(RecurringRuleWithStatsResponseDto.serializer)
      ..add(RecurringSuggestionDto.serializer)
      ..add(RecurringSuggestionDtoSuggestedFrequencyEnum.serializer)
      ..add(RegionConfigDto.serializer)
      ..add(RegionInfoDto.serializer)
      ..add(RegionsMetadataResponseDto.serializer)
      ..add(ReopenAccountDto.serializer)
      ..add(ReviewDetailDto.serializer)
      ..add(ReviewDetailDtoConfidenceLevelEnum.serializer)
      ..add(ReviewDetailDtoStatusEnum.serializer)
      ..add(ReviewDetailDtoTypeEnum.serializer)
      ..add(ReviewItemPreviewDto.serializer)
      ..add(ReviewItemPreviewDtoBranchTypeEnum.serializer)
      ..add(ReviewListResponseDto.serializer)
      ..add(ReviewStatsDto.serializer)
      ..add(ReviewSummaryDto.serializer)
      ..add(ReviewSummaryDtoConfidenceLevelEnum.serializer)
      ..add(ReviewSummaryDtoStatusEnum.serializer)
      ..add(ReviewSummaryDtoTransaction.serializer)
      ..add(ReviewSummaryDtoTypeEnum.serializer)
      ..add(RuleStatisticsResponseDto.serializer)
      ..add(RuleStatisticsResponseDtoPeriodEnum.serializer)
      ..add(RuleStatisticsResponseDtoRuleStatsInner.serializer)
      ..add(SignupDto.serializer)
      ..add(SupportedProvidersResponseDto.serializer)
      ..add(TestRuleDto.serializer)
      ..add(TestRuleResponseDto.serializer)
      ..add(TimeSeriesPointDto.serializer)
      ..add(TransactionDetailDto.serializer)
      ..add(TransactionDetailDtoFlagEnum.serializer)
      ..add(TransactionDetailDtoSourceTypeEnum.serializer)
      ..add(TransactionDetailDtoStatusEnum.serializer)
      ..add(TransactionListResponseDto.serializer)
      ..add(TransactionResponseDto.serializer)
      ..add(TransactionRuleListResponseDto.serializer)
      ..add(TransactionRuleResponseDto.serializer)
      ..add(TransactionRuleResponseDtoLearningSourceEnum.serializer)
      ..add(TransactionRuleResponseDtoMatchLogicEnum.serializer)
      ..add(TransactionSummaryDtoSourceTypeEnum.serializer)
      ..add(TrendSummaryDto.serializer)
      ..add(UpdateAccountDto.serializer)
      ..add(UpdateAccountDtoBookingMethodEnum.serializer)
      ..add(UpdateTransactionDto.serializer)
      ..add(UpdateTransactionDtoFlagEnum.serializer)
      ..add(UpdateUserSettingDto.serializer)
      ..add(UpdateUserSettingDtoColorSchemeEnum.serializer)
      ..add(UpdateUserSettingDtoViewModeEnum.serializer)
      ..add(ValidateRuleDto.serializer)
      ..add(ValidateRuleDtoMatchLogicEnum.serializer)
      ..add(ValidateRuleResponseDto.serializer)
      ..add(VersionedConfigDto.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AccountExchangeRateWarningDto)]),
          () => new ListBuilder<AccountExchangeRateWarningDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AccountItemDto)]),
          () => new ListBuilder<AccountItemDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AccountItemWithAssetClassDto)]),
          () => new ListBuilder<AccountItemWithAssetClassDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AccountResponseDto)]),
          () => new ListBuilder<AccountResponseDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AccountStandardResponseDto)]),
          () => new ListBuilder<AccountStandardResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AssetClassGroupDto)]),
          () => new ListBuilder<AssetClassGroupDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BalanceByCurrencyDto)]),
          () => new ListBuilder<BalanceByCurrencyDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(dynamic)])
          ]),
          () => new ListBuilder<BuiltList<dynamic>>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CommodityResponseDto)]),
          () => new ListBuilder<CommodityResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CreatePostingDto)]),
          () => new ListBuilder<CreatePostingDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CurrencyBalanceDto)]),
          () => new ListBuilder<CurrencyBalanceDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CurrencyBalanceDto)]),
          () => new ListBuilder<CurrencyBalanceDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ExchangeRateWarningDto)]),
          () => new ListBuilder<ExchangeRateWarningDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ExchangeRateWarningDto)]),
          () => new ListBuilder<ExchangeRateWarningDto>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ExpectedTransactionResponseDto)]),
          () => new ListBuilder<ExpectedTransactionResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ForecastItemDto)]),
          () => new ListBuilder<ForecastItemDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ImportErrorDto)]),
          () => new ListBuilder<ImportErrorDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ReviewItemPreviewDto)]),
          () => new ListBuilder<ReviewItemPreviewDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MonthlyForecastDto)]),
          () => new ListBuilder<MonthlyForecastDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NlpAlternativePayeeDto)]),
          () => new ListBuilder<NlpAlternativePayeeDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(PayeeProfileResponseDto)]),
          () => new ListBuilder<PayeeProfileResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PayeeResponseDto)]),
          () => new ListBuilder<PayeeResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PlatformGroupDto)]),
          () => new ListBuilder<PlatformGroupDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PostingResponseDto)]),
          () => new ListBuilder<PostingResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RegionInfoDto)]),
          () => new ListBuilder<RegionInfoDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ReviewSummaryDto)]),
          () => new ListBuilder<ReviewSummaryDto>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(RuleStatisticsResponseDtoRuleStatsInner)]),
          () => new ListBuilder<RuleStatisticsResponseDtoRuleStatsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DecisionOptionDto)]),
          () => new ListBuilder<DecisionOptionDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PostingDetailDto)]),
          () => new ListBuilder<PostingDetailDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TimeSeriesPointDto)]),
          () => new ListBuilder<TimeSeriesPointDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(MultiCurrencyPointDto)]),
          () => new ListBuilder<MultiCurrencyPointDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ExchangeRateWarningDto)]),
          () => new ListBuilder<ExchangeRateWarningDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TransactionDetailDto)]),
          () => new ListBuilder<TransactionDetailDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TransactionRuleResponseDto)]),
          () => new ListBuilder<TransactionRuleResponseDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(dynamic)]),
          () => new ListBuilder<dynamic>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(dynamic)]),
          () => new ListBuilder<dynamic>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(dynamic)]),
          () => new ListBuilder<dynamic>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
