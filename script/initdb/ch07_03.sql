DROP TABLE IF EXISTS mst_categories;
CREATE TABLE mst_categories(
    id     integer
  , name   varchar(255)
  , stamp  varchar(255)
);

INSERT INTO mst_categories
VALUES
    (1, 'ladys_fashion', '2016-01-01 10:00:00')
  , (2, 'mens_fashion' , '2016-01-01 10:00:00')
  , (3, 'book'         , '2016-01-01 10:00:00')
  , (4, 'game'         , '2016-01-01 10:00:00')
  , (5, 'dvd'          , '2016-01-01 10:00:00')
  , (6, 'food'         , '2016-01-01 10:00:00')
  , (7, 'supplement'   , '2016-01-01 10:00:00')
  , (6, 'cooking'      , '2016-02-01 10:00:00')
;


DROP TABLE IF EXISTS dup_action_log;
CREATE TABLE dup_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , products  varchar(255)
);

INSERT INTO dup_action_log
VALUES
    ('2016-11-03 18:00:00', '989004ea', 'U001', 'click', 'D001')
  , ('2016-11-03 19:00:00', '47db0370', 'U002', 'click', 'D002')
  , ('2016-11-03 20:00:00', '1cf7678e', 'U003', 'click', 'A001')
  , ('2016-11-03 21:00:00', '5eb2e107', 'U004', 'click', 'A001')
  , ('2016-11-03 21:00:00', 'fe05e1d8', 'U004', 'click', 'D001')
  , ('2016-11-04 18:00:00', '87b5725f', 'U001', 'click', 'D001')
  , ('2016-11-04 19:00:00', 'eee2bb21', 'U005', 'click', 'A001')
  , ('2016-11-04 20:00:00', '5d5b0997', 'U006', 'click', 'D001')
  , ('2016-11-04 21:00:00', '111f2996', 'U007', 'click', 'D002')
  , ('2016-11-04 22:00:00', '3efe001c', 'U008', 'click', 'A001')
  , ('2016-11-04 22:00:10', '3efe001c', 'U008', 'click', 'A001')
;


