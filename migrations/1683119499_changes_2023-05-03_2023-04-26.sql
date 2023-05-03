call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MonthlySales',
    'MonthlySales',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        SpToken_id, integer,
        createdAt, integer,
        currency, varchar,
        eventDate, integer,
        grossSales, float,
        marketplace, varchar,
        productCount, integer,
        purchaseMonth, integer,
        unitsSold, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MwsAnyOfferChangedLog',
    'MwsAnyOfferChangedLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        asin, varchar,
        buyBoxWinnerId, varchar,
        eventDate, integer,
        marketplace, varchar,
        numberOfSellers, integer,
        seller, varchar,
        timeOfOfferChange, integer,
        uniqueId, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MwsFeedSubmissionLog',
    'MwsFeedSubmissionLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        eventDate, integer,
        feedSubmissionId, varchar,
        jsonRequest, varchar,
        jsonResponse, varchar,
        operation, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MwsListingImagesUpdateLog',
    'MwsListingImagesUpdateLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        eventDate, integer,
        marketplaceId, integer,
        tasksStarted, integer,
        tokenId, integer,
        totalAsins, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MwsMFNInventoryLog',
    'MwsMFNInventoryLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        MwsAuthTokenOfAccount_id, integer,
        asin, varchar,
        createdAt, integer,
        eventDate, integer,
        sellerSku, varchar,
        shortMarketplaceId, integer,
        totalQuantity, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'NotificationsOfSlackLog',
    'NotificationsOfSlackLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        createdAt, integer,
        eventDate, integer,
        slackAction, varchar,
        slackUser, varchar,
        source, integer,
        type, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ProfitsAdminState',
    'ProfitsAdminState',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        currentAll, integer,
        currentDisabled, integer,
        currentError, integer,
        currentInactive, integer,
        currentLocked, integer,
        currentOk, integer,
        currentQueue, integer,
        currentWarning, integer,
        currentWorkers, integer,
        currentnoUsMarketplace, integer,
        eventDate, integer,
        followUpQueue, integer,
        frequentUpdatesQueue, integer,
        frequentUpdatesWorkers, integer,
        historicalAll, integer,
        historicalDisabled, integer,
        historicalError, integer,
        historicalFinished, integer,
        historicalLocked, integer,
        historicalOk, integer,
        historicalQueue, integer,
        historicalWarning, integer,
        historicalWorkers, integer,
        ppcQueue, integer,
        ppcWorkers, integer,
        sqsMessages, integer,
        storageFeeDone, integer,
        storageFeeError, integer,
        storageFeeInProgress, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ProfitsCogsLog',
    'ProfitsCogsLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        MwsAuthTokenOfAccount_id, integer,
        asin, varchar,
        dateEnd, integer,
        dateStart, integer,
        eventDate, integer,
        eventTime, integer,
        productCost, float,
        sellerSku, varchar,
        shippingCost, float,
        shortMarketplaceId, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ProfitsShardingTransportHistory',
    'ProfitsShardingTransportHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        Client_id, integer,
        completedAt, integer,
        eventDate, integer,
        newShardId, integer,
        oldShardId, integer,
        startedAt, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ProfitsTaskTraceHistory',
    'ProfitsTaskTraceHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        action, varchar,
        affectedRows, integer,
        createdAt, integer,
        endDate, integer,
        errorReason, varchar,
        eventDate, integer,
        fileSize, integer,
        generatedReportId, varchar,
        historical, integer,
        reportRequestId, varchar,
        startDate, integer,
        success, integer,
        taskClass, varchar,
        taskId, varchar,
        tokenId, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ProxyRequest',
    'ProxyRequest',
    'CLICKHOUSE_MAIN',
    object_construct(
        eventDate, integer,
        finishedAt, integer,
        pageUrl, varchar,
        proxyHost, varchar,
        result, integer,
        startedAt, integer,
        time, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'RabbitQueueLog',
    'RabbitQueueLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        avg_egress_rate, float,
        avg_ingress_rate, float,
        consumers, integer,
        createdAt, integer,
        eventDate, integer,
        messages, integer,
        messages_ready, integer,
        messages_unacknowledged, integer,
        queue_name, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ReCaptchaInfoLog',
    'ReCaptchaInfoLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        accountIp, varchar,
        action, varchar,
        country, varchar,
        createdAt, integer,
        errors, varchar,
        eventDate, integer,
        hostname, varchar,
        isValid, integer,
        requestUrl, varchar,
        score, float,
        statusCode, integer,
        success, integer,
        token, varchar,
        userAgent, varchar,
        version, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ReportFinishedNotificationLog',
    'ReportFinishedNotificationLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        consumer, varchar,
        createdAt, integer,
        eventDate, integer,
        numberOfMessages, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'RequestsInfoLog',
    'RequestsInfoLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        actionDuration, float,
        actionUrl, varchar,
        createdAt, integer,
        eventDate, integer,
        isCached, integer,
        usedRam, float
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'ReverseSearchApiLog',
    'ReverseSearchApiLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        createdAt, integer,
        duration, float,
        eventDate, integer,
        ip, varchar,
        params, varchar,
        request, varchar,
        response, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'RgReportHistory',
    'RgReportHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        RgReport_id, integer,
        createdAt, integer,
        eventDate, integer,
        level, varchar,
        message, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'SalesChannelStats',
    'SalesChannelStats',
    'CLICKHOUSE_MAIN',
    object_construct(
        eventDate, integer,
        orders, integer,
        reportStartDate, integer,
        salesChannel, varchar,
        tokenId, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'SalesEstimatorRequestLog',
    'SalesEstimatorRequestLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        asin, varchar,
        createdAt, integer,
        error, varchar,
        eventDate, integer,
        marketplaceId, integer,
        requestId, varchar,
        status, integer,
        time, integer,
        user_id, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'SpApiAuthTokenOfAccountLog',
    'SpApiAuthTokenOfAccountLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        action, varchar,
        additionalInfo, varchar,
        createdAt, integer,
        eventDate, integer,
        marketplaceList, varchar,
        mwsAuthToken, varchar,
        refreshToken, varchar,
        region, varchar,
        sellerId, varchar,
        spApiOauthCode, varchar,
        status, integer,
        user_id, integer
    ),
    object_construct(
    )
);
