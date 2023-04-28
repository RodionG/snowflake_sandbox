call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'AlProductReviewsHistory',
    'id',
    null,
    true,
    object_construct(
        asin, varchar,
        avgStar, float,
        createdAt, integer,
        fiveStar, integer,
        fourStar, integer,
        id, integer,
        oneStar, integer,
        shortMarketplaceId, integer,
        threeStar, integer,
        twoStar, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'AlSalesRankHistory',
    'id',
    null,
    true,
    object_construct(
        AlProduct_id, integer,
        createdAt, integer,
        id, integer,
        productCategoryId, varchar,
        salesRank, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'ApiRequestsCounter',
    'id',
    null,
    false,
    object_construct(
        Account_id, integer,
        amount, integer,
        id, integer,
        path, varchar,
        request_date, date
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'ApiThrottlingSettings',
    'id',
    null,
    false,
    object_construct(
        Account_id, integer,
        id, integer,
        limit_type, varchar,
        path, varchar,
        requests_amount, integer,
        time_interval, varchar
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'BannerConditionData',
    'id',
    null,
    false,
    object_construct(
        BannerData_id, integer,
        active, varchar,
        createdAt, integer,
        id, integer,
        params, varchar,
        shortClass, varchar,
        updatedAt, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'BannerData',
    'id',
    null,
    false,
    object_construct(
        active, varchar,
        comment, varchar,
        createdAt, integer,
        ctaText, varchar,
        ctaUrl, varchar,
        fileName, varchar,
        id, integer,
        segmentEventCta, varchar,
        segmentEventSubTitle, varchar,
        segmentEventTitle, varchar,
        sortOrder, integer,
        subTitle, varchar,
        template, varchar,
        text, varchar,
        title, varchar,
        updatedAt, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'BusinessValuationUpdate',
    'id',
    null,
    false,
    object_construct(
        createdAt, integer,
        id, integer,
        lastDate, timestamp,
        processingQueue, varchar,
        startDate, timestamp,
        status, integer,
        updatedAt, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'ExperimentOfUser',
    'Experiment_id,User_id,createdAt,updatedAt,variant',
    null,
    false,
    object_construct(
        Experiment_id, integer,
        User_id, integer,
        createdAt, timestamp,
        updatedAt, timestamp,
        variant, varchar
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'GeocodeApiRequestCount',
    'id',
    null,
    false,
    object_construct(
        amount, integer,
        id, integer,
        requestDay, date,
        service, varchar
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'IoApiIpGroup',
    'id',
    null,
    false,
    object_construct(
        createdAt, integer,
        createdBy, integer,
        id, integer,
        ips, varchar,
        name, varchar,
        updatedAt, integer,
        updatedBy, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'IoApiIpGroup2IoApiAction',
    'IoApiAction_id,IoApiIpGroup_id',
    null,
    false,
    object_construct(
        IoApiAction_id, integer,
        IoApiIpGroup_id, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'IoApiIpGroup2IoApiUser',
    'IoApiIpGroup_id,IoApiUser_id',
    null,
    false,
    object_construct(
        IoApiIpGroup_id, integer,
        IoApiUser_id, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'PausedExtraSubscriptionOfAccount',
    'id',
    null,
    false,
    object_construct(
        Account_id, integer,
        continueAt, integer,
        couponId, varchar,
        heliumPlanId, varchar,
        id, integer,
        moduleId, varchar,
        pausedAt, integer,
        plan_id, varchar,
        plansList, varchar
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'RbacRule',
    'created_at,data,name,updated_at',
    null,
    false,
    object_construct(
        created_at, integer,
        data, varchar,
        name, varchar,
        updated_at, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'RgReportOfAccount2SpReport',
    'id',
    null,
    false,
    object_construct(
        RgReportOfAccount_id, integer,
        SpReport_id, integer,
        createdAt, timestamp,
        id, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'SalesEstimationAnalysisData',
    'id',
    null,
    true,
    object_construct(
        SalesEstimationAnalysisProcess_id, integer,
        aeJsReal, integer,
        aePipeCandyReal, integer,
        aeXrayReal, integer,
        apeJsReal, float,
        apePipeCandyReal, float,
        apeXrayReal, float,
        asin, varchar,
        averageBsr, integer,
        category, integer,
        createdAt, integer,
        eJsReal, integer,
        ePipeCandyReal, integer,
        eXrayReal, integer,
        id, integer,
        isWeird, varchar,
        maxBsr, integer,
        medianBsr, integer,
        minBsr, integer,
        peJsReal, float,
        pePipeCandyReal, float,
        peXrayReal, float,
        salesJs, integer,
        salesPipeCandy, integer,
        salesReal, integer,
        salesXray, integer,
        updatedAt, integer,
        variationsNumber, integer
    )
);

call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'SqlEditorQuery',
    'id',
    null,
    false,
    object_construct(
        category, varchar,
        comments, varchar,
        createdAt, integer,
        host, varchar,
        id, integer,
        name, varchar,
        profitsShardedClientId, integer,
        profitsShardedShardId, integer,
        query, varchar,
        type, varchar,
        updatedAt, integer,
        user_id, integer
    )
);

call h10_analytics.public.alter_postgres_table_schema(
    'helium10_main_db',
    'H10_ANALYTICS',
    'H10_MAIN',
    'Account',
    'id',
    null,
    false,
    object_construct(
        accountName, varchar,
        adtomicEnabled, varchar,
        adtomicEnabledAt, integer,
        createdAt, integer,
        defaultCurrency, varchar,
        followupEnabled, varchar,
        followupEnabledAt, timestamp,
        hashId, varchar,
        id, integer,
        identifiedInSegmentAt, integer,
        inventoryStarted, varchar,
        inventoryStartedAt, integer,
        isPrivileged, varchar,
        leadCreatedAt, integer,
        leadMergedAt, integer,
        markDeletedAt, integer,
        marketTrackerBearerToken, varchar,
        perfomanceDashboardReady, varchar,
        portalsEnabled, varchar,
        portalsEnabledAt, integer,
        ppcEnabled, varchar,
        ppcEnabledAt, timestamp,
        ppcNdaSigned, varchar,
        ppcNdaSignedAt, timestamp,
        profitsEnabledAt, integer,
        profitsStarted, varchar,
        profitsStartedAt, integer,
        profitsWanted, varchar,
        showFeedbackNeededAlert, varchar,
        source, varchar,
        status, integer,
        stripe_customer_id, varchar,
        test, integer
    )
);

call h10_analytics.public.alter_postgres_table_schema(
    'helium10_main_db',
    'H10_ANALYTICS',
    'H10_MAIN',
    'BillingStatement',
    'id',
    null,
    false,
    object_construct(
        Account_id, integer,
        addDeductBy, integer,
        amount, float,
        createdAt, integer,
        credits, integer,
        description, varchar,
        id, integer,
        invoiceId, varchar,
        planName, varchar,
        status, integer
    )
);

call h10_analytics.public.alter_postgres_table_schema(
    'helium10_main_db',
    'H10_ANALYTICS',
    'H10_MAIN',
    'ListingAnalyzerHistory',
    'id',
    null,
    false,
    object_construct(
        Account_id, integer,
        asins, varchar,
        createdAt, integer,
        errorMsg, varchar,
        holdId, varchar,
        id, integer,
        imageUrl, varchar,
        mainAsin, varchar,
        mainSku, varchar,
        marketplaceId, integer,
        s3BucketUrl, varchar,
        searchType, integer,
        sellerId, varchar,
        status, integer,
        title, varchar,
        tokenId, integer
    )
);
