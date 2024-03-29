SELECT  p.brand, p.type, p.size, COUNT(ps.suppkey) AS supplier_cnt
FROM    partsupp ps, part p
WHERE   p.partkey = ps.partkey
  AND   p.brand <> 'Brand#45'
  AND   (p.type NOT LIKE 'MEDIUM POLISHED%')
  AND   (p.size IN (49, 14, 23, 45, 19, 3, 36, 9))
  AND   (ps.suppkey NOT IN (select * from inner))
GROUP BY p.brand, p.type, p.size;