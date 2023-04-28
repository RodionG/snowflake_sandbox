call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'SpNotificationSubscriptionLog',
    'SpNotificationSubscriptionLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        destinationId, varchar,
        eventDate, integer,
        isActive, integer,
        lastCheckedAt, integer,
        sellerId, varchar,
        subscriptionId, varchar,
        type, varchar,
        updatedAt, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'TaskProcessorLog',
    'TaskProcessorLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        eventDate, integer,
        taskClass, varchar,
        taskDataSize, integer,
        taskId, varchar,
        taskParamsSize, integer,
        taskRegistryId, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'TrHistory',
    'TrHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        asins, varchar,
        createdAt, integer,
        eventDate, integer,
        marketplace, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'UpdateSearchVolumeProcessLog',
    'UpdateSearchVolumeProcessLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        createdAt, integer,
        eventDate, integer,
        marketplaceId, integer,
        message, varchar,
        operation, integer,
        week, integer,
        year, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'UsesHistory',
    'UsesHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        addDeductBy, integer,
        createdAt, integer,
        description, varchar,
        eventDate, integer,
        holdId, varchar,
        status, integer,
        toolId, varchar,
        updatedAt, integer,
        useType, integer,
        uses, integer,
        usesLeft, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'WalmartAuthTokenOfAccountLog',
    'WalmartAuthTokenOfAccountLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        action, varchar,
        additionalInfo, varchar,
        createdAt, integer,
        eventDate, integer,
        user_id, integer,
        walmartClientId, varchar,
        walmartClientSecret, varchar
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'XrayRequestLog',
    'XrayRequestLog',
    'CLICKHOUSE_MAIN',
    object_construct(
        asin, varchar,
        createdAt, integer,
        error, varchar,
        eventDate, integer,
        marketplaceId, integer,
        requestId, varchar,
        status, integer,
        time, integer,
        userId, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'XrayRequestLogAggregated',
    'XrayRequestLogAggregated',
    'CLICKHOUSE_MAIN',
    object_construct(
        avgStatus, float,
        avgTime, integer,
        createdAt, integer,
        errorRequests, integer,
        eventDate, integer,
        marketplaceId, integer,
        successRequests, integer,
        top50Asins, varchar,
        top50Errors, varchar,
        top50Users, varchar,
        totalRequests, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'XrayViabilityScoreHistory',
    'XrayViabilityScoreHistory',
    'CLICKHOUSE_MAIN',
    object_construct(
        Account_id, integer,
        created_at, integer,
        eventDate, integer,
        keyword, varchar,
        payload, varchar,
        result, varchar,
        score, integer
    ),
    object_construct(
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'admin_log',
    'admin_log',
    'CLICKHOUSE_MAIN',
    object_construct(
        actionId, varchar,
        controllerId, varchar,
        createdAt, integer,
        eventDate, integer,
        isSearch, integer,
        params, varchar,
        userId, integer
    ),
    object_construct(
    )
);
