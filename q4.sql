with countPerCountry(region, country, totalCount) as
    (select region, country, sum(count) as totalCount
    from authors natural join institutions
    group by region, country)
        select region, country, totalCount
        from countPerCountry C1
        where totalCount >= all (select totalCount
                                from countPerCountry C2
                                where C1.region = C2.region);
        
