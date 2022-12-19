SELECT DISTINCT asteroid_id, size from asteroid
    join star_system ss on asteroid.star_system = ss.star_system_id
                                  where star_system_id = 'Sun'
group by asteroid_id, size
order by size desc
limit 5