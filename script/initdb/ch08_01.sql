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


