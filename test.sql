CREATE OR REPLACE TABLE
  `poetic-standard-391606.fivetran.sample_points` AS(
  SELECT * EXCEPT(location),
  ST_GEOGFROMTEXT(
  CONCAT(
    'POINT(',
    JSON_EXTRACT_SCALAR(location, '$.coordinates[1]'),
    ' ',
    JSON_EXTRACT_SCALAR(location, '$.coordinates[0]'),
    ')'
  )) AS coordinates
FROM
  `poetic-standard-391606.fivetran__shipa.sample_points`)