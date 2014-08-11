---
title: API Reference

language_tabs:
  - shell

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
curl http://portal.rundsp.com/api/v1/campaigns -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "51acb4fe1aeaf05969000961",
    "account_id": "51e6b0c1254dee6b4d00016a",
    "ad_units_count": 18,
    "advertiser_id": "51acb45b1aeaf05969000001",
    "avg_cpm": 2.15,
    "campaign_id": 581,
    "campaign_type": "Display",
    "click_conversions": 0,
    "click_conversions_xdev": 0,
    "clicks": 4775,
    "cogs": null,
    "conversion_pixel_ids": [],
    "ctr": 0.051,
    "end_at": "2013-08-04T23:59:59.000Z",
    "external_clicks": 5035,
    "external_impressions": 9092218,
    "video_starts": 0,
    "video_completes": 0,
    "goal_type": "None",
    "goal_value": null,
    "placements_goal_type": "impressions",
    "placements_goal_value": 8883000,
    "placements_goal_target_client_cost": 0,
    "impression_cap": 0,
    "client_cost_cap": 0,
    "frequency_cap_by": "placement",
    "frequency_cap_value": 0,
    "frequency_cap_interval_days": 1,
    "impressions": 9421057,
    "io_budget": null,
    "name": "Florida Keys and Key West Tourism",
    "objective_clicks": 0,
    "objective_cpm": 2.1499999999999995,
    "objective_impressions": 17741556,
    "paused": false,
    "percent_goal_achieved": 99.99,
    "placements_count": 18,
    "real_objective_impressions": 0,
    "reporting_window_clicks": "30",
    "reporting_window_views": "30",
    "revenue": 376462.56,
    "rtb": true,
    "start_at": "2013-06-03T00:00:00.000Z",
    "state": "current",
    "total_data_cost": 0,
    "total_cost": 20255.27255,
    "user_ids": [
        "5196953b254dee0bfa0002aa",
        "51d4550a254dee1ee0000054",
        "51d1e995254dee367f00034d",
        "51d1e8da254dee82e9000236",
        "51d1e8ad254dee82e9000235",
        "51d1e927254dee01600002a4",
        "51d1e946254dee367f00034c",
        "51d1e824254deeb8520002d7",
        "51d1e85c254dee82e9000234",
        "51d1e978254deeb8520002d8",
        "51d1e908254dee82e9000237",
        "51d1e807254dee82e9000233",
        "51d45f76254dee1ee000012b",
        "51d45ffe254dee1ee000012c",
        "51f7d6dd254deede680000bc",
        "51e6b11a254dee1a83000285"
    ],
    "view_conversions": 0,
    "view_conversions_xdev": 0,
    "advertiser": {
        "_id": "51acb45b1aeaf05969000001",
        "adgear_id": 236,
        "name": "Florida Keys and Key West Tourism"
    },
    "conversion_pixel_stats": [],
    "live_placements_count": 12,
    "has_external_feed": false,
    "mapped_placements_count": 18,
    "video": false,
    "display": false,
    "mobile": false,
    "postback_conversion_campaign": false,
    "is_new_geo_version": false,
    "has_bluekai_campaign_segment_permissions": false,
    "account": {
        "_id": "51e6b0c1254dee6b4d00016a",
        "account_admin_id": "51e6b11a254dee1a83000285",
        "active": true,
        "name": "Test",
        "self_serve": false,
        "user_count": 1,
        "ad_serving_fee": 0.08,
        "plattform_fee": 0,
        "add_transaction_token_on_redirect": false,
        "account_type": "managed",
        "account_admin": "test@gmail.com",
        "device_lists": []
    }
}
```

This endpoint retrieves all campaigns associated with your account.

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
None

<aside class="success">
Remember — a happy campaign is an authenticated campaign!
</aside>

## Get a Specific Campaign

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "51acb4fe1aeaf05969000961",
    "account_id": "51e6b0c1254dee6b4d00016a",
    "ad_units_count": 18,
    "advertiser_id": "51acb45b1aeaf05969000001",
    "avg_cpm": 2.15,
    "campaign_id": 581,
    "campaign_type": "Display",
    "click_conversions": 0,
    "click_conversions_xdev": 0,
    "clicks": 4775,
    "cogs": null,
    "conversion_pixel_ids": [],
    "ctr": 0.051,
    "end_at": "2013-08-04T23:59:59.000Z",
    "external_clicks": 5035,
    "external_impressions": 9092218,
    "video_starts": 0,
    "video_completes": 0,
    "goal_type": "None",
    "goal_value": null,
    "placements_goal_type": "impressions",
    "placements_goal_value": 8883000,
    "placements_goal_target_client_cost": 0,
    "impression_cap": 0,
    "client_cost_cap": 0,
    "frequency_cap_by": "placement",
    "frequency_cap_value": 0,
    "frequency_cap_interval_days": 1,
    "impressions": 9421057,
    "io_budget": null,
    "name": "Florida Keys and Key West Tourism",
    "objective_clicks": 0,
    "objective_cpm": 2.1499999999999995,
    "objective_impressions": 17741556,
    "paused": false,
    "percent_goal_achieved": 99.99,
    "placements_count": 18,
    "real_objective_impressions": 0,
    "reporting_window_clicks": "30",
    "reporting_window_views": "30",
    "revenue": 376462.56,
    "rtb": true,
    "start_at": "2013-06-03T00:00:00.000Z",
    "state": "current",
    "total_data_cost": 0,
    "total_cost": 20255.27255,
    "user_ids": [
        "5196953b254dee0bfa0002aa",
        "51d4550a254dee1ee0000054",
        "51d1e995254dee367f00034d",
        "51d1e8da254dee82e9000236",
        "51d1e8ad254dee82e9000235",
        "51d1e927254dee01600002a4",
        "51d1e946254dee367f00034c",
        "51d1e824254deeb8520002d7",
        "51d1e85c254dee82e9000234",
        "51d1e978254deeb8520002d8",
        "51d1e908254dee82e9000237",
        "51d1e807254dee82e9000233",
        "51d45f76254dee1ee000012b",
        "51d45ffe254dee1ee000012c",
        "51f7d6dd254deede680000bc",
        "51e6b11a254dee1a83000285"
    ],
    "view_conversions": 0,
    "view_conversions_xdev": 0,
    "advertiser": {
        "_id": "51acb45b1aeaf05969000001",
        "adgear_id": 236,
        "name": "Florida Keys and Key West Tourism"
    },
    "conversion_pixel_stats": [],
    "live_placements_count": 12,
    "has_external_feed": false,
    "mapped_placements_count": 18,
    "video": false,
    "display": false,
    "mobile": false,
    "postback_conversion_campaign": false,
    "is_new_geo_version": false,
    "has_bluekai_campaign_segment_permissions": false,
    "account": {
        "_id": "51e6b0c1254dee6b4d00016a",
        "account_admin_id": "51e6b11a254dee1a83000285",
        "active": true,
        "name": "Test",
        "self_serve": false,
        "user_count": 1,
        "ad_serving_fee": 0.08,
        "plattform_fee": 0,
        "add_transaction_token_on_redirect": false,
        "account_type": "managed",
        "account_admin": "test@gmail.com",
        "device_lists": []
    }
}
```

This endpoint retrieves a specific campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:campaign_id | The ID of the campaign to retrieve | Yes

## Create a Campaign

```shell
curl -X POST -d "attribute1=value1&attribute2=value2" http://portal.rundsp.com/api/v1/campaigns -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "51acb4fe1aeaf05969000961",
    "account_id": "51e6b0c1254dee6b4d00016a",
    "ad_units_count": 18,
    "advertiser_id": "51acb45b1aeaf05969000001",
    "avg_cpm": 2.15,
    "campaign_id": 581,
    "campaign_type": "Display",
    "click_conversions": 0,
    "click_conversions_xdev": 0,
    "clicks": 4775,
    "cogs": null,
    "conversion_pixel_ids": [],
    "ctr": 0.051,
    "end_at": "2013-08-04T23:59:59.000Z",
    "external_clicks": 5035,
    "external_impressions": 9092218,
    "video_starts": 0,
    "video_completes": 0,
    "goal_type": "None",
    "goal_value": null,
    "placements_goal_type": "impressions",
    "placements_goal_value": 8883000,
    "placements_goal_target_client_cost": 0,
    "impression_cap": 0,
    "client_cost_cap": 0,
    "frequency_cap_by": "placement",
    "frequency_cap_value": 0,
    "frequency_cap_interval_days": 1,
    "impressions": 9421057,
    "io_budget": null,
    "name": "Florida Keys and Key West Tourism",
    "objective_clicks": 0,
    "objective_cpm": 2.1499999999999995,
    "objective_impressions": 17741556,
    "paused": false,
    "percent_goal_achieved": 99.99,
    "placements_count": 18,
    "real_objective_impressions": 0,
    "reporting_window_clicks": "30",
    "reporting_window_views": "30",
    "revenue": 376462.56,
    "rtb": true,
    "start_at": "2013-06-03T00:00:00.000Z",
    "state": "current",
    "total_data_cost": 0,
    "total_cost": 20255.27255,
    "user_ids": [
        "5196953b254dee0bfa0002aa",
        "51d4550a254dee1ee0000054",
        "51d1e995254dee367f00034d",
        "51d1e8da254dee82e9000236",
        "51d1e8ad254dee82e9000235",
        "51d1e927254dee01600002a4",
        "51d1e946254dee367f00034c",
        "51d1e824254deeb8520002d7",
        "51d1e85c254dee82e9000234",
        "51d1e978254deeb8520002d8",
        "51d1e908254dee82e9000237",
        "51d1e807254dee82e9000233",
        "51d45f76254dee1ee000012b",
        "51d45ffe254dee1ee000012c",
        "51f7d6dd254deede680000bc",
        "51e6b11a254dee1a83000285"
    ],
    "view_conversions": 0,
    "view_conversions_xdev": 0,
    "advertiser": {
        "_id": "51acb45b1aeaf05969000001",
        "adgear_id": 236,
        "name": "Florida Keys and Key West Tourism"
    },
    "conversion_pixel_stats": [],
    "live_placements_count": 12,
    "has_external_feed": false,
    "mapped_placements_count": 18,
    "video": false,
    "display": false,
    "mobile": false,
    "postback_conversion_campaign": false,
    "is_new_geo_version": false,
    "has_bluekai_campaign_segment_permissions": false,
    "account": {
        "_id": "51e6b0c1254dee6b4d00016a",
        "account_admin_id": "51e6b11a254dee1a83000285",
        "active": true,
        "name": "Test",
        "self_serve": false,
        "user_count": 1,
        "ad_serving_fee": 0.08,
        "plattform_fee": 0,
        "add_transaction_token_on_redirect": false,
        "account_type": "managed",
        "account_admin": "test@gmail.com",
        "device_lists": []
    }
}
```

This endpoint creates a specific campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:name | The ID of the campaign to retrieve | Yes
:start_at | Date campaign starts | Yes
:end_at| Date campaign end | Yes
:advertiser_name| Name of advertiser| Yes
:paused | Whether a campaign is paused. Boolean field that defaults to false. | No
:placements_goal_type| Metric goal for placements (values: "impressions" , "clearing_cost_budget", or "client_cost_budget") | Yes
:frequency_cap_by| Metric to cap by | Yes
:frequency_cap_value| Value for that cap| No
:postback_conversion_campaign| | No
**Date formats are yyyy-mm-dd
## Update a Campaign

```shell
curl -X PUT -d "attribute1=value1&attribute2=value2" http://portal.rundsp.com/api/v1/campaigns/:campaign_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "51acb4fe1aeaf05969000961",
    "account_id": "51e6b0c1254dee6b4d00016a",
    "ad_units_count": 18,
    "advertiser_id": "51acb45b1aeaf05969000001",
    "avg_cpm": 2.15,
    "campaign_id": 581,
    "campaign_type": "Display",
    "click_conversions": 0,
    "click_conversions_xdev": 0,
    "clicks": 4775,
    "cogs": null,
    "conversion_pixel_ids": [],
    "ctr": 0.051,
    "end_at": "2013-08-04T23:59:59.000Z",
    "external_clicks": 5035,
    "external_impressions": 9092218,
    "video_starts": 0,
    "video_completes": 0,
    "goal_type": "None",
    "goal_value": null,
    "placements_goal_type": "impressions",
    "placements_goal_value": 8883000,
    "placements_goal_target_client_cost": 0,
    "impression_cap": 0,
    "client_cost_cap": 0,
    "frequency_cap_by": "placement",
    "frequency_cap_value": 0,
    "frequency_cap_interval_days": 1,
    "impressions": 9421057,
    "io_budget": null,
    "name": "Florida Keys and Key West Tourism",
    "objective_clicks": 0,
    "objective_cpm": 2.1499999999999995,
    "objective_impressions": 17741556,
    "paused": false,
    "percent_goal_achieved": 99.99,
    "placements_count": 18,
    "real_objective_impressions": 0,
    "reporting_window_clicks": "30",
    "reporting_window_views": "30",
    "revenue": 376462.56,
    "rtb": true,
    "start_at": "2013-06-03T00:00:00.000Z",
    "state": "current",
    "total_data_cost": 0,
    "total_cost": 20255.27255,
    "user_ids": [
        "5196953b254dee0bfa0002aa",
        "51d4550a254dee1ee0000054",
        "51d1e995254dee367f00034d",
        "51d1e8da254dee82e9000236",
        "51d1e8ad254dee82e9000235",
        "51d1e927254dee01600002a4",
        "51d1e946254dee367f00034c",
        "51d1e824254deeb8520002d7",
        "51d1e85c254dee82e9000234",
        "51d1e978254deeb8520002d8",
        "51d1e908254dee82e9000237",
        "51d1e807254dee82e9000233",
        "51d45f76254dee1ee000012b",
        "51d45ffe254dee1ee000012c",
        "51f7d6dd254deede680000bc",
        "51e6b11a254dee1a83000285"
    ],
    "view_conversions": 0,
    "view_conversions_xdev": 0,
    "advertiser": {
        "_id": "51acb45b1aeaf05969000001",
        "adgear_id": 236,
        "name": "Florida Keys and Key West Tourism"
    },
    "conversion_pixel_stats": [],
    "live_placements_count": 12,
    "has_external_feed": false,
    "mapped_placements_count": 18,
    "video": false,
    "display": false,
    "mobile": false,
    "postback_conversion_campaign": false,
    "is_new_geo_version": false,
    "has_bluekai_campaign_segment_permissions": false,
    "account": {
        "_id": "51e6b0c1254dee6b4d00016a",
        "account_admin_id": "51e6b11a254dee1a83000285",
        "active": true,
        "name": "Test",
        "self_serve": false,
        "user_count": 1,
        "ad_serving_fee": 0.08,
        "plattform_fee": 0,
        "add_transaction_token_on_redirect": false,
        "account_type": "managed",
        "account_admin": "test@gmail.com",
        "device_lists": []
    }
}
```

This endpoint updates a specific campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`PUT http://portal.rundsp.com/api/v1/campaigns/:campaign_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:name | The ID of the campaign to retrieve | Yes
:start_at | Date campaign starts | Yes
:end_at| Date campaign end | Yes
:advertiser_name| Name of advertiser| Yes
:placements_goal_type| Metric goal for placements | Yes
:frequency_cap_by| Metric to cap by | Yes
:frequency_cap_value| Value for that cap| No
:postback_conversion_campaign| | No
:rtb (default = true in controller)| |
from_form (default = true in controller)| |
:created_in_portal(default = false in controller)| |
**Date formats are yyyy-mm-dd

**Placements Goal Type values: "impressions" , "clearing_cost_budget", "client_cost_budget"
## Get Campaign Interval Data 

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/:interval/:start_date/:end_date -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "time": "2012-05-04T00:00:00Z",
    "unix_time": 1336089600,
    "cost": 0,
    "imp": 0,
    "e_imp": 0,
    "cli": 0,
    "e_cli": 0,
    "cli_con": 0,
    "imp_con": 0,
    "cli_con_xdp": 0,
    "imp_con_xdp": 0,
    "vas_sta": 0,
    "vas_fir": 0,
    "vas_mid": 0,
    "vas_thi": 0,
    "vas_com": 0,
    "vas_ful": 0,
    "vas_pau": 0,
    "vas_res": 0,
    "vas_rew": 0,
    "vas_mut": 0,
    "vas_unm": 0,
    "vas_err": 0
}
```

This endpoint retrieves interval data about a specific campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/:interval/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id| The ID of the campaign to retrieve | Yes
:interval | Time interval at which to show data| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Interval values are: hours, days, weeks, and months

**Date formats are: yyyy-mm-dd-hh (hh values are in the range 00-24)


## Get Category Specific Data 

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/:category/:start_date/:end_date -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "avg_fre": 0,
    "e_imp": 0,
    "e_cli": 0,
    "e_cost": 0,
    "cli_con": 0,
    "imp_con": 0,
    "cli_con_xdp": 0,
    "imp_con_xdp": 0,
    "cost": 16233.430950000004,
    "data_cost": 0,
    "device": "Windows",
    "impressions": 7550433,
    "clicks": 3536,
    "reach": 0,
    "ctr": 0.00046831751238637573,
    "e_ctr": 0,
    "imp_con_rate": 0,
    "cli_con_rate": 0,
    "imp_con_rate_xdp": 0,
    "cli_con_rate_xdp": 0,
    "con_rate": 0,
    "con_rate_xdp": 0,
    "placement": ""
}
```

This endpoint retrieves category specific data about a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/:category/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:category | Type of data to filter by| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Category values are ad_formats, campaign, conversions, devices, exchanges, placements, segments, and referers.


**Date formats are: yyyy-mm-dd-hh (hh values are in the range 00-24)

# Placements

## Get Placement Specific Data 

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_category/:start_date/:end_date -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "avg_fre": 0,
    "e_imp": 0,
    "e_cli": 0,
    "e_cost": 0,
    "cli_con": 0,
    "imp_con": 0,
    "cli_con_xdp": 0,
    "imp_con_xdp": 0,
    "cost": 737.9165499999998,
    "data_cost": 0,
    "placement": "(0027)4581669-5 Demo: A35-64 with HHI > 100k (Marathon) - 728x90 / Run Of Site (ROS)",
    "exchange": "rubicon",
    "impressions": 343217,
    "clicks": 288,
    "reach": 0,
    "ctr": 0.0008391192743949163,
    "e_ctr": 0,
    "imp_con_rate": 0,
    "cli_con_rate": 0,
    "imp_con_rate_xdp": 0,
    "cli_con_rate_xdp": 0,
    "con_rate": 0,
    "con_rate_xdp": 0
}
```

This endpoint retrieves placement specific data about a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_category/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_category | Type of placement category to filter by| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Placement category values are: segments, referers and exchanges.

**Date formats are: yyyy-mm-dd-hh (hh values are in the range 00-24)

## Get all placements for a campaign

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "536144f25472656100070000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001977",
    "ad_unit_ids": [],
    "adm_tag_type": "pscript",
    "avg_cpm": 0,
    "campaign_id": "51e41a5a254dee7d0e00009d",
    "click_conversions": 0,
    "clicks": 0,
    "ctr": 0,
    "delivery_type": "Normal",
    "external_clicks": 0,
    "external_impressions": 0,
    "external_mapping": "",
    "failed_to_sync_at": null,
    "failures": [],
    "goal_type": "impressions",
    "goal_value": 1000000,
    "goal_target_client_cost": 0,
    "impressions": 0,
    "name": "Test Placement",
    "noscript_ad_unit_id": null,
    "placement_id": 43070,
    "placement_objective": {
        "_id": "536144f25472656100080000",
        "charging_amount": 2,
        "end_at": "2013-07-16T00:00:00.000Z",
        "remote_id": 220768,
        "start_at": "2013-07-15T00:00:00.000Z"
    },
    "remote_campaign_id": null,
    "rtb": true,
    "state": "pending",
    "tactics": [],
    "tag": null,
    "tag_type": null,
    "total_cost": 0,
    "view_conversions": 0,
    "cpa_goal": 2,
    "sitelist_type": "off",
    "sitelist_ids": [],
    "portal_updated_at": "2014-04-30T18:46:10+00:00",
    "video_formats": [],
    "video_sizes": [],
    "language_country_ids": [],
    "append_extra_metadata_to_clicktracker": false,
    "is_baselined": 0,
    "vast_url": null,
    "has_companion_ad_unit": false
}
```

This endpoint retrieves all placements for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes


## Create a placement

```shell
curl -X POST -d "attribute1=value1&attribute2=value2" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "536144f25472656100070000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001977",
    "ad_unit_ids": [],
    "adm_tag_type": "pscript",
    "avg_cpm": 0,
    "campaign_id": "51e41a5a254dee7d0e00009d",
    "click_conversions": 0,
    "clicks": 0,
    "ctr": 0,
    "delivery_type": "Normal",
    "external_clicks": 0,
    "external_impressions": 0,
    "external_mapping": "",
    "failed_to_sync_at": null,
    "failures": [],
    "goal_type": "impressions",
    "goal_value": 1000000,
    "goal_target_client_cost": 0,
    "impressions": 0,
    "name": "Test Placement",
    "noscript_ad_unit_id": null,
    "placement_id": 43070,
    "placement_objective": {
        "_id": "536144f25472656100080000",
        "charging_amount": 2,
        "end_at": "2013-07-16T00:00:00.000Z",
        "remote_id": 220768,
        "start_at": "2013-07-15T00:00:00.000Z"
    },
    "remote_campaign_id": null,
    "rtb": true,
    "state": "pending",
    "tactics": [],
    "tag": null,
    "tag_type": null,
    "total_cost": 0,
    "view_conversions": 0,
    "cpa_goal": 2,
    "sitelist_type": "off",
    "sitelist_ids": [],
    "portal_updated_at": "2014-04-30T18:46:10+00:00",
    "video_formats": [],
    "video_sizes": [],
    "language_country_ids": [],
    "append_extra_metadata_to_clicktracker": false,
    "is_baselined": 0,
    "vast_url": null,
    "has_companion_ad_unit": false
}
```

This endpoint creates a placement for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_id | The ID of the placement to update | Yes

### Placement Parameters

Parameter | Description | Parameter Type | Required
--------- | ----------- | -------- | --------
:name | The name of the placement | String|Yes
:sitelist_type | Type of Sitelist to run ads on (Off, Whitelist, Blacklist) | String|Yes
:delivery_type | (Normal, Witness) | String|Yes
:adm_tag_type | ("conversion", "conversion_pixel", "conversion_pixel_ssl") | String|Yes
:ad_format_id | Choose an ad format for this placement (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_ad_formats -H 'Authorization: Token token="e9b65078414d71f5516907014e5236fafb8419fa29e625e67b1b24f08a5a9abb"')| String|Yes
:state | State of placement ("active", "pending", "failed") | String|Yes
:goal_type | ("impressions", "clearing_cost_budget", "client_cost_budget") |String |Yes
:goal_value | Number of impressions or  dollar amount | String|Yes if goal_type is "impressions"
:goal_target_clearing_cost | Only applies when campaign is pacing off clearing cost|String | Yes if goal_type is "clearing_cost_budget"
:goal_target_client_cost | Only applies when campaign is pacing off client cost| String| Yes if goal_type is "client_cost_budget"
:cpa_goal | CPA Goal advertiser is trying to hit. | String|Yes
:rtb_setting | Hash with attributes below related to placement real-time bidding settings|Hash| No
:price | Maximum bid price.|String| No 
:live | Whether campaign is live. Defaults to false.|Boolean| No
:category_id | Category of the ad unit, ie Business, Healthcase, Retail.|String| No 
:catch_up_type | Pace either ASAP (deliver hourly impressions as quickly as possible) or Spread Evenly (deliver consistently throughout the hour) or None|String| No 
:auto_exchange_weights | Allow RUN's algorithm to determine which exchanges to run on|Boolean| No 
:exchange_weights | Manually select the exchanges to run on. Hash with exchanges as keys and weight (distribution) as values. Exchanges are: Nexage, OpenX, mopub, rubicon, adx, spotx, liverail, brx |Hash| No 
:frequency_cap | Turn Frequency Cap On/Off|Boolean| No 
:frequency_cap_value | Set desired frequency per interval|String| No 
:frequency_cap_interval_days | Choose an interval in days|String| No 
:deal_id | Activate Deal ID|Boolean| No 
:deal_id_value | Input the ID for the Deal|String| No 
:serve_300x50_in_320x50 | Also run 300x50 sized units in 320x50 sized ad slots|Boolean| No 
:domain |Advertiser domain, ie www.mcdonalds.com |String| No 
:ad_type_id | Iframe, JavaScript, XHTML banner or XHTML text|String| No 
:creative_attribute_id |Declare any important attributes of your tag (expandable, click to play, etc.) |String| No 
:mraid_has_video |Include if running an MRAID tag that plays a video ad |Boolean| No 
:video_types |Declare what kind of video files are part of the tag (MP4, FLV, etc) |String| No 
:video_attributes |Declare auto-play, click-to-play, etc. |String| No 
:isps | Choose a whitelist of ISPs to target|String| No 
:isp | |String| No 
:gender | Target Males or Females Only: "Any", "M", "F" |String| No 
:only_buy_inventory_with_lat_lon |Only buy mobile inventory when GPS coordinates are passed |Boolean| No 
:only_buy_known_ip |Only buy inventory when IP address is "known" (not unclassified) |Boolean| No 
:geo_type |Choose the dimension of your geo-target (country, DMA, ZIP, etc.) |String| No 
:country | Target by Country (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_countries -H 'Authorization: Token token="your_auth_token"')|String| No 
:geo_zips |Target by ZIP Code (Format is comma-separated string) |String| No 
:region |Target by State/Region (more info: curl -X GET -d "name={STATE/REGION}" http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_regions -H 'Authorization: Token token="your_auth_token"') |String| No 
:city | Target by City|String| No 
:dma_ids |Target by DMA (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_dmas -H 'Authorization: Token token="your_auth_token"') |String| No 
:geo_points_radii_csv |Target by Lat/Long Coordinate (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_geo_points -H 'Authorization: Token token="your_auth_token"') |String| No 
:video_min_width | Choose minimum width of video player |String| No 
:video_adtypes | Choose "Interstitial", "In-Banner", or "In-Stream" |String| No 
:only_buy_volume_on | Target video players with volume turned on |Boolean| No 
:tld_wlist | Target top level domains ie .biz or .info sites |String| No 
:only_buy_transparent_inventory | Only buy inventory when the domain is passed transparently|Boolean| No 
:only_buy_clear_text | Only buy in-app inventory when the device ID is passed in clear text format|Boolean| No 
:inventory_type | Choose in-app, web only, or both (defaults to both) ["Web and in-app", ""], ["Web only", "site"], ["In-app only", "app"] |String| No 
:ad_position | Choose above the fold or below the fold or both ["Any position", ""], ["Above the fold only", "above"], ["Below the fold only", "below"] |String| No 
:category_ids |Target by IAB Category (Contextual Targeting) |String| No 
:ctr_optimize | Turn the CTR Algorithm On/Off (must have a baseline of information first) |Boolean| No 
:device_targeting | Target specific channels Desktop, Mobile, All|String| No 
:device_makes | Target specfic device makers only (ie Apple - more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_device_makes -H 'Authorization: Token token="your_auth_token"')|String| No 
:device_models | Target specific device models only (ie iPhone - more info: curl -X GET -d "name=Device Model" http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_device_models -H 'Authorization: Token token="your_auth_token"')|String| No 
:segment_ids | Target a third party data segment |String| No 
:os | Target specific operating systems only (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_os -H 'Authorization: Token token="your_auth_token"') |String| No 
:age | Target users of certain ages only |String| No 
:day_parting | Only buy media within a certain window during the day or on specific days|Array| No
:placement_objective |Pace to Impressions, Client Cost, or Clearing Cost|String| No
:start_at | Start Date of Placement |String| Yes
:end_at | End Date of Placement|String| Yes
:charging_amount |Client Cost (CPM Client is paying you) | String|No
:sitelist_type |Whitelist or Blacklist|String| No
:sitelist_ids ||String| No
:language_country_ids | Target devices with specific languages set|String| No
:retargeting_pixel_segment_ids |Target a specific Retargeting pool|String| No
## Update a placement

```shell
curl -X PUT -d "attribute1=value1&attribute2=value2" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "536144f25472656100070000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001977",
    "ad_unit_ids": [],
    "adm_tag_type": "pscript",
    "avg_cpm": 0,
    "campaign_id": "51e41a5a254dee7d0e00009d",
    "click_conversions": 0,
    "clicks": 0,
    "ctr": 0,
    "delivery_type": "Normal",
    "external_clicks": 0,
    "external_impressions": 0,
    "external_mapping": "",
    "failed_to_sync_at": null,
    "failures": [],
    "goal_type": "impressions",
    "goal_value": 1000000,
    "goal_target_client_cost": 0,
    "impressions": 0,
    "name": "Test Placement",
    "noscript_ad_unit_id": null,
    "placement_id": 43070,
    "placement_objective": {
        "_id": "536144f25472656100080000",
        "charging_amount": 2,
        "end_at": "2013-07-16T00:00:00.000Z",
        "remote_id": 220768,
        "start_at": "2013-07-15T00:00:00.000Z"
    },
    "remote_campaign_id": null,
    "rtb": true,
    "state": "pending",
    "tactics": [],
    "tag": null,
    "tag_type": null,
    "total_cost": 0,
    "view_conversions": 0,
    "cpa_goal": 2,
    "sitelist_type": "off",
    "sitelist_ids": [],
    "portal_updated_at": "2014-04-30T18:46:10+00:00",
    "video_formats": [],
    "video_sizes": [],
    "language_country_ids": [],
    "append_extra_metadata_to_clicktracker": false,
    "is_baselined": 0,
    "vast_url": null,
    "has_companion_ad_unit": false
}
```

This endpoint updates a placement.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`PUT http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_id | The ID of the placement to update | Yes

### Placement Parameters

Parameter | Description | Parameter Type | Required
--------- | ----------- | -------- | --------
:name | The name of the placement | String|Yes
:sitelist_type | Type of Sitelist to run ads on (Off, Whitelist, Blacklist) | String|Yes
:delivery_type | (Normal, Witness) | String|Yes
:adm_tag_type | ("conversion", "conversion_pixel", "conversion_pixel_ssl") | String|Yes
:ad_format_id | Choose an ad format for this placement (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_ad_formats -H 'Authorization: Token token="e9b65078414d71f5516907014e5236fafb8419fa29e625e67b1b24f08a5a9abb"')| String|Yes
:state | State of placement ("active", "pending", "failed") | String|Yes
:goal_type | ("impressions", "clearing_cost_budget", "client_cost_budget") |String |Yes
:goal_value | Number of impressions or  dollar amount | String|Yes if goal_type is "impressions"
:goal_target_clearing_cost | Only applies when campaign is pacing off clearing cost|String | Yes if goal_type is "clearing_cost_budget"
:goal_target_client_cost | Only applies when campaign is pacing off client cost| String| Yes if goal_type is "client_cost_budget"
:cpa_goal | CPA Goal advertiser is trying to hit. | String|Yes
:rtb_setting | Hash with attributes below related to placement real-time bidding settings|Hash| No
:price | Maximum bid price.|String| No 
:live | Whether campaign is live. Defaults to false.|Boolean| No
:category_id | Category of the ad unit, ie Business, Healthcase, Retail.|String| No 
:catch_up_type | Pace either ASAP (deliver hourly impressions as quickly as possible) or Spread Evenly (deliver consistently throughout the hour) or None|String| No 
:auto_exchange_weights | Allow RUN's algorithm to determine which exchanges to run on|Boolean| No 
:exchange_weights | Manually select the exchanges to run on. Hash with exchanges as keys and weight (distribution) as values. Exchanges are: Nexage, OpenX, mopub, rubicon, adx, spotx, liverail, brx |Hash| No 
:frequency_cap | Turn Frequency Cap On/Off|Boolean| No 
:frequency_cap_value | Set desired frequency per interval|String| No 
:frequency_cap_interval_days | Choose an interval in days|String| No 
:deal_id | Activate Deal ID|Boolean| No 
:deal_id_value | Input the ID for the Deal|String| No 
:serve_300x50_in_320x50 | Also run 300x50 sized units in 320x50 sized ad slots|Boolean| No 
:domain |Advertiser domain, ie www.mcdonalds.com |String| No 
:ad_type_id | Iframe, JavaScript, XHTML banner or XHTML text|String| No 
:creative_attribute_id |Declare any important attributes of your tag (expandable, click to play, etc.) |String| No 
:mraid_has_video |Include if running an MRAID tag that plays a video ad |Boolean| No 
:video_types |Declare what kind of video files are part of the tag (MP4, FLV, etc) |String| No 
:video_attributes |Declare auto-play, click-to-play, etc. |String| No 
:isps | Choose a whitelist of ISPs to target|String| No 
:isp | |String| No 
:gender | Target Males or Females Only: "Any", "M", "F" |String| No 
:only_buy_inventory_with_lat_lon |Only buy mobile inventory when GPS coordinates are passed |Boolean| No 
:only_buy_known_ip |Only buy inventory when IP address is "known" (not unclassified) |Boolean| No 
:geo_type |Choose the dimension of your geo-target (country, DMA, ZIP, etc.) |String| No 
:country | Target by Country (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_countries -H 'Authorization: Token token="your_auth_token"')|String| No 
:geo_zips |Target by ZIP Code (Format is comma-separated string) |String| No 
:region |Target by State/Region (more info: curl -X GET -d "name={STATE/REGION}" http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_regions -H 'Authorization: Token token="your_auth_token"') |String| No 
:city | Target by City|String| No 
:dma_ids |Target by DMA (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_dmas -H 'Authorization: Token token="your_auth_token"') |String| No 
:geo_points_radii_csv |Target by Lat/Long Coordinate (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_geo_points -H 'Authorization: Token token="your_auth_token"') |String| No 
:video_min_width | Choose minimum width of video player |String| No 
:video_adtypes | Choose "Interstitial", "In-Banner", or "In-Stream" |String| No 
:only_buy_volume_on | Target video players with volume turned on |Boolean| No 
:tld_wlist | Target top level domains ie .biz or .info sites |String| No 
:only_buy_transparent_inventory | Only buy inventory when the domain is passed transparently|Boolean| No 
:only_buy_clear_text | Only buy in-app inventory when the device ID is passed in clear text format|Boolean| No 
:inventory_type | Choose in-app, web only, or both (defaults to both) ["Web and in-app", ""], ["Web only", "site"], ["In-app only", "app"] |String| No 
:ad_position | Choose above the fold or below the fold or both ["Any position", ""], ["Above the fold only", "above"], ["Below the fold only", "below"] |String| No 
:category_ids |Target by IAB Category (Contextual Targeting) |String| No 
:ctr_optimize | Turn the CTR Algorithm On/Off (must have a baseline of information first) |Boolean| No 
:device_targeting | Target specific channels Desktop, Mobile, All|String| No 
:device_makes | Target specfic device makers only (ie Apple - more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_device_makes -H 'Authorization: Token token="your_auth_token"')|String| No 
:device_models | Target specific device models only (ie iPhone - more info: curl -X GET -d "name=Device Model" http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_device_models -H 'Authorization: Token token="your_auth_token"')|String| No 
:segment_ids | Target a third party data segment |String| No 
:os | Target specific operating systems only (more info: curl http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_os -H 'Authorization: Token token="your_auth_token"') |String| No 
:age | Target users of certain ages only |String| No 
:day_parting | Only buy media within a certain window during the day or on specific days|Array| No
:placement_objective |Pace to Impressions, Client Cost, or Clearing Cost|String| No
:start_at | Start Date of Placement |String| Yes
:end_at | End Date of Placement|String| Yes
:charging_amount |Client Cost (CPM Client is paying you) | String|No
:sitelist_type |Whitelist or Blacklist|String| No
:sitelist_ids ||String| No
:language_country_ids | Target devices with specific languages set|String| No
:retargeting_pixel_segment_ids |Target a specific Retargeting pool|String| No

## Get a specific placement for a campaign

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "536144f25472656100070000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001977",
    "ad_unit_ids": [],
    "adm_tag_type": "pscript",
    "avg_cpm": 0,
    "campaign_id": "51e41a5a254dee7d0e00009d",
    "click_conversions": 0,
    "clicks": 0,
    "ctr": 0,
    "delivery_type": "Normal",
    "external_clicks": 0,
    "external_impressions": 0,
    "external_mapping": "",
    "failed_to_sync_at": null,
    "failures": [],
    "goal_type": "impressions",
    "goal_value": 1000000,
    "goal_target_client_cost": 0,
    "impressions": 0,
    "name": "Test Placement",
    "noscript_ad_unit_id": null,
    "placement_id": 43070,
    "placement_objective": {
        "_id": "536144f25472656100080000",
        "charging_amount": 2,
        "end_at": "2013-07-16T00:00:00.000Z",
        "remote_id": 220768,
        "start_at": "2013-07-15T00:00:00.000Z"
    },
    "remote_campaign_id": null,
    "rtb": true,
    "state": "pending",
    "tactics": [],
    "tag": null,
    "tag_type": null,
    "total_cost": 0,
    "view_conversions": 0,
    "cpa_goal": 2,
    "sitelist_type": "off",
    "sitelist_ids": [],
    "portal_updated_at": "2014-04-30T18:46:10+00:00",
    "video_formats": [],
    "video_sizes": [],
    "language_country_ids": [],
    "append_extra_metadata_to_clicktracker": false,
    "is_baselined": 0,
    "vast_url": null,
    "has_companion_ad_unit": false
}
```

This endpoint retrieves a specific placement for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_id | The ID of the placement to retrieve| Yes



## Get the top 10 placements by click-through rate for a campaign

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/top/ctr -H 'Authorization: Token token="your_auth_token"'
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

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/top/ctr`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes

# Ad Units

## Get all ad units for a campaign

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "53cebaee4a6f6813d7160000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001980",
    "ad_unit_clicks": [],
    "adunit_id": null,
    "campaign_id": "51e6b51a254deef6020001f5",
    "name": "TTest Ad Unit Updated",
    "placement_ids": [],
    "template_type": "Image",
    "ad_format": {
        "_id": "50c8cbb91aeaf00526001980",
        "full_name": "MMA - XX-Large Banner - (320x50)",
        "height": 50,
        "live": true,
        "name": "XX-Large Banner",
        "remote_format_id": 58,
        "run_name": "MMA - XX-Large Banner - (320x50)",
        "width": 320
    },
    "third_party_vast_url": null,
    "duration": null,
    "third_party_vast": true,
    "mp4_ad_unit_file_url": null,
    "flv_ad_unit_file_url": null,
    "webm_ad_unit_file_url": null,
    "flash_version": "6",
    "vast_companion": false,
    "companion_ad_units": [],
    "companion_ad_unit_ids": [],
    "html_code": null,
    "javascript_code": null,
    "adunit_click_url": "http://www.google.com",
    "adunit_impression_url": null,
    "placement_count": 0,
    "adx_vendors": []
}
```

This endpoint retrieves all ad units belonging to a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes



## Get a specific ad unit for a campaign

```shell
curl http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "53cebaee4a6f6813d7160000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001980",
    "ad_unit_clicks": [],
    "adunit_id": null,
    "campaign_id": "51e6b51a254deef6020001f5",
    "name": "TTest Ad Unit Updated",
    "placement_ids": [],
    "template_type": "Image",
    "ad_format": {
        "_id": "50c8cbb91aeaf00526001980",
        "full_name": "MMA - XX-Large Banner - (320x50)",
        "height": 50,
        "live": true,
        "name": "XX-Large Banner",
        "remote_format_id": 58,
        "run_name": "MMA - XX-Large Banner - (320x50)",
        "width": 320
    },
    "third_party_vast_url": null,
    "duration": null,
    "third_party_vast": true,
    "mp4_ad_unit_file_url": null,
    "flv_ad_unit_file_url": null,
    "webm_ad_unit_file_url": null,
    "flash_version": "6",
    "vast_companion": false,
    "companion_ad_units": [],
    "companion_ad_unit_ids": [],
    "html_code": null,
    "javascript_code": null,
    "adunit_click_url": "http://www.google.com",
    "adunit_impression_url": null,
    "placement_count": 0,
    "adx_vendors": []
}
```

This endpoint retrieves a specific ad unit for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:ad_unit_id | The ID of the ad unit to retrieve| Yes

## Upload an image file for an ad unit

```shell
curl -F "fileupload=@file_name.extension" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/file_upload -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{"ad_unit_upload_id":"53dbafd84a6f68291a2e0000"}
```

This endpoint uploads an image.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/file_upload`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
*Note: The file parameter name must be 'fileupload' and only one file can be uploaded. Valid extensions are: '.png', '.jpg', '.jpeg', '.gif', '.swf'
## Upload a video file for an ad unit

```shell
curl -F "fileupload_webm=@file_name.webm" -F "fileupload_mp4=@file_name.mp4" -F "fileupload_flv=@file_name.flv" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/video_upload -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{"ad_unit_upload_id":"53dbafd84a6f68291a2e0000"}
```

This endpoint uploads a video file.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/video_upload`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
*Note: The file parameter name must be 'fileupload_{FILE_EXTENSION}' and up to three files can be uploaded simultaneously. Valid file extensions are: '.flv', '.mp4', '.webm'
## Create an ad unit for a campaign

```shell
curl -X POST -d "attribute1=value1&attribute2=value2" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "53cebaee4a6f6813d7160000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001980",
    "ad_unit_clicks": [],
    "adunit_id": null,
    "campaign_id": "51e6b51a254deef6020001f5",
    "name": "TTest Ad Unit Updated",
    "placement_ids": [],
    "template_type": "Image",
    "ad_format": {
        "_id": "50c8cbb91aeaf00526001980",
        "full_name": "MMA - XX-Large Banner - (320x50)",
        "height": 50,
        "live": true,
        "name": "XX-Large Banner",
        "remote_format_id": 58,
        "run_name": "MMA - XX-Large Banner - (320x50)",
        "width": 320
    },
    "third_party_vast_url": null,
    "duration": null,
    "third_party_vast": true,
    "mp4_ad_unit_file_url": null,
    "flv_ad_unit_file_url": null,
    "webm_ad_unit_file_url": null,
    "flash_version": "6",
    "vast_companion": false,
    "companion_ad_units": [],
    "companion_ad_unit_ids": [],
    "html_code": null,
    "javascript_code": null,
    "adunit_click_url": "http://www.google.com",
    "adunit_impression_url": null,
    "placement_count": 0,
    "adx_vendors": []
}
```

This endpoint creates an ad unit for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:name | The name of the ad unit | Yes
:ad_format | Dimensions of ad | Yes
:adunit_click_url | Where user is directed upon click | Yes
:template_type | | Yes
:adunit_impression_url | | No
:vast_companion | | No
:companion_ad_unit_ids | | Yes if vast_companion
:third_party_tag | | Conditional (Yes if template_type is "Third-Party")
:flash_version | | Conditional (Yes if template_type is "Flash")
:html_code | | Conditional (Yes if template_type is "HTML")
:javascript_code | | Conditional (Yes if template_type is "Javscript")
:ad_unit_upload_id | This value is returned when a file is uploaded. It associates the upload with the ad unit.| Conditional (Yes if you uploaded a file - template_type is "Image", "Flash", "VAST", or "Custom XML" )
:third_party_vast_url | | Conditional (Yes if template_type is VAST 2.0 and using a third party VAST url)
:duration | Select a 15 or 30 second video ad duration | Conditional (Yes if video ad)
**Template types can be one of the following:  "Flash", "HTML", "Image", "Witness", "Third-Party", "VAST 1 Wrapper", "VAST 2 Wrapper",
    "Custom XML", "VAST 2 In-Stream Video", "Javascript"

## Update an ad unit for a campaign

```shell
curl -X PUT -d "attribute1=value1&attribute2=value2" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{
    "_id": "53cebaee4a6f6813d7160000",
    "aasm_state": "pending",
    "ad_format_id": "50c8cbb91aeaf00526001980",
    "ad_unit_clicks": [],
    "adunit_id": null,
    "campaign_id": "51e6b51a254deef6020001f5",
    "name": "TTest Ad Unit Updated",
    "placement_ids": [],
    "template_type": "Image",
    "ad_format": {
        "_id": "50c8cbb91aeaf00526001980",
        "full_name": "MMA - XX-Large Banner - (320x50)",
        "height": 50,
        "live": true,
        "name": "XX-Large Banner",
        "remote_format_id": 58,
        "run_name": "MMA - XX-Large Banner - (320x50)",
        "width": 320
    },
    "third_party_vast_url": null,
    "duration": null,
    "third_party_vast": true,
    "mp4_ad_unit_file_url": null,
    "flv_ad_unit_file_url": null,
    "webm_ad_unit_file_url": null,
    "flash_version": "6",
    "vast_companion": false,
    "companion_ad_units": [],
    "companion_ad_unit_ids": [],
    "html_code": null,
    "javascript_code": null,
    "adunit_click_url": "http://www.google.com",
    "adunit_impression_url": null,
    "placement_count": 0,
    "adx_vendors": []
}
```

This endpoint updates an ad unit for a campaign.

<aside class="warning">If you're not using an administrator API key, note that some campaigns will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:name | The name of the ad unit | Yes
:ad_format | Dimensions of ad | Yes
:adunit_click_url | Where user is directed upon click | Yes
:template_type | | Yes
:adunit_impression_url | | No
:vast_companion | | No
:companion_ad_unit_ids | | Yes if vast_companion
:third_party_tag | | Conditional (Yes if template_type is "Third-Party")
:flash_version | | Conditional (Yes if template_type is "Flash")
:html_code | | Conditional (Yes if template_type is "HTML")
:javascript_code | | Conditional (Yes if template_type is "Javscript")
:ad_unit_upload_id | This value is returned when a file is uploaded. It ties the upload to the ad unit.| Conditional (Yes if you uploaded a file - template_type is "Image", "Flash", "VAST", or "Custom XML" )
:third_party_vast_url | | Conditional (Yes if template_type is VAST 2.0 and using a third party VAST url)
:duration | Select a 15 or 30 second video ad duration | Conditional (Yes if video ad)
**Template types can be one of the following:  "Flash", "HTML", "Image", "Witness", "Third-Party", "VAST 1 Wrapper", "VAST 2 Wrapper",
    "Custom XML", "VAST 2 In-Stream Video", "Javascript"


