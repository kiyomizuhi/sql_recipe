DROP TABLE IF EXISTS search_evaluation_by_col;
CREATE TABLE search_evaluation_by_col(
    path      varchar(255)
  , recall    numeric
  , precision numeric
);

INSERT INTO search_evaluation_by_col
VALUES
    ('/search1', 40.0, 60.0)
  , ('/search2', 60.0, 40.0)
  , ('/search3', 50.0, 50.0)
  , ('/search4', 30.0, 60.0)
  , ('/search5', 70.0,  0.0)
;

DROP TABLE IF EXISTS search_evaluation_by_row;
CREATE TABLE search_evaluation_by_row(
    path  varchar(255)
  , index varchar(255)
  , value numeric
);

INSERT INTO search_evaluation_by_row
VALUES
    ('/search1', 'recall'   , 40.0)
  , ('/search1', 'precision', 60.0)
  , ('/search2', 'recall'   , 60.0)
  , ('/search2', 'precision', 40.0)
  , ('/search3', 'recall'   , 50.0)
  , ('/search3', 'precision', 50.0)
  , ('/search4', 'recall'   , 30.0)
  , ('/search4', 'precision', 60.0)
  , ('/search5', 'recall'   , 70.0)
  , ('/search5', 'precision',  0.0)
;


DROP TABLE IF EXISTS action_counts;
CREATE TABLE action_counts(
    user_id        varchar(255)
  , product        varchar(255)
  , view_count     integer
  , purchase_count integer
);

INSERT INTO action_counts
VALUES
    ('U001', 'D001',  2, 1)
  , ('U001', 'D002', 16, 0)
  , ('U001', 'D003', 14, 0)
  , ('U001', 'D004', 15, 0)
  , ('U001', 'D005', 21, 1)
  , ('U002', 'D001', 10, 1)
  , ('U002', 'D003', 28, 0)
  , ('U002', 'D005', 28, 1)
  , ('U003', 'D001', 49, 0)
  , ('U003', 'D004', 29, 1)
  , ('U003', 'D005', 24, 1)
;


DROP TABLE IF EXISTS exam_scores;
CREATE TABLE exam_scores(
    name    varchar(255)
  , subject varchar(255)
  , score   integer
);

INSERT INTO exam_scores
VALUES
    ('生徒A', '国語',  69)
  , ('生徒B', '国語',  87)
  , ('生徒C', '国語',  65)
  , ('生徒D', '国語',  73)
  , ('生徒E', '国語',  61)
  , ('生徒A', '数学', 100)
  , ('生徒B', '数学',  12)
  , ('生徒C', '数学',   7)
  , ('生徒D', '数学',  73)
  , ('生徒E', '数学',  56)
;


DROP TABLE IF EXISTS action_counts_with_date;
CREATE TABLE action_counts_with_date(
    dt      varchar(255)
  , user_id varchar(255)
  , product varchar(255)
  , v_count integer
  , p_count integer
);

INSERT INTO action_counts_with_date
VALUES
    ('2016-10-03', 'U001', 'D001',  1, 0)
  , ('2016-11-03', 'U001', 'D001',  1, 1)
  , ('2016-10-03', 'U001', 'D002', 16, 0)
  , ('2016-10-03', 'U001', 'D003', 14, 0)
  , ('2016-10-03', 'U001', 'D004', 15, 0)
  , ('2016-10-03', 'U001', 'D005', 19, 0)
  , ('2016-10-25', 'U001', 'D005',  1, 0)
  , ('2016-11-03', 'U001', 'D005',  1, 0)
  , ('2016-11-05', 'U001', 'D005',  0, 1)
  , ('2016-10-03', 'U002', 'D001', 10, 0)
  , ('2016-11-30', 'U002', 'D001',  0, 1)
  , ('2016-11-20', 'U002', 'D003', 28, 0)
  , ('2016-11-20', 'U002', 'D005', 28, 0)
  , ('2016-11-30', 'U002', 'D005',  0, 1)
  , ('2016-11-01', 'U003', 'D001', 49, 0)
  , ('2016-11-01', 'U003', 'D004', 29, 0)
  , ('2016-11-03', 'U003', 'D004',  0, 1)
  , ('2016-11-01', 'U003', 'D005', 24, 0)
  , ('2016-12-01', 'U003', 'D005',  0, 1)
;


DROP TABLE IF EXISTS monthly_sales;
CREATE TABLE monthly_sales(
    year_month varchar(255)
  , item       varchar(255)
  , amount     integer
);

INSERT INTO monthly_sales
VALUES
   ('2016-01', 'D001', 30000)
 , ('2016-01', 'D002', 10000)
 , ('2016-01', 'D003',  5000)
 , ('2016-01', 'D004',  3000)
 , ('2016-02', 'D001', 30000)
 , ('2016-02', 'D002', 30000)
 , ('2016-02', 'D005', 20000)
 , ('2016-02', 'D003', 10000)
 , ('2016-03', 'D002', 40000)
 , ('2016-03', 'D005', 40000)
 , ('2016-03', 'D001', 20000)
 , ('2016-03', 'D003', 16000)
 , ('2016-10', 'D005', 50000)
 , ('2016-10', 'D004', 40000)
 , ('2016-10', 'D006', 30000)
 , ('2016-10', 'D003', 30000)
 , ('2016-11', 'D006', 60000)
 , ('2016-11', 'D004', 40000)
 , ('2016-11', 'D003', 40000)
 , ('2016-11', 'D001', 40000)
 , ('2016-12', 'D006', 70000)
 , ('2016-12', 'D003', 60000)
 , ('2016-12', 'D004', 50000)
 , ('2016-12', 'D001', 40000)
;


