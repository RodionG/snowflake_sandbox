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
