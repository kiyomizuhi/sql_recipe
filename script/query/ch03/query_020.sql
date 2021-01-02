SELECT
    sqrt(power(x1 - x2, 2) + power(y1 - y2, 2)) AS dist
  , point(x1, y1) <-> point(x2, y2) AS point_dist
  FROM location_2d
;