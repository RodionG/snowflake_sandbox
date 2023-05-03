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

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AccessExtensionLog',
    'AccessExtensionLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        apiVersion, integer,
        asin, varchar,
        createdAt, integer,
        eventDate, integer,
        ip, varchar,
        marketplace, varchar,
        u_id, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AdminActionSuperLoginLog',
    'AdminActionSuperLoginLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        adminUserId, integer,
        createdAt, integer,
        customerUserId, integer,
        eventDate, integer,
        reasonToLogin, varchar,
        taskLink, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AlAlertsLog',
    'AlAlertsLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        AlProduct_id, integer,
        createdAt, integer,
        errorMessage, varchar,
        eventDate, integer,
        sentAt, integer,
        sentTo, varchar,
        status, integer,
        subject, varchar,
        type, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AlDelayedEmailArchive',
    'AlDelayedEmailArchive',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        AlProduct_id, integer,
        asin, varchar,
        createdAt, integer,
        eventDate, integer,
        eventType, integer,
        group, integer,
        marketplaceId, integer,
        notification, varchar,
        notificationType, varchar,
        sentAt, integer,
        title, varchar,
        updatedAt, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AlEventsHistory',
    'AlEventsHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        AlProduct_id, integer,
        additionalInfo, varchar,
        asin, varchar,
        createdAt, integer,
        eventDate, integer,
        eventType, integer,
        newValue, varchar,
        oldValue, varchar,
        sellerId, varchar,
        sellerSku, varchar,
        shortMarketplaceId, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AlProductReviewsHistory',
    'AlProductReviewsHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        asin, varchar,
        avgStar, float,
        createdAt, integer,
        eventDate, integer,
        fiveStar, integer,
        fiveStarRatingCount, integer,
        fourStar, integer,
        fourStarRatingCount, integer,
        oneStar, integer,
        oneStarRatingCount, integer,
        shortMarketplaceId, integer,
        threeStar, integer,
        threeStarRatingCount, integer,
        twoStar, integer,
        twoStarRatingCount, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AlSalesRankHistory',
    'AlSalesRankHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        AlProduct_id, integer,
        createdAt, integer,
        eventDate, integer,
        productCategoryId, varchar,
        salesRank, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AlScreenshotsHistory',
    'AlScreenshotsHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        AlProduct_id, integer,
        createdAt, integer,
        eventDate, integer,
        imageDesktopPath, varchar,
        imageMobilePath, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AmzOrderItem',
    'AmzOrderItem',
    'CLICKHOUSE_MAIN',
    object_construct(
        ASIN, varchar,
        Account_id, integer,
        AmazonOrderId, varchar,
        Gross, float,
        ItemPriceAmount, float,
        MarketplaceId, varchar,
        OrderItemId, varchar,
        OrderStatus, varchar,
        PurchaseDate, integer,
        QuantityOrdered, integer,
        SellerSKU, varchar,
        SpToken_id, integer,
        eventDate, integer,
        lastDataSource, varchar,
        updatedAt, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AmzOrderItemAggregatedAsin',
    'AmzOrderItemAggregatedAsin',
    'CLICKHOUSE_MAIN',
    object_construct(
        ASIN, varchar,
        Account_id, integer,
        Gross, float,
        Marketplace, varchar,
        PurchaseDate, integer,
        QuantityOrdered, integer,
        SpToken_id, integer,
        aggregatedAt, integer,
        eventDate, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'AppIdChromeExtensionLog',
    'AppIdChromeExtensionLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        appId, varchar,
        createdAt, integer,
        eventDate, integer,
        source, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'BsrChartLog',
    'BsrChartLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        asin, varchar,
        createdAt, integer,
        eventDate, integer,
        ip, varchar,
        marketplaceId, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'CardChangeLog',
    'CardChangeLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        createdAt, integer,
        eventDate, integer,
        ip, varchar,
        result, integer,
        token, varchar,
        user_id, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'FreedomTicketOperationsLog',
    'FreedomTicketOperationsLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        createdAt, integer,
        eventDate, integer,
        operation, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'IpAsinData',
    'IpAsinData',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        asin, varchar,
        createdAt, integer,
        eventDate, integer,
        jsonResponse, varchar,
        marketplace, varchar,
        xmlResponse, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'IpFeedSubmissionLog',
    'IpFeedSubmissionLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        eventDate, integer,
        feedSubmissionId, varchar,
        hasErrors, integer,
        jsonResponse, varchar,
        operation, varchar,
        xmlRequest, varchar,
        xmlResponse, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'LiteTaskHistoryFile',
    'LiteTaskHistoryFile',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        createdAt, integer,
        eventDate, integer,
        filename, varchar,
        s3Bucket, varchar,
        taskClass, varchar,
        taskDebugId, varchar,
        taskId, varchar,
        taskSuccess, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MailerInfoLog',
    'MailerInfoLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        configurationSet, varchar,
        createdAt, integer,
        email, varchar,
        eventDate, integer,
        isSuccessful, integer,
        requester, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ManualInsightActivityLog',
    'ManualInsightActivityLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        ManualInsightSchedule_id, integer,
        action, varchar,
        adminUserId, integer,
        category, varchar,
        createdAt, integer,
        eventDate, integer,
        payload, varchar
    ),
    object_construct(
    )
);
