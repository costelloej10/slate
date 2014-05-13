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


