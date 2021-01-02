DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
  ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
, ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
, ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
    ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
  , ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
  , ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS invalid_action_log;
CREATE TABLE invalid_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , category  varchar(255)
  , products  varchar(255)
  , amount    integer
);

INSERT INTO invalid_action_log
VALUES
    ('2016-11-03 18:10:00', '0CVKaz', 'U001', 'purchase', 'drama' , 'D001,D002', 2000)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'favorite', 'drama' , 'D001'     , NULL)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'view'    , NULL    , NULL       , NULL)
  , ('2016-11-03 18:01:00', '0CVKaz', 'U001', 'add_cart', 'drama' , 'D002'     , NULL)
  , ('2016-11-03 18:02:00', '0CVKaz', 'U001', 'add_cart', 'drama' , NULL       , NULL)
  , ('2016-11-04 13:00:00', '1QceiB', 'U002', 'purchase', 'drama' , 'D002'     , 1000)
  , (NULL                 , '1QceiB', 'U002', 'purchase', 'action', 'A005,A006', 1000)
;


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
    ('989004ea', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('47db0370', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1cf7678e', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
  , ('5eb2e107', 'U004', 'view', '127.0.0.1'     , '2016-11-03 21:00:00')
  , ('fe05e1d8', 'U001', 'view', '216.58.220.238', '2016-11-04 18:00:00')
  , ('87b5725f', 'U005', 'view', '10.0.0.3'      , '2016-11-04 19:00:00')
  , ('5d5b0997', 'U006', 'view', '172.16.0.5'    , '2016-11-04 20:00:00')
  , ('111f2996', 'U007', 'view', '192.168.0.23'  , '2016-11-04 21:00:00')
  , ('3efe001c', 'U008', 'view', '192.0.0.10'    , '2016-11-04 22:00:00')
;


