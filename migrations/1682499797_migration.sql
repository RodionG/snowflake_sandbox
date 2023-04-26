call h10_analytics.public.setup_postgres_dms_table(
    'helium10_main_db',
    'public',
    'H10_ANALYTICS',
    'H10_MAIN',
    'ALPRODUCTREVIEWSHISTORY',
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
    'ALSALESRANKHISTORY',
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
    'APIREQUESTSCOUNTER',
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
    'APITHROTTLINGSETTINGS',
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
    'BANNERCONDITIONDATA',
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
    'BANNERDATA',
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
    'BUSINESSVALUATIONUPDATE',
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
    'EXPERIMENTOFUSER',
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
    'GEOCODEAPIREQUESTCOUNT',
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
    'IOAPIIPGROUP',
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
    'IOAPIIPGROUP2IOAPIACTION',
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
    'IOAPIIPGROUP2IOAPIUSER',
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
    'PAUSEDEXTRASUBSCRIPTIONOFACCOUNT',
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
    'RBACRULE',
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
    'RGREPORTOFACCOUNT2SPREPORT',
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
    'SALESESTIMATIONANALYSISDATA',
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
    'SQLEDITORQUERY',
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
    'ACCOUNT',
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
        showFee***ckNeededAlert, varchar,
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
    'BILLINGSTATEMENT',
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
    'LISTINGANALYZERHISTORY',
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

call h10_analytics.public.alter_postgres_table_schema(
    'helium10_main_db',
    'H10_ANALYTICS',
    'H10_MAIN',
    'PROFITSDATAOFMWSTOKEN',
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
    'ACCESSEXTENSIONLOG',
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
    'ADMINACTIONSUPERLOGINLOG',
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
    'ALALERTSLOG',
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
    'ALDELAYEDEMAILARCHIVE',
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
    'ALEVENTSHISTORY',
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
    'ALPRODUCTREVIEWSHISTORY',
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
    'ALSALESRANKHISTORY',
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
    'ALSCREENSHOTSHISTORY',
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
    'AMZORDERITEM',
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
    'AMZORDERITEMAGGREGATEDASIN',
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
    'APPIDCHROMEEXTENSIONLOG',
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
    'BSRCHARTLOG',
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
    'CARDCHANGELOG',
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
    'FREEDOMTICKETOPERATIONSLOG',
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
    'IPASINDATA',
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
    'IPFEEDSUBMISSIONLOG',
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
    'LITETASKHISTORYFILE',
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
    'MAILERINFOLOG',
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
    'MANUALINSIGHTACTIVITYLOG',
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

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'MONTHLYSALES',
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
    'MWSANYOFFERCHANGEDLOG',
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
    'MWSFEEDSUBMISSIONLOG',
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
    'MWSLISTINGIMAGESUPDATELOG',
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
    'MWSMFNINVENTORYLOG',
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
    'NOTIFICATIONSOFSLACKLOG',
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
    'PROFITSADMINSTATE',
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
    'PROFITSCOGSLOG',
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
    'PROFITSSHARDINGTRANSPORTHISTORY',
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
    'PROFITSTASKTRACEHISTORY',
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
    'PROXYREQUEST',
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
    'RABBITQUEUELOG',
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
    'RECAPTCHAINFOLOG',
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
    'REPORTFINISHEDNOTIFICATIONLOG',
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
    'REQUESTSINFOLOG',
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
    'REVERSESEARCHAPILOG',
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
    'RGREPORTHISTORY',
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
    'SALESCHANNELSTATS',
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
    'SALESESTIMATORREQUESTLOG',
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
    'SPAPIAUTHTOKENOFACCOUNTLOG',
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

call h10_analytics.public.setup_clickhouse_pattern_table(
    'main',
    'SPNOTIFICATIONSUBSCRIPTIONLOG',
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
    'TASKPROCESSORLOG',
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
    'TRHISTORY',
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
    'UPDATESEARCHVOLUMEPROCESSLOG',
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
    'USESHISTORY',
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
    'WALMARTAUTHTOKENOFACCOUNTLOG',
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
    'XRAYREQUESTLOG',
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
    'XRAYREQUESTLOGAGGREGATED',
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
    'XRAYVIABILITYSCOREHISTORY',
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
    'ADMIN_LOG',
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
