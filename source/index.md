---
title: API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the Run Ads API. You can use our API to access Run Ads API endpoints, which can get information on various campaigns in our database.

We have language bindings in Shell. You can view code examples in the dark area to the right.

# Authentication

> To authorize, use this code:

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H 'Authorization: Token token="your_auth_token"'

```

> Make sure to replace `your_auth_token` with your API key.

Run uses API keys to allow access to the API.

Run expects for the API key to be included in all API requests to the server in a header that looks like the following:

`'Authorization: Token token="your_auth_token"'`

<aside class="notice">
You must replace `your_auth_token` with your personal API key.
</aside>

# Campaigns

## Get All Campaigns

```shell
curl http://portal.runads.com/api/v1/campaigns -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
[
{
   "_id":"536144415472656100060000",
   "account_id":"50bd74fd1aeaf0234b000001",
   "ad_units_count":0,
   "advertiser_id":"515c88071aeaf04816000001",
   "avg_clearing_cpm":0.0,
   "avg_cpm":0.0,
   "campaign_id":1922,
   "campaign_type":null,
   "click_conversions":0,
   "click_conversions_xdev":0,
   "clicks":0,
   "cogs":null,
   "conversion_pixel_ids":[

   ],
   "ctr":null,
   "end_at":"2014-07-03T00:00:00.000Z",
   "external_clicks":0,
   "external_impressions":0,
   "video_starts":0,
   "video_completes":0,
   "goal_type":null,
   "goal_value":null,
   "placements_goal_type":"impressions",
   "placements_goal_value":0,
   "placements_goal_target_clearing_cost":0.0,
   "placements_goal_target_client_cost":0.0,
   "impression_cap":0,
   "clearing_cost_cap":0.0,
   "client_cost_cap":0.0,
   "frequency_cap_by":"placement",
   "frequency_cap_value":1,
   "frequency_cap_interval_days":null,
   "impressions":0,
   "io_budget":null,
   "name":"Advertiser Run",
   "objective_clicks":null,
   "objective_cpm":0.0,
   "objective_impressions":0,
   "paused":false,
   "percent_goal_achieved":null,
   "placements_count":0,
   "real_objective_impressions":0,
   "reporting_window_clicks":null,
   "reporting_window_views":null,
   "revenue":0.0,
   "rtb":true,
   "start_at":"2014-04-30T00:00:00.000Z",
   "state":"current",
   "total_clearing_cost":0.0,
   "total_data_cost":0.0,
   "total_cost":0.0,
   "user_ids":[
      "507f57ae254deeee1d000001",
      "50b8c5e7254dee4650000001"
   ],
   "view_conversions":0,
   "view_conversions_xdev":0,
   "advertiser":{
      "_id":"515c88071aeaf04816000001",
      "adgear_id":145,
      "name":"Nike"
   },
   "conversion_pixel_stats":[

   ],
   "live_placements_count":0,
   "has_external_feed":false,
   "mapped_placements_count":0,
   "video":false,
   "display":false,
   "mobile":false,
   "postback_conversion_campaign":false,
   "is_new_geo_version":true,
   "has_bluekai_campaign_segment_permissions":false,
   "account":{
      "_id":"50bd74fd1aeaf0234b000001",
      "account_admin_id":"50b8c5e7254dee4650000001",
      "active":true,
      "name":"RUN",
      "self_serve":false,
      "user_count":23,
      "ad_serving_fee":0.0,
      "plattform_fee":0.0,
      "add_transaction_token_on_redirect":false,
      "account_type":"managed",
      "account_admin":"zeke@rundsp.com",
      "device_lists":[

      ]
   }
}
]
```

This endpoint retrieves all campaigns associated with your account.

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
None

<aside class="success">
Remember — a happy campaign is an authenticated campaign!
</aside>

## Get a Specific Campaign

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
   "_id":"536144415472656100060000",
   "account_id":"50bd74fd1aeaf0234b000001",
   "ad_units_count":0,
   "advertiser_id":"515c88071aeaf04816000001",
   "avg_clearing_cpm":0.0,
   "avg_cpm":0.0,
   "campaign_id":1922,
   "campaign_type":null,
   "click_conversions":0,
   "click_conversions_xdev":0,
   "clicks":0,
   "cogs":null,
   "conversion_pixel_ids":[

   ],
   "ctr":null,
   "end_at":"2014-07-03T00:00:00.000Z",
   "external_clicks":0,
   "external_impressions":0,
   "video_starts":0,
   "video_completes":0,
   "goal_type":null,
   "goal_value":null,
   "placements_goal_type":"impressions",
   "placements_goal_value":0,
   "placements_goal_target_clearing_cost":0.0,
   "placements_goal_target_client_cost":0.0,
   "impression_cap":0,
   "clearing_cost_cap":0.0,
   "client_cost_cap":0.0,
   "frequency_cap_by":"placement",
   "frequency_cap_value":1,
   "frequency_cap_interval_days":null,
   "impressions":0,
   "io_budget":null,
   "name":"Advertiser Run",
   "objective_clicks":null,
   "objective_cpm":0.0,
   "objective_impressions":0,
   "paused":false,
   "percent_goal_achieved":null,
   "placements_count":0,
   "real_objective_impressions":0,
   "reporting_window_clicks":null,
   "reporting_window_views":null,
   "revenue":0.0,
   "rtb":true,
   "start_at":"2014-04-30T00:00:00.000Z",
   "state":"current",
   "total_clearing_cost":0.0,
   "total_data_cost":0.0,
   "total_cost":0.0,
   "user_ids":[
      "507f57ae254deeee1d000001",
      "50b8c5e7254dee4650000001"
   ],
   "view_conversions":0,
   "view_conversions_xdev":0,
   "advertiser":{
      "_id":"515c88071aeaf04816000001",
      "adgear_id":145,
      "name":"Nike"
   },
   "conversion_pixel_stats":[

   ],
   "live_placements_count":0,
   "has_external_feed":false,
   "mapped_placements_count":0,
   "video":false,
   "display":false,
   "mobile":false,
   "postback_conversion_campaign":false,
   "is_new_geo_version":true,
   "has_bluekai_campaign_segment_permissions":false,
   "account":{
      "_id":"50bd74fd1aeaf0234b000001",
      "account_admin_id":"50b8c5e7254dee4650000001",
      "active":true,
      "name":"RUN",
      "self_serve":false,
      "user_count":23,
      "ad_serving_fee":0.0,
      "plattform_fee":0.0,
      "add_transaction_token_on_redirect":false,
      "account_type":"managed",
      "account_admin":"zeke@rundsp.com",
      "device_lists":[

      ]
   }
}
```

This endpoint retrieves a specific campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:campaign_id | The ID of the campaign to retrieve | Yes


## Get Campaign Interval Data 

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id/:interval/:start_date/:end_date -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
      "time":"2014-05-06T00:00:00Z",
      "unix_time":1399334400,
      "cost":1206.70475,
      "imp":509369,
      "e_imp":0,
      "cli":650,
      "e_cli":0,
      "cli_con":41,
      "imp_con":1,
      "cli_con_xdp":85,
      "imp_con_xdp":4,
      "c_cost":355.425066934,
      "data_cost":0.0,
      "vas_sta":0,
      "vas_fir":0,
      "vas_mid":0,
      "vas_thi":0,
      "vas_com":0,
      "vas_ful":0,
      "vas_pau":0,
      "vas_res":0,
      "vas_rew":0,
      "vas_mut":0,
      "vas_unm":0,
      "vas_err":0
   }
```

This endpoint retrieves interval data about a specific campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id/:interval/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id| The ID of the campaign to retrieve | Yes
:interval | Time interval at which to show data| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Interval values are hours, days, weeks, and months




## Get Category Specific Data 

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id/:category/:start_date/:end_date -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
   "avg_fre":3.940002378,
   "e_imp":0,
   "e_cli":0,
   "e_cost":0,
   "cli_con":0,
   "imp_con":0,
   "cli_con_xdp":0,
   "imp_con_xdp":0,
   "cost":0.0,
   "clearing_cost":358.036202081,
   "data_cost":0.0,
   "placement":"Womens Channel 320x50 ",
   "impressions":2151061,
   "clicks":0,
   "reach":1083209,
   "ctr":0.0,
   "e_ctr":0,
   "imp_con_rate":0.0,
   "cli_con_rate":0,
   "imp_con_rate_xdp":0.0,
   "cli_con_rate_xdp":0,
   "con_rate":0.0,
   "con_rate_xdp":0.0
}
```

This endpoint retrieves category specific data about a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id/:category/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:category | Type of data to filter by| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes

**Category values are ad_formats, campaign, conversions, devices, exchanges, placements, segments, and referers.


## Get Placement Specific Data 

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id/placements/:placement_category/:start_date/:end_date -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
   "avg_fre":0,
   "e_imp":0,
   "e_cli":0,
   "e_cost":0,
   "cli_con":0,
   "imp_con":0,
   "cli_con_xdp":0,
   "imp_con_xdp":0,
   "cost":85.81725,
   "clearing_cost":21.707466312,
   "data_cost":0,
   "ref_group":"http://ib.adnxs.com",
   "placement":"(0027)4581669-1 Demo: A35-64 with HHI \u003E 100k (Islamorada)-728x90 / Run Of Site (ROS)",
   "referrer":"http://ib.adnxs.com",
   "impressions":39915,
   "clicks":1,
   "reach":0,
   "ctr":2.5053238131028435e-05,
   "e_ctr":0,
   "imp_con_rate":0.0,
   "cli_con_rate":0.0,
   "imp_con_rate_xdp":0.0,
   "cli_con_rate_xdp":0.0,
   "con_rate":0.0,
   "con_rate_xdp":0.0
}
```

This endpoint retrieves placement specific data about a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id/placements/:placement_category/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_category | Type of placement category to filter by| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes

**Placement category values are segments, referers, and exchanges.


## Get all placements for a campaign

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id/placements -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{ "_id" : "51acb9f01aeaf0f0b1001705",
  "aasm_state" : "active",
  "ad_format_id" : "50c8cbb91aeaf0052600196d",
  "ad_unit_ids" : [ "51acc3ff1aeaf07dd50022e7" ],
  "adm_tag_type" : "pscript",
  "append_extra_metadata_to_clicktracker" : false,
  "avg_clearing_cpm" : 0.57886732900000004,
  "avg_cpm" : 2.1499999999999999,
  "campaign_id" : "51acb4fe1aeaf05969000961",
  "click_conversions" : null,
  "clicks" : 178,
  "cpa_goal" : 0.0,
  "ctr" : 0.0003030272077574965,
  "delivery_type" : "Normal",
  "external_clicks" : 193,
  "external_impressions" : 571492,
  "external_mapping" : "MNI Ad Network_Florida, Georgia, North Carolina, South Carolina_Demo: A35-64 with HHI > 100k (Islamorada) _ 160x600_6/3/2013 - 8/3/2013_Standard Flash",
  "failed_to_sync_at" : null,
  "failures" : null,
  "goal_target_clearing_cost" : 0.0,
  "goal_target_client_cost" : 0.0,
  "goal_type" : "impressions",
  "goal_value" : 578000,
  "has_companion_ad_unit" : false,
  "impressions" : 587406,
  "is_baselined" : 0,
  "language_country_ids" : [  ],
  "name" : " (0027)4581669-1 Demo: A35-64 with HHI > 100k (Islamorada)-160x600 / Run Of Site (ROS)",
  "noscript_ad_unit_id" : null,
  "placement_id" : 20172,
  "placement_objective" : { "_id" : "51acb9f01aeaf0f0b1001706",
      "charging_amount" : 2.1499999999999999,
      "charging_unit" : "mille",
      "clicks_count" : 178,
      "contributes_to_sold_percentage" : false,
      "created_at" : "2013-08-03T22:04:13Z",
      "deliver_asap" : false,
      "end_at" : "2013-08-04T00:59:59.000Z",
      "goal_type" : "none",
      "goal_value" : 0,
      "impressions_count" : 587406,
      "non_deleted_clicks_count" : 178,
      "non_deleted_impressions_count" : 587406,
      "pacing" : "flat",
      "remote_id" : null,
      "start_at" : "2013-06-03T00:00:00.000Z",
      "state" : "finished",
      "updated_at" : "2013-08-03T22:04:13Z"
    },
  "portal_updated_at" : "2013-08-03T22:04:07+00:00",
  "remote_campaign_id" : 581,
  "rtb" : true,
  "rtb_setting" : { "_id" : "51acb9f01aeaf0f0b1001707",
      "ad_position" : "",
      "ad_type_id" : null,
      "adm" : "<script type=\"text/javascript\" language=\"JavaScript\">        (function() {            ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";            ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;            ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;            ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;                      var randomnum = \"__RANDOM_NUMBER__\";                       var agref = \"__REFERER__\";             var proto = \"http:\";              randomnum = String(randomnum);          if (window.location.protocol == \"https:\") proto = \"https:\";            if (randomnum.substring(0,2) == \"__\") randomnum = String(Math.random());            document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +            proto + '//d.runadtag.com' + '/impressions/ext/p=' +       '20172' + '.js?AG_R=' +            randomnum + '&RUN_XNAME=__XNAME__' + '&RUN_RTBWP=${AUCTION_PRICE}' +            (agref === \"\" ? \"\" : (\"&AG_REF=\" + agref)) +                  '\"></scr' + 'ipt>');        })();      </script>",
      "age" : [  ],
      "attr" : [  ],
      "auto_exchange_weights" : null,
      "bids" : 0,
      "blist" : [  ],
      "catch_up_type" : "none",
      "category_id" : "50dc659c254dee58e400001b",
      "category_ids" : [  ],
      "city" : [  ],
      "clearing_cost_budget_remaining_this_hour" : 0.0,
      "client_cost_budget_remaining_this_hour" : 0.0,
      "country" : [  ],
      "creative_attribute_id" : null,
      "crid" : 20172,
      "ctr_optimize" : false,
      "ctr_optimize_version" : 1,
      "day_parting" : { "0" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "1" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "2" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "3" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "4" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "5" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "6" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ]
        },
      "deal_id" : false,
      "deal_id_value" : null,
      "device_list_ids" : [  ],
      "device_makes" : [  ],
      "device_models" : [  ],
      "device_targeting" : "display",
      "dma_ids" : [  ],
      "domain" : "http://www.fla-keys.com/marathon/",
      "exchange_weights" : { "OpenX" : 50,
          "rubicon" : 50
        },
      "frequency_cap" : false,
      "frequency_cap_interval_days" : 1,
      "frequency_cap_value" : 3,
      "gender" : "ALL",
      "geo_locs" : [  ],
      "geo_points_radii" : [  ],
      "geo_points_radii_csv" : "",
      "geo_range" : 3,
      "geo_targeting_version" : 1,
      "geo_type" : "region",
      "geo_zips" : [  ],
      "impressions_remaining_this_hour" : 0,
      "inventory_type" : "",
      "isps" : [  ],
      "iurl" : null,
      "live" : true,
      "mraid_has_video" : false,
      "only_buy_inventory_with_lat_lon" : false,
      "only_buy_known_ip" : true,
      "only_buy_transparent_inventory" : false,
      "only_buy_volume_on" : false,
      "original_adm" : "<script type=\"text/javascript\" language=\"JavaScript\">\n(function() {\n  ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";\n  ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;\n  var randomnum = \"__RANDOM_NUMBER__\";\n  var agref = \"\";\n  var proto = \"http:\";\n  if (!agref.match(/^https?/i)) agref = \"\";\n  if (window.location.protocol == \"https:\") proto = \"https:\";\n  if (randomnum.substring(0,2) == \"__\") randomnum = String(Math.random());\n  document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +\n      proto + '//d.runadtag.com' + '/impressions/ext/p=' +\n      '20172' + '.js?AG_R=' + randomnum +\n      (agref === \"\" ? \"\" : (\"&AG_REF=\" + encodeURIComponent(agref))) +\n      '\"></scr' + 'ipt>');\n})();\n</script>\n",
      "os" : null,
      "price" : 0.75,
      "region" : [ "514893611aeaf0619c000016",
          "514893611aeaf0619c000017",
          "514893611aeaf0619c000035",
          "514893611aeaf0619c00002e"
        ],
      "segments" : [  ],
      "serve_300x50_in_320x50" : false,
      "tld_wlist" : [  ],
      "uidh" : false,
      "video_attributes" : [  ],
      "video_types" : [  ],
      "wins" : 0,
      "wlist" : [ "1-800-oncologist.com",
          "21gents.com",
          "adnxs.com",
          "all-allergies.com",
          "americanthinker.com",
          "ask.com",
          "beforeitsnews.com",
          "biography.com",
          "boattrader.com",
          "buddytv.com",
          "careerbuilder.com",
          "celebrityawesome.com",
          "celebritywatchdog.com",
          "chacha.com",
          "cheezburger.com",
          "classmates.com",
          "couponmonday.com",
          "curse.com",
          "dailymail.co.uk",
          "dallasnews.com",
          "datpiff.com",
          "dramafever.com",
          "drf.com",
          "dukebasketballreport.com",
          "empireonline.com",
          "environmentalgraffiti.com",
          "ewrestlingnews.com",
          "examiner.com",
          "fhm.com",
          "freeridegames.com",
          "ghanaweb.com",
          "gogoanime.com",
          "golfwrx.com",
          "gossipcop.com",
          "greekrank.com",
          "guardian.co.uk",
          "hollyscoop.com",
          "hollywire.com",
          "hotair.com",
          "indiatimes.com",
          "juno.com",
          "justin.tv",
          "justjared.com",
          "las-vegas-nightlife.com",
          "leaguecraft.com",
          "legacy.com",
          "mashable.com",
          "meetme.com",
          "mmo-champion.com",
          "modamob.com",
          "mtgsalvation.com",
          "musicblvd.com",
          "myfitnesspal.com",
          "mylifetime.com",
          "nationalreview.com",
          "oprah.com",
          "orlandosentinel.com",
          "perezhilton.com",
          "philly.com",
          "planetminecraft.com",
          "pogo.com",
          "premium-site-24.com",
          "ratemds.com",
          "realitysteve.com",
          "roblox.com",
          "rvtrader.com",
          "sbnation.com",
          "scrabblefinder.com",
          "sltrib.com",
          "startribune.com",
          "stereotude.com",
          "sun-sentinel.com",
          "theblaze.com",
          "thesaurus.com",
          "thesun.co.uk",
          "washingtonexaminer.com",
          "wattpad.com",
          "webmail.com",
          "whitepages.com",
          "wikia.com",
          "wistv.com",
          "wral.com"
        ],
      "wprice" : 0.0
    },
  "sitelist_ids" : [ "51e44528254dee7d0e0008a1" ],
  "sitelist_type" : "whitelist",
  "state" : "active",
  "tactics" : [  ],
  "tag" : "<script type=\"text/javascript\" language=\"JavaScript\">\n(function() {\n  ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";\n  ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;\n  var randomnum = \"__RANDOM_NUMBER__\";\n  var agref = \"\";\n  var proto = \"http:\";\n  if (!agref.match(/^https?/i)) agref = \"\";\n  if (window.location.protocol == \"https:\") proto = \"https:\";\n  if (randomnum.substring(0,2) == \"__\") randomnum = String(Math.random());\n  document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +\n      proto + '//d.runadtag.com' + '/impressions/ext/p=' +\n      '20172' + '.js?AG_R=' + randomnum +\n      (agref === \"\" ? \"\" : (\"&AG_REF=\" + encodeURIComponent(agref))) +\n      '\"></scr' + 'ipt>');\n})();\n</script>\n",
  "tag_type" : "pscript",
  "total_clearing_cost" : 340.03014249199998,
  "total_cost" : 1262.9229,
  "vast_url" : null,
  "video_formats" : null,
  "video_sizes" : [  ],
  "view_conversions" : null
}
```

This endpoint retrieves all placements for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id/placements`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes


## Get a specific placement for a campaign

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id/placements/:placement_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{ "_id" : "51acb9f01aeaf0f0b1001705",
  "aasm_state" : "active",
  "ad_format_id" : "50c8cbb91aeaf0052600196d",
  "ad_unit_ids" : [ "51acc3ff1aeaf07dd50022e7" ],
  "adm_tag_type" : "pscript",
  "append_extra_metadata_to_clicktracker" : false,
  "avg_clearing_cpm" : 0.57886732900000004,
  "avg_cpm" : 2.1499999999999999,
  "campaign_id" : "51acb4fe1aeaf05969000961",
  "click_conversions" : null,
  "clicks" : 178,
  "cpa_goal" : 0.0,
  "ctr" : 0.0003030272077574965,
  "delivery_type" : "Normal",
  "external_clicks" : 193,
  "external_impressions" : 571492,
  "external_mapping" : "MNI Ad Network_Florida, Georgia, North Carolina, South Carolina_Demo: A35-64 with HHI > 100k (Islamorada) _ 160x600_6/3/2013 - 8/3/2013_Standard Flash",
  "failed_to_sync_at" : null,
  "failures" : null,
  "goal_target_clearing_cost" : 0.0,
  "goal_target_client_cost" : 0.0,
  "goal_type" : "impressions",
  "goal_value" : 578000,
  "has_companion_ad_unit" : false,
  "impressions" : 587406,
  "is_baselined" : 0,
  "language_country_ids" : [  ],
  "name" : " (0027)4581669-1 Demo: A35-64 with HHI > 100k (Islamorada)-160x600 / Run Of Site (ROS)",
  "noscript_ad_unit_id" : null,
  "placement_id" : 20172,
  "placement_objective" : { "_id" : "51acb9f01aeaf0f0b1001706",
      "charging_amount" : 2.1499999999999999,
      "charging_unit" : "mille",
      "clicks_count" : 178,
      "contributes_to_sold_percentage" : false,
      "created_at" : "2013-08-03T22:04:13Z",
      "deliver_asap" : false,
      "end_at" : "2013-08-04T00:59:59.000Z",
      "goal_type" : "none",
      "goal_value" : 0,
      "impressions_count" : 587406,
      "non_deleted_clicks_count" : 178,
      "non_deleted_impressions_count" : 587406,
      "pacing" : "flat",
      "remote_id" : null,
      "start_at" : "2013-06-03T00:00:00.000Z",
      "state" : "finished",
      "updated_at" : "2013-08-03T22:04:13Z"
    },
  "portal_updated_at" : "2013-08-03T22:04:07+00:00",
  "remote_campaign_id" : 581,
  "rtb" : true,
  "rtb_setting" : { "_id" : "51acb9f01aeaf0f0b1001707",
      "ad_position" : "",
      "ad_type_id" : null,
      "adm" : "<script type=\"text/javascript\" language=\"JavaScript\">        (function() {            ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";            ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;            ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;            ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;                      var randomnum = \"__RANDOM_NUMBER__\";                       var agref = \"__REFERER__\";             var proto = \"http:\";              randomnum = String(randomnum);          if (window.location.protocol == \"https:\") proto = \"https:\";            if (randomnum.substring(0,2) == \"__\") randomnum = String(Math.random());            document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +            proto + '//d.runadtag.com' + '/impressions/ext/p=' +       '20172' + '.js?AG_R=' +            randomnum + '&RUN_XNAME=__XNAME__' + '&RUN_RTBWP=${AUCTION_PRICE}' +            (agref === \"\" ? \"\" : (\"&AG_REF=\" + agref)) +                  '\"></scr' + 'ipt>');        })();      </script>",
      "age" : [  ],
      "attr" : [  ],
      "auto_exchange_weights" : null,
      "bids" : 0,
      "blist" : [  ],
      "catch_up_type" : "none",
      "category_id" : "50dc659c254dee58e400001b",
      "category_ids" : [  ],
      "city" : [  ],
      "clearing_cost_budget_remaining_this_hour" : 0.0,
      "client_cost_budget_remaining_this_hour" : 0.0,
      "country" : [  ],
      "creative_attribute_id" : null,
      "crid" : 20172,
      "ctr_optimize" : false,
      "ctr_optimize_version" : 1,
      "day_parting" : { "0" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "1" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "2" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "3" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "4" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "5" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ],
          "6" : [ 0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23
            ]
        },
      "deal_id" : false,
      "deal_id_value" : null,
      "device_list_ids" : [  ],
      "device_makes" : [  ],
      "device_models" : [  ],
      "device_targeting" : "display",
      "dma_ids" : [  ],
      "domain" : "http://www.fla-keys.com/marathon/",
      "exchange_weights" : { "OpenX" : 50,
          "rubicon" : 50
        },
      "frequency_cap" : false,
      "frequency_cap_interval_days" : 1,
      "frequency_cap_value" : 3,
      "gender" : "ALL",
      "geo_locs" : [  ],
      "geo_points_radii" : [  ],
      "geo_points_radii_csv" : "",
      "geo_range" : 3,
      "geo_targeting_version" : 1,
      "geo_type" : "region",
      "geo_zips" : [  ],
      "impressions_remaining_this_hour" : 0,
      "inventory_type" : "",
      "isps" : [  ],
      "iurl" : null,
      "live" : true,
      "mraid_has_video" : false,
      "only_buy_inventory_with_lat_lon" : false,
      "only_buy_known_ip" : true,
      "only_buy_transparent_inventory" : false,
      "only_buy_volume_on" : false,
      "original_adm" : "<script type=\"text/javascript\" language=\"JavaScript\">\n(function() {\n  ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";\n  ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;\n  var randomnum = \"__RANDOM_NUMBER__\";\n  var agref = \"\";\n  var proto = \"http:\";\n  if (!agref.match(/^https?/i)) agref = \"\";\n  if (window.location.protocol == \"https:\") proto = \"https:\";\n  if (randomnum.substring(0,2) == \"__\") randomnum = String(Math.random());\n  document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +\n      proto + '//d.runadtag.com' + '/impressions/ext/p=' +\n      '20172' + '.js?AG_R=' + randomnum +\n      (agref === \"\" ? \"\" : (\"&AG_REF=\" + encodeURIComponent(agref))) +\n      '\"></scr' + 'ipt>');\n})();\n</script>\n",
      "os" : null,
      "price" : 0.75,
      "region" : [ "514893611aeaf0619c000016",
          "514893611aeaf0619c000017",
          "514893611aeaf0619c000035",
          "514893611aeaf0619c00002e"
        ],
      "segments" : [  ],
      "serve_300x50_in_320x50" : false,
      "tld_wlist" : [  ],
      "uidh" : false,
      "video_attributes" : [  ],
      "video_types" : [  ],
      "wins" : 0,
      "wlist" : [ "1-800-oncologist.com",
          "21gents.com",
          "adnxs.com",
          "all-allergies.com",
          "americanthinker.com",
          "ask.com",
          "beforeitsnews.com",
          "biography.com",
          "boattrader.com",
          "buddytv.com",
          "careerbuilder.com",
          "celebrityawesome.com",
          "celebritywatchdog.com",
          "chacha.com",
          "cheezburger.com",
          "classmates.com",
          "couponmonday.com",
          "curse.com",
          "dailymail.co.uk",
          "dallasnews.com",
          "datpiff.com",
          "dramafever.com",
          "drf.com",
          "dukebasketballreport.com",
          "empireonline.com",
          "environmentalgraffiti.com",
          "ewrestlingnews.com",
          "examiner.com",
          "fhm.com",
          "freeridegames.com",
          "ghanaweb.com",
          "gogoanime.com",
          "golfwrx.com",
          "gossipcop.com",
          "greekrank.com",
          "guardian.co.uk",
          "hollyscoop.com",
          "hollywire.com",
          "hotair.com",
          "indiatimes.com",
          "juno.com",
          "justin.tv",
          "justjared.com",
          "las-vegas-nightlife.com",
          "leaguecraft.com",
          "legacy.com",
          "mashable.com",
          "meetme.com",
          "mmo-champion.com",
          "modamob.com",
          "mtgsalvation.com",
          "musicblvd.com",
          "myfitnesspal.com",
          "mylifetime.com",
          "nationalreview.com",
          "oprah.com",
          "orlandosentinel.com",
          "perezhilton.com",
          "philly.com",
          "planetminecraft.com",
          "pogo.com",
          "premium-site-24.com",
          "ratemds.com",
          "realitysteve.com",
          "roblox.com",
          "rvtrader.com",
          "sbnation.com",
          "scrabblefinder.com",
          "sltrib.com",
          "startribune.com",
          "stereotude.com",
          "sun-sentinel.com",
          "theblaze.com",
          "thesaurus.com",
          "thesun.co.uk",
          "washingtonexaminer.com",
          "wattpad.com",
          "webmail.com",
          "whitepages.com",
          "wikia.com",
          "wistv.com",
          "wral.com"
        ],
      "wprice" : 0.0
    },
  "sitelist_ids" : [ "51e44528254dee7d0e0008a1" ],
  "sitelist_type" : "whitelist",
  "state" : "active",
  "tactics" : [  ],
  "tag" : "<script type=\"text/javascript\" language=\"JavaScript\">\n(function() {\n  ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";\n  ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;\n  var randomnum = \"__RANDOM_NUMBER__\";\n  var agref = \"\";\n  var proto = \"http:\";\n  if (!agref.match(/^https?/i)) agref = \"\";\n  if (window.location.protocol == \"https:\") proto = \"https:\";\n  if (randomnum.substring(0,2) == \"__\") randomnum = String(Math.random());\n  document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +\n      proto + '//d.runadtag.com' + '/impressions/ext/p=' +\n      '20172' + '.js?AG_R=' + randomnum +\n      (agref === \"\" ? \"\" : (\"&AG_REF=\" + encodeURIComponent(agref))) +\n      '\"></scr' + 'ipt>');\n})();\n</script>\n",
  "tag_type" : "pscript",
  "total_clearing_cost" : 340.03014249199998,
  "total_cost" : 1262.9229,
  "vast_url" : null,
  "video_formats" : null,
  "video_sizes" : [  ],
  "view_conversions" : null
}
```

This endpoint retrieves a specific placement for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id/placements/:placement_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_id | The ID of the placement to retrieve| Yes



## Get the top 10 placements by click-through rate for a campaign

```shell
curl http://portal.runads.com/api/v1/campaigns/:campaign_id/placements/top/ctr -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "51acb9ef1aeaf0f0b10016db",
    "name": "(0027)4581669-5 Demo: A35-64 with HHI \u003E 100k (Marathon) - 728x90 / Run Of Site (ROS)",
    "impressions": 639770,
    "clicks": 412,
    "ctr": 0.0006439814308267034
}
```

This endpoint retrieves the top 10 placements by click-through rate for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.runads.com/api/v1/campaigns/:campaign_id/placements/top/ctr`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes









