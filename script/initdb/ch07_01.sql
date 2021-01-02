DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('0CVKaz', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('1QceiB', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1hI43A', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
;


DROP TABLE IF EXISTS neighbor_pref; 
CREATE TABLE neighbor_pref(
    pref_id             integer
  , pref_name           varchar(255)
  , neighbor_pref_id    integer
  , neighbor_pref_name  varchar(255)
);

INSERT INTO neighbor_pref
VALUES
    (1, '北海道', 2, '青森県')
  , (2, '青森県', 1, '北海道')
  , (2, '青森県', 3, '岩手県')
  , (2, '青森県', 5, '秋田県')
  , (3, '岩手県', 2, '青森県')
  , (3, '岩手県', 4, '宮城県')
  , (3, '岩手県', 5, '秋田県')
;

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
    rsv_id            integer
  , stamp             varchar(255)
  , member_id         integer
  , member_pref_id    integer
  , member_pref_name  varchar(255)
  , spot_id           integer
  , spot_pref_id      integer
  , spot_pref_name    varchar(255)
);

INSERT INTO reservations
VALUES
    (27414, '2016-12-31 07:36:48', 50063, 21, '岐阜県', 4454, 47, '沖縄県')
  , (27415, '2016-12-31 15:34:21', 43065, 19, '山梨県', 4899, 27, '大阪府')
  , (27416, '2016-12-31 16:05:10', 31038, 6 , '山形県', 7839, 15, '新潟県')
  , (27417, '2016-12-31 17:48:57', 53901, 34, '広島県', 1972, 4 , '宮城県')
  , (27418, '2016-12-31 23:24:33', 54998, 12, '千葉県', 2227, 3 , '岩手県')
  , (27419, '2017-01-01 02:43:20', 34078, 47, '沖縄県', 5522, 12, '千葉県')
  , (27420, '2017-01-01 05:06:10', 53307, 26, '京都府', 6559, 12, '千葉県')
  , (27421, '2017-01-01 08:37:36', 35423, 24, '三重県', 5500, 20, '長野県')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO access_log
VALUES
    ('98900e', 'U001', 'view', '2015-01-01 18:00:00')
  , ('98900e', 'U001', 'view', '2015-01-02 20:00:00')
  , ('98900e', 'U001', 'view', '2015-01-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-04 23:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-05 00:30:00')
  , ('1cf768', 'U002', 'view', '2015-01-06 02:30:00')
  , ('87b575', 'U001', 'view', '2015-01-07 03:30:00')
  , ('87b575', 'U001', 'view', '2015-01-08 04:00:00')
  , ('87b575', 'U001', 'view', '2015-01-09 12:00:00')
  , ('eee2b2', 'U002', 'view', '2015-01-10 13:00:00')
  , ('eee2b2', 'U001', 'view', '2015-01-11 15:00:00')
;


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log
VALUES
    ('98900e', 'U001', 'view', '2016-11-03 18:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 20:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-03 23:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 00:30:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 02:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 03:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 04:00:00')
  , ('87b575', 'U001', 'view', '2016-11-04 12:00:00')
  , ('eee2b2', 'U002', 'view', '2016-11-04 13:00:00')
  , ('eee2b2', 'U001', 'view', '2016-11-04 15:00:00')
;

