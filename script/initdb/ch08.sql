DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp      timestamp
  , session    varchar(255)
  , action     varchar(255)
  , keyword    text
  , url        text
  , referrer   text
  , result_num integer
);

INSERT INTO access_log
VALUES
    ('2017-01-05 23:35:13', '0CVKaz', 'search', 'mynavi quest2'                       , 'http://www.example.com/search_result?q=mynavi+quest'                        , ''                                                                         ,   0 )
  , ('2017-01-05 23:36:08', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:37:17', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=170'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:38:38', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=133'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:40:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:41:43', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=64'                                        , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:43:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:34:57', '1QceiB', 'search', 'yamada taro'                         , 'http://www.example.com/search_result?q=yamada+taro'                         , ''                                                                         , 367 )
  , ('2017-01-05 23:35:37', '1QceiB', 'search', 'yamada taro football'                , 'http://www.example.com/search_result?q=yamada+taro+football'                , ''                                                                         , 105 )
  , ('2017-01-05 23:36:48', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=99'                                        , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:37:27', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=142'                                       , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:38:52', '1QceiB', 'search', 'yamada taro football transfers'      , 'http://www.example.com/search_result?q=yamada+taro+football+transfers'      , ''                                                                         ,  50 )
  , ('2017-01-05 23:39:50', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=7'                                         , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:41:23', '1QceiB', 'search', 'yamada taro football transfers where', 'http://www.example.com/search_result?q=yamada+taro+football+transfers+where', ''                                                                         ,   0 )
  , ('2017-01-05 23:34:39', '1hI43A', 'search', 'english'                             , 'http://www.example.com/search_result?q=english'                             , ''                                                                         , 343 )
  , ('2017-01-05 23:36:08', '1hI43A', 'search', 'history of english'                  , 'http://www.example.com/search_result?q=history+of+english'                  , ''                                                                         , 757 )
  , ('2017-01-05 23:36:39', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=9'                                         , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:38:10', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=137'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:39:17', '1hI43A', 'search', 'history of english origin'           , 'http://www.example.com/search_result?q=history+of+english+origin'           , ''                                                                         , 963 )
  , ('2017-01-05 23:40:04', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=158'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:40:52', '1hI43A', 'search', 'history of english england'          , 'http://www.example.com/search_result?q=history+of+english+england'          , ''                                                                         , 303 )
  , ('2017-01-06 23:34:36', '2bGs3i', 'search', 'nail'                                , 'http://www.example.com/search_result?q=nail'                                , ''                                                                         , 730 )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manikure'                            , 'http://www.example.com/search_result?q=manikure'                            , ''                                                                         , 0   )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manicure'                            , 'http://www.example.com/search_result?q=manicure'                            , ''                                                                         , 64  )
  , ('2017-01-06 23:36:33', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=123'                                       , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:01', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=11'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:52', '2bGs3i', 'search', 'manicure red'                        , 'http://www.example.com/search_result?q=manicure+red'                        , ''                                                                         , 827 )
  , ('2017-01-06 23:40:17', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=56'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:41:14', '2bGs3i', 'search', 'manicure dark red'                   , 'http://www.example.com/search_result?q=manicure+dark+red'                   , ''                                                                         , 920 )
  , ('2017-01-06 23:34:54', '2mmGwD', 'search', 'fab'                                 , 'http://www.example.com/search_result?q=fab'                                 , ''                                                                         , 646 )
  , ('2017-01-06 23:35:29', '2mmGwD', 'search', 'fabulous'                            , 'http://www.example.com/search_result?q=fabulous'                            , 'http://www.example.com/search_result?q=fab'                               , 179 )
  , ('2017-01-06 23:36:49', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=87'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:38:14', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=24'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:39:08', '2mmGwD', 'search', 'fabulous how to use'                 , 'http://www.example.com/search_result?q=fabulous+how+to+use'                 , ''                                                                         , 856 )
  , ('2017-01-06 23:40:05', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=51'                                        , 'http://www.example.com/search_result?q=fabulous+how+to+use'               , NULL)
  , ('2017-01-06 23:41:34', '2mmGwD', 'search', 'fabulous synonym'                    , 'http://www.example.com/search_result?q=fabulous+synonym'                    , ''                                                                         , 875 )
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp      timestamp
  , session    varchar(255)
  , action     varchar(255)
  , keyword    text
  , url        text
  , referrer   text
  , result_num integer
);

INSERT INTO access_log
VALUES
    ('2017-01-05 23:35:13', '0CVKaz', 'search', 'mynavi quest2'                       , 'http://www.example.com/search_result?q=mynavi+quest'                        , ''                                                                         ,   0 )
  , ('2017-01-05 23:36:08', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:37:17', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=170'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:38:38', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=133'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:40:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:41:43', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=64'                                        , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:43:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:34:57', '1QceiB', 'search', 'yamada taro'                         , 'http://www.example.com/search_result?q=yamada+taro'                         , ''                                                                         , 367 )
  , ('2017-01-05 23:35:37', '1QceiB', 'search', 'yamada taro football'                , 'http://www.example.com/search_result?q=yamada+taro+football'                , ''                                                                         , 105 )
  , ('2017-01-05 23:36:48', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=99'                                        , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:37:27', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=142'                                       , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:38:52', '1QceiB', 'search', 'yamada taro football transfers'      , 'http://www.example.com/search_result?q=yamada+taro+football+transfers'      , ''                                                                         ,  50 )
  , ('2017-01-05 23:39:50', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=7'                                         , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:41:23', '1QceiB', 'search', 'yamada taro football transfers where', 'http://www.example.com/search_result?q=yamada+taro+football+transfers+where', ''                                                                         ,   0 )
  , ('2017-01-05 23:34:39', '1hI43A', 'search', 'english'                             , 'http://www.example.com/search_result?q=english'                             , ''                                                                         , 343 )
  , ('2017-01-05 23:36:08', '1hI43A', 'search', 'history of english'                  , 'http://www.example.com/search_result?q=history+of+english'                  , ''                                                                         , 757 )
  , ('2017-01-05 23:36:39', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=9'                                         , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:38:10', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=137'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:39:17', '1hI43A', 'search', 'history of english origin'           , 'http://www.example.com/search_result?q=history+of+english+origin'           , ''                                                                         , 963 )
  , ('2017-01-05 23:40:04', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=158'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:40:52', '1hI43A', 'search', 'history of english england'          , 'http://www.example.com/search_result?q=history+of+english+england'          , ''                                                                         , 303 )
  , ('2017-01-06 23:34:36', '2bGs3i', 'search', 'nail'                                , 'http://www.example.com/search_result?q=nail'                                , ''                                                                         , 730 )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manikure'                            , 'http://www.example.com/search_result?q=manikure'                            , ''                                                                         , 0   )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manicure'                            , 'http://www.example.com/search_result?q=manicure'                            , ''                                                                         , 64  )
  , ('2017-01-06 23:36:33', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=123'                                       , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:01', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=11'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:52', '2bGs3i', 'search', 'manicure red'                        , 'http://www.example.com/search_result?q=manicure+red'                        , ''                                                                         , 827 )
  , ('2017-01-06 23:40:17', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=56'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:41:14', '2bGs3i', 'search', 'manicure dark red'                   , 'http://www.example.com/search_result?q=manicure+dark+red'                   , ''                                                                         , 920 )
  , ('2017-01-06 23:34:54', '2mmGwD', 'search', 'fab'                                 , 'http://www.example.com/search_result?q=fab'                                 , ''                                                                         , 646 )
  , ('2017-01-06 23:35:29', '2mmGwD', 'search', 'fabulous'                            , 'http://www.example.com/search_result?q=fabulous'                            , 'http://www.example.com/search_result?q=fab'                               , 179 )
  , ('2017-01-06 23:36:49', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=87'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:38:14', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=24'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:39:08', '2mmGwD', 'search', 'fabulous how to use'                 , 'http://www.example.com/search_result?q=fabulous+how+to+use'                 , ''                                                                         , 856 )
  , ('2017-01-06 23:40:05', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=51'                                        , 'http://www.example.com/search_result?q=fabulous+how+to+use'               , NULL)
  , ('2017-01-06 23:41:34', '2mmGwD', 'search', 'fabulous synonym'                    , 'http://www.example.com/search_result?q=fabulous+synonym'                    , ''                                                                         , 875 )
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp      timestamp
  , session    varchar(255)
  , action     varchar(255)
  , keyword    text
  , url        text
  , referrer   text
  , result_num integer
);

INSERT INTO access_log
VALUES
    ('2017-01-05 23:35:13', '0CVKaz', 'search', 'mynavi quest2'                       , 'http://www.example.com/search_result?q=mynavi+quest'                        , ''                                                                         ,   0 )
  , ('2017-01-05 23:36:08', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:37:17', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=170'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:38:38', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=133'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:40:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:41:43', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=64'                                        , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:43:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:34:57', '1QceiB', 'search', 'yamada taro'                         , 'http://www.example.com/search_result?q=yamada+taro'                         , ''                                                                         , 367 )
  , ('2017-01-05 23:35:37', '1QceiB', 'search', 'yamada taro football'                , 'http://www.example.com/search_result?q=yamada+taro+football'                , ''                                                                         , 105 )
  , ('2017-01-05 23:36:48', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=99'                                        , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:37:27', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=142'                                       , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:38:52', '1QceiB', 'search', 'yamada taro football transfers'      , 'http://www.example.com/search_result?q=yamada+taro+football+transfers'      , ''                                                                         ,  50 )
  , ('2017-01-05 23:39:50', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=7'                                         , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:41:23', '1QceiB', 'search', 'yamada taro football transfers where', 'http://www.example.com/search_result?q=yamada+taro+football+transfers+where', ''                                                                         ,   0 )
  , ('2017-01-05 23:34:39', '1hI43A', 'search', 'english'                             , 'http://www.example.com/search_result?q=english'                             , ''                                                                         , 343 )
  , ('2017-01-05 23:36:08', '1hI43A', 'search', 'history of english'                  , 'http://www.example.com/search_result?q=history+of+english'                  , ''                                                                         , 757 )
  , ('2017-01-05 23:36:39', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=9'                                         , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:38:10', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=137'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:39:17', '1hI43A', 'search', 'history of english origin'           , 'http://www.example.com/search_result?q=history+of+english+origin'           , ''                                                                         , 963 )
  , ('2017-01-05 23:40:04', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=158'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:40:52', '1hI43A', 'search', 'history of english england'          , 'http://www.example.com/search_result?q=history+of+english+england'          , ''                                                                         , 303 )
  , ('2017-01-06 23:34:36', '2bGs3i', 'search', 'nail'                                , 'http://www.example.com/search_result?q=nail'                                , ''                                                                         , 730 )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manikure'                            , 'http://www.example.com/search_result?q=manikure'                            , ''                                                                         , 0   )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manicure'                            , 'http://www.example.com/search_result?q=manicure'                            , ''                                                                         , 64  )
  , ('2017-01-06 23:36:33', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=123'                                       , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:01', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=11'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:52', '2bGs3i', 'search', 'manicure red'                        , 'http://www.example.com/search_result?q=manicure+red'                        , ''                                                                         , 827 )
  , ('2017-01-06 23:40:17', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=56'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:41:14', '2bGs3i', 'search', 'manicure dark red'                   , 'http://www.example.com/search_result?q=manicure+dark+red'                   , ''                                                                         , 920 )
  , ('2017-01-06 23:34:54', '2mmGwD', 'search', 'fab'                                 , 'http://www.example.com/search_result?q=fab'                                 , ''                                                                         , 646 )
  , ('2017-01-06 23:35:29', '2mmGwD', 'search', 'fabulous'                            , 'http://www.example.com/search_result?q=fabulous'                            , 'http://www.example.com/search_result?q=fab'                               , 179 )
  , ('2017-01-06 23:36:49', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=87'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:38:14', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=24'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:39:08', '2mmGwD', 'search', 'fabulous how to use'                 , 'http://www.example.com/search_result?q=fabulous+how+to+use'                 , ''                                                                         , 856 )
  , ('2017-01-06 23:40:05', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=51'                                        , 'http://www.example.com/search_result?q=fabulous+how+to+use'               , NULL)
  , ('2017-01-06 23:41:34', '2mmGwD', 'search', 'fabulous synonym'                    , 'http://www.example.com/search_result?q=fabulous+synonym'                    , ''                                                                         , 875 )
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp      timestamp
  , session    varchar(255)
  , action     varchar(255)
  , keyword    text
  , url        text
  , referrer   text
  , result_num integer
);

INSERT INTO access_log
VALUES
    ('2017-01-05 23:35:13', '0CVKaz', 'search', 'mynavi quest2'                       , 'http://www.example.com/search_result?q=mynavi+quest'                        , ''                                                                         ,   0 )
  , ('2017-01-05 23:36:08', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:37:17', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=170'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:38:38', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=133'                                       , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:40:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:41:43', '0CVKaz', 'detail', ''                                    , 'http://www.example.com/detail?id=64'                                        , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data', NULL)
  , ('2017-01-05 23:43:10', '0CVKaz', 'search', 'mynavi quest the awakening of data'  , 'http://www.example.com/search_result?q=mynavi+quest+the+awakening+of+data'  , ''                                                                         , 630 )
  , ('2017-01-05 23:34:57', '1QceiB', 'search', 'yamada taro'                         , 'http://www.example.com/search_result?q=yamada+taro'                         , ''                                                                         , 367 )
  , ('2017-01-05 23:35:37', '1QceiB', 'search', 'yamada taro football'                , 'http://www.example.com/search_result?q=yamada+taro+football'                , ''                                                                         , 105 )
  , ('2017-01-05 23:36:48', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=99'                                        , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:37:27', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=142'                                       , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:38:52', '1QceiB', 'search', 'yamada taro football transfers'      , 'http://www.example.com/search_result?q=yamada+taro+football+transfers'      , ''                                                                         ,  50 )
  , ('2017-01-05 23:39:50', '1QceiB', 'detail', ''                                    , 'http://www.example.com/detail?id=7'                                         , 'http://www.example.com/search_result?q=yamada+taro+football'              , NULL)
  , ('2017-01-05 23:41:23', '1QceiB', 'search', 'yamada taro football transfers where', 'http://www.example.com/search_result?q=yamada+taro+football+transfers+where', ''                                                                         ,   0 )
  , ('2017-01-05 23:34:39', '1hI43A', 'search', 'english'                             , 'http://www.example.com/search_result?q=english'                             , ''                                                                         , 343 )
  , ('2017-01-05 23:36:08', '1hI43A', 'search', 'history of english'                  , 'http://www.example.com/search_result?q=history+of+english'                  , ''                                                                         , 757 )
  , ('2017-01-05 23:36:39', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=9'                                         , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:38:10', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=137'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:39:17', '1hI43A', 'search', 'history of english origin'           , 'http://www.example.com/search_result?q=history+of+english+origin'           , ''                                                                         , 963 )
  , ('2017-01-05 23:40:04', '1hI43A', 'detail', ''                                    , 'http://www.example.com/detail?id=158'                                       , 'http://www.example.com/search_result?q=history+of+english'                , NULL)
  , ('2017-01-05 23:40:52', '1hI43A', 'search', 'history of english england'          , 'http://www.example.com/search_result?q=history+of+english+england'          , ''                                                                         , 303 )
  , ('2017-01-06 23:34:36', '2bGs3i', 'search', 'nail'                                , 'http://www.example.com/search_result?q=nail'                                , ''                                                                         , 730 )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manikure'                            , 'http://www.example.com/search_result?q=manikure'                            , ''                                                                         , 0   )
  , ('2017-01-06 23:35:41', '2bGs3i', 'search', 'manicure'                            , 'http://www.example.com/search_result?q=manicure'                            , ''                                                                         , 64  )
  , ('2017-01-06 23:36:33', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=123'                                       , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:01', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=11'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:38:52', '2bGs3i', 'search', 'manicure red'                        , 'http://www.example.com/search_result?q=manicure+red'                        , ''                                                                         , 827 )
  , ('2017-01-06 23:40:17', '2bGs3i', 'detail', ''                                    , 'http://www.example.com/detail?id=56'                                        , 'http://www.example.com/search_result?q=manicure'                          , NULL)
  , ('2017-01-06 23:41:14', '2bGs3i', 'search', 'manicure dark red'                   , 'http://www.example.com/search_result?q=manicure+dark+red'                   , ''                                                                         , 920 )
  , ('2017-01-06 23:34:54', '2mmGwD', 'search', 'fab'                                 , 'http://www.example.com/search_result?q=fab'                                 , ''                                                                         , 646 )
  , ('2017-01-06 23:35:29', '2mmGwD', 'search', 'fabulous'                            , 'http://www.example.com/search_result?q=fabulous'                            , 'http://www.example.com/search_result?q=fab'                               , 179 )
  , ('2017-01-06 23:36:49', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=87'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:38:14', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=24'                                        , 'http://www.example.com/search_result?q=fabulous'                          , NULL)
  , ('2017-01-06 23:39:08', '2mmGwD', 'search', 'fabulous how to use'                 , 'http://www.example.com/search_result?q=fabulous+how+to+use'                 , ''                                                                         , 856 )
  , ('2017-01-06 23:40:05', '2mmGwD', 'detail', ''                                    , 'http://www.example.com/detail?id=51'                                        , 'http://www.example.com/search_result?q=fabulous+how+to+use'               , NULL)
  , ('2017-01-06 23:41:34', '2mmGwD', 'search', 'fabulous synonym'                    , 'http://www.example.com/search_result?q=fabulous+synonym'                    , ''                                                                         , 875 )
;


-- 必要なテーブルはありません


DROP TABLE IF EXISTS search_result;
CREATE TABLE search_result(
    keyword varchar(255)
  , rank    integer
  , item    varchar(255)
);

INSERT INTO search_result
VALUES
  ('sql'     ,  1, 'book001')
, ('sql'     ,  2, 'book005')
, ('sql'     ,  3, 'book012')
, ('sql'     ,  4, 'book004')
, ('sql'     ,  5, 'book003')
, ('sql'     ,  6, 'book010')
, ('sql'     ,  7, 'book024')
, ('sql'     ,  8, 'book025')
, ('sql'     ,  9, 'book050')
, ('sql'     , 10, 'book100')
, ('postgres',  1, 'book002')
, ('postgres',  2, 'book004')
, ('postgres',  3, 'book012')
, ('postgres',  4, 'book008')
, ('postgres',  5, 'book003')
, ('postgres',  6, 'book010')
, ('postgres',  7, 'book035')
, ('postgres',  8, 'book040')
, ('postgres',  9, 'book077')
, ('postgres', 10, 'book100')
, ('hive'    ,  1, 'book200')
;


DROP TABLE IF EXISTS correct_result;
CREATE TABLE correct_result(
    keyword varchar(255)
  , item    varchar(255)
);

INSERT INTO correct_result
VALUES
  ('sql'     , 'book003')
, ('sql'     , 'book005')
, ('sql'     , 'book008')
, ('sql'     , 'book010')
, ('sql'     , 'book025')
, ('sql'     , 'book100')
, ('postgres', 'book008')
, ('postgres', 'book010')
, ('postgres', 'book030')
, ('postgres', 'book055')
, ('postgres', 'book066')
, ('postgres', 'book100')
, ('hive'    , 'book200')
, ('redshift', 'book300')
;


DROP TABLE IF EXISTS search_result;
CREATE TABLE search_result(
    keyword varchar(255)
  , rank    integer
  , item    varchar(255)
);

INSERT INTO search_result
VALUES
    ('sql'     ,  1, 'book001')
  , ('sql'     ,  2, 'book005')
  , ('sql'     ,  3, 'book012')
  , ('sql'     ,  4, 'book004')
  , ('sql'     ,  5, 'book003')
  , ('sql'     ,  6, 'book010')
  , ('sql'     ,  7, 'book024')
  , ('sql'     ,  8, 'book025')
  , ('sql'     ,  9, 'book050')
  , ('sql'     , 10, 'book100')
  , ('postgres',  1, 'book002')
  , ('postgres',  2, 'book004')
  , ('postgres',  3, 'book012')
  , ('postgres',  4, 'book008')
  , ('postgres',  5, 'book003')
  , ('postgres',  6, 'book010')
  , ('postgres',  7, 'book035')
  , ('postgres',  8, 'book040')
  , ('postgres',  9, 'book077')
  , ('postgres', 10, 'book100')
  , ('hive'    ,  1, 'book200')
;

DROP TABLE IF EXISTS correct_result;
CREATE TABLE correct_result(
    keyword  varchar(255)
  , item  varchar(255)
);

INSERT INTO correct_result
VALUES
    ('sql'     , 'book003')
  , ('sql'     , 'book005')
  , ('sql'     , 'book008')
  , ('sql'     , 'book010')
  , ('sql'     , 'book025')
  , ('sql'     , 'book100')
  , ('postgres', 'book008')
  , ('postgres', 'book010')
  , ('postgres', 'book030')
  , ('postgres', 'book055')
  , ('postgres', 'book066')
  , ('postgres', 'book100')
  , ('hive'    , 'book200')
  , ('redshift', 'book300')
;


DROP TABLE IF EXISTS search_result;
CREATE TABLE search_result(
    keyword varchar(255)
  , rank    integer
  , item    varchar(255)
);

INSERT INTO search_result
  VALUES
    ('sql'     ,  1, 'book001')
  , ('sql'     ,  2, 'book005')
  , ('sql'     ,  3, 'book012')
  , ('sql'     ,  4, 'book004')
  , ('sql'     ,  5, 'book003')
  , ('sql'     ,  6, 'book010')
  , ('sql'     ,  7, 'book024')
  , ('sql'     ,  8, 'book025')
  , ('sql'     ,  9, 'book050')
  , ('sql'     , 10, 'book100')
  , ('postgres',  1, 'book002')
  , ('postgres',  2, 'book004')
  , ('postgres',  3, 'book012')
  , ('postgres',  4, 'book008')
  , ('postgres',  5, 'book003')
  , ('postgres',  6, 'book010')
  , ('postgres',  7, 'book035')
  , ('postgres',  8, 'book040')
  , ('postgres',  9, 'book077')
  , ('postgres', 10, 'book100')
  , ('hive'    ,  1, 'book200')
;

DROP TABLE IF EXISTS correct_result;
CREATE TABLE correct_result(
    keyword  varchar(255)
  , item  varchar(255)
);

INSERT INTO correct_result
VALUES
    ('sql'     , 'book003')
  , ('sql'     , 'book005')
  , ('sql'     , 'book008')
  , ('sql'     , 'book010')
  , ('sql'     , 'book025')
  , ('sql'     , 'book100')
  , ('postgres', 'book008')
  , ('postgres', 'book010')
  , ('postgres', 'book030')
  , ('postgres', 'book055')
  , ('postgres', 'book066')
  , ('postgres', 'book100')
  , ('hive'    , 'book200')
  , ('redshift', 'book300')
;


DROP TABLE IF EXISTS purchase_detail_log;
CREATE TABLE purchase_detail_log(
    stamp       varchar(255)
  , session     varchar(255)
  , purchase_id integer
  , product_id  varchar(255)
);

INSERT INTO purchase_detail_log
  VALUES
    ('2016-11-03 18:10', '989004ea',  1, 'D001')
  , ('2016-11-03 18:10', '989004ea',  1, 'D002')
  , ('2016-11-03 20:00', '47db0370',  2, 'D001')
  , ('2016-11-04 13:00', '1cf7678e',  3, 'D002')
  , ('2016-11-04 15:00', '5eb2e107',  4, 'A001')
  , ('2016-11-04 15:00', '5eb2e107',  4, 'A002')
  , ('2016-11-04 16:00', 'fe05e1d8',  5, 'A001')
  , ('2016-11-04 16:00', 'fe05e1d8',  5, 'A003')
  , ('2016-11-04 17:00', '87b5725f',  6, 'A001')
  , ('2016-11-04 17:00', '87b5725f',  6, 'A003')
  , ('2016-11-04 17:00', '87b5725f',  6, 'A004')
  , ('2016-11-04 18:00', '5d5b0997',  7, 'A005')
  , ('2016-11-04 18:00', '5d5b0997',  7, 'A006')
  , ('2016-11-04 19:00', '111f2996',  8, 'A002')
  , ('2016-11-04 19:00', '111f2996',  8, 'A003')
  , ('2016-11-04 20:00', '3efe001c',  9, 'A001')
  , ('2016-11-04 20:00', '3efe001c',  9, 'A003')
  , ('2016-11-04 21:00', '9afaf87c', 10, 'D001')
  , ('2016-11-04 21:00', '9afaf87c', 10, 'D003')
  , ('2016-11-04 22:00', 'd45ec190', 11, 'D001')
  , ('2016-11-04 22:00', 'd45ec190', 11, 'D002')
  , ('2016-11-04 23:00', '36dd0df7', 12, 'A002')
  , ('2016-11-04 23:00', '36dd0df7', 12, 'A003')
  , ('2016-11-04 23:00', '36dd0df7', 12, 'A004')
  , ('2016-11-05 15:00', 'cabf98e8', 13, 'A002')
  , ('2016-11-05 15:00', 'cabf98e8', 13, 'A004')
  , ('2016-11-05 16:00', 'f3b47933', 14, 'A005')
;


-- 必要なテーブルはありません


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    stamp   varchar(255)
  , user_id varchar(255)
  , action  varchar(255)
  , product varchar(255)
);

INSERT INTO action_log
VALUES
    ('2016-11-03 18:00:00', 'U001', 'view'    , 'D001')
  , ('2016-11-03 18:01:00', 'U001', 'view'    , 'D002')
  , ('2016-11-03 18:02:00', 'U001', 'view'    , 'D003')
  , ('2016-11-03 18:03:00', 'U001', 'view'    , 'D004')
  , ('2016-11-03 18:04:00', 'U001', 'view'    , 'D005')
  , ('2016-11-03 18:05:00', 'U001', 'view'    , 'D001')
  , ('2016-11-03 18:06:00', 'U001', 'view'    , 'D005')
  , ('2016-11-03 18:10:00', 'U001', 'purchase', 'D001')
  , ('2016-11-03 18:10:00', 'U001', 'purchase', 'D005')
  , ('2016-11-03 19:00:00', 'U002', 'view'    , 'D001')
  , ('2016-11-03 19:01:00', 'U002', 'view'    , 'D003')
  , ('2016-11-03 19:02:00', 'U002', 'view'    , 'D005')
  , ('2016-11-03 19:03:00', 'U002', 'view'    , 'D003')
  , ('2016-11-03 19:04:00', 'U002', 'view'    , 'D005')
  , ('2016-11-03 19:10:00', 'U002', 'purchase', 'D001')
  , ('2016-11-03 19:10:00', 'U002', 'purchase', 'D005')
  , ('2016-11-03 20:00:00', 'U003', 'view'    , 'D001')
  , ('2016-11-03 20:01:00', 'U003', 'view'    , 'D004')
  , ('2016-11-03 20:02:00', 'U003', 'view'    , 'D005')
  , ('2016-11-03 20:10:00', 'U003', 'purchase', 'D004')
  , ('2016-11-03 20:10:00', 'U003', 'purchase', 'D005')
;


DROP TABLE IF EXISTS action_log;

CREATE TABLE action_log(
    stamp   varchar(255)
  , user_id varchar(255)
  , action  varchar(255)
  , product varchar(255)
);

INSERT INTO action_log
VALUES
    ('2016-11-03 18:00:00', 'U001', 'view'    , 'D001')
  , ('2016-11-03 18:01:00', 'U001', 'view'    , 'D002')
  , ('2016-11-03 18:02:00', 'U001', 'view'    , 'D003')
  , ('2016-11-03 18:03:00', 'U001', 'view'    , 'D004')
  , ('2016-11-03 18:04:00', 'U001', 'view'    , 'D005')
  , ('2016-11-03 18:05:00', 'U001', 'view'    , 'D001')
  , ('2016-11-03 18:06:00', 'U001', 'view'    , 'D005')
  , ('2016-11-03 18:10:00', 'U001', 'purchase', 'D001')
  , ('2016-11-03 18:10:00', 'U001', 'purchase', 'D005')
  , ('2016-11-03 19:00:00', 'U002', 'view'    , 'D001')
  , ('2016-11-03 19:01:00', 'U002', 'view'    , 'D003')
  , ('2016-11-03 19:02:00', 'U002', 'view'    , 'D005')
  , ('2016-11-03 19:03:00', 'U002', 'view'    , 'D003')
  , ('2016-11-03 19:04:00', 'U002', 'view'    , 'D005')
  , ('2016-11-03 19:10:00', 'U002', 'purchase', 'D001')
  , ('2016-11-03 19:10:00', 'U002', 'purchase', 'D005')
  , ('2016-11-03 20:00:00', 'U003', 'view'    , 'D001')
  , ('2016-11-03 20:01:00', 'U003', 'view'    , 'D004')
  , ('2016-11-03 20:02:00', 'U003', 'view'    , 'D005')
  , ('2016-11-03 20:10:00', 'U003', 'purchase', 'D004')
  , ('2016-11-03 20:10:00', 'U003', 'purchase', 'D005')
;


-- 必要なテーブルはありません


-- 必要なテーブルはありません


-- 必要なテーブルはありません


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


