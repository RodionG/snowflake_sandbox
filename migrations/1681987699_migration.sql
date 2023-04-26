call h10_analytics.public.alter_postgres_table_schema(
    'helium10_mws_listing',
    'H10_ANALYTICS',
    'MWS_LISTING',
    'AlDelayedEmail',
    'id',
    null,
    false,
    object_construct(
        Account_id, integer,
        AlProduct_id, integer,
        asin, varchar,
        createdAt, integer,
        eventType, integer,
        group, integer,
        id, integer,
        marketplaceId, integer,
        notification, varchar,
        sentAt, integer,
        title, varchar,
        updatedAt, integer
    )
);

call h10_analytics.public.setup_clickhouse_pattern_table(
    'phrases',
    'AMZSEARCHTERMSHISTORYDATA',
    'AmzSearchTermsHistoryData',
    'CLICKHOUSE_PHRASES',
    object_construct(
        eventDate, integer,
        Phrase_id, integer,
        AmzSearchTermsDepartment_id, integer,
        searchFrequencyRank, integer,
        asin1, varchar,
        clickShareAsin1, float,
        conversionShareAsin1, float,
        asin2, varchar,
        clickShareAsin2, float,
        conversionShareAsin2, float,
        asin3, varchar,
        clickShareAsin3, float,
        conversionShareAsin3, float,
        reportingRange, varchar,
        periodFrom, integer,
        periodTo, integer,
        createdAt, integer
    ),
    object_construct(
    )
);
