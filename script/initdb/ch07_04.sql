DROP TABLE IF EXISTS mst_products_20161201;
CREATE TABLE mst_products_20161201(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20161201
VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B001', 'BBB', 500, '2016-11-03 20:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 400, '2016-11-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
;

DROP TABLE IF EXISTS mst_products_20170101;
CREATE TABLE mst_products_20170101(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20170101
  VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 500, '2016-12-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
  , ('D002', 'DAD', 500, '2016-12-04 19:00:00')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp          varchar(255)
  , short_session  varchar(255)
  , long_session   varchar(255)
  , path           varchar(255)
);

INSERT INTO access_log
VALUES
    ('2016-10-01 12:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '1QceiB', '3JMO2k', '/search')
  , ('2016-10-01 14:00:00', '1QceiB', '3JMO2k', '/detail')
  , ('2016-10-01 15:00:00', '1hI43A', '6SN6DD', '/search')
  , ('2016-10-01 16:00:00', '1hI43A', '6SN6DD', '/detail')
  , ('2016-10-01 17:00:00', '2bGs3i', '1CwlSX', '/top'   )
  , ('2016-10-01 18:00:00', '2is8PX', '7Dn99b', '/search')
  , ('2016-10-02 12:00:00', '2mmGwD', 'EFnoNR', '/top'   )
  , ('2016-10-02 13:00:00', '2mmGwD', 'EFnoNR', '/detail')
  , ('2016-10-02 14:00:00', '3CEHe1', 'FGkTe9', '/search')
  , ('2016-10-02 15:00:00', '3Gv8vO', '1CwlSX', '/detail')
  , ('2016-10-02 16:00:00', '3cv4gm', 'KBlKgT', '/top'   )
  , ('2016-10-02 17:00:00', '3cv4gm', 'KBlKgT', '/search')
  , ('2016-10-02 18:00:00', '690mvB', 'FGkTe9', '/top'   )
  , ('2016-10-03 12:00:00', '6oABhM', '3JMO2k', '/detail')
  , ('2016-10-03 13:00:00', '7jjxQX', 'KKTw9P', '/top'   )
  , ('2016-10-03 14:00:00', 'AAuoEU', '6SN6DD', '/top'   )
  , ('2016-10-03 15:00:00', 'AAuoEU', '6SN6DD', '/search')
;


