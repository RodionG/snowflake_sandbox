call h10_analytics.public.alter_postgres_table_schema(
    'helium10_main_db',
    'H10_ANALYTICS',
    'H10_MAIN',
    'ProfitsDataOfMwsToken',
    'id',
    null,
    false,
    object_construct(
        dataFrom, timestamp,
        dataReady, varchar,
        disabled, varchar,
        disabledAt, integer,
        existingReports, varchar,
        fbaInventoryCurrentInventoryReportLastRequestedAt, integer,
        fbaInventoryCurrentInventoryReportUpTo, integer,
        feesUpTo, integer,
        financialEventsUpTo, integer,
        firstReportAt, integer,
        followupDataReady, varchar,
        forecastedProductsInitiated, varchar,
        heatMapReportLastStartedAt, integer,
        heatMapReportProcessedAt, integer,
        heatMapReportRequestedAt, integer,
        heatMapReportUpTo, integer,
        historicalPlanInitiated, varchar,
        id, integer,
        inboundShipmentsLockTo, integer,
        inboundShipmentsUpTo, integer,
        inventoryForecastReportLastStartedAt, integer,
        inventoryForecastReportProcessedAt, integer,
        inventoryForecastReportRequestedAt, integer,
        inventoryForecastReportUpTo, integer,
        isResolverUsed, varchar,
        lastReportAt, integer,
        lock, varchar,
        lockedAt, integer,
        newUpTo, integer,
        nextStorageFeeCheckAt, integer,
        referralFeesProcessedAt, timestamp,
        referralFeesRequestedAt, timestamp,
        reimbursementUpTo, integer,
        reportInterval, integer,
        reportTimeout, integer,
        reservedInventoryDataLockTo, timestamp,
        reservedInventoryDataUpTo, integer,
        restockInventoryRecommendationLockTo, timestamp,
        restockInventoryRecommendationUpTo, integer,
        returnsUpTo, integer,
        shipmentUpTo, integer,
        shippingReportLockedAt, timestamp,
        state, varchar,
        stateDetails, varchar,
        storageFeeState, integer,
        token_id, integer,
        updateUpTo, integer
    )
);
