
---
title: API Reference

language_tabs:
  - shell

includes:
  - errors

search: true
---

# Introduction

Welcome to the RUN Campaign Management API. You can use this API to gain access to campaign details and analytics.

We have language bindings in Shell. You can view code examples in the dark area to the right.

# Authentication

> To authorize, use this format:

```
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

```
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

## Get a Specific Campaign

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID) | Yes

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


### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:name | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
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


### HTTP Request

`PUT http://portal.rundsp.com/api/v1/campaigns/:campaign_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:name | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
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

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/:interval/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id| The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
:interval | Time interval at which to show data| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Interval values are: hours, days, weeks, and months

**Date formats are: yyyy-mm-dd-hh (hh values are in the range 00-24)


## Get Category Specific Data 

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/:category/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID) | Yes
:category | Type of data to filter by| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Category values are ad_formats, campaign, conversions, devices, exchanges, placements, segments, and referers.


**Date formats are: yyyy-mm-dd-hh (hh values are in the range 00-24)

# Placements

## Get all placements for a campaign

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID) | Yes


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


### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
:placement_id | The ID of the placement to update (24 alphanumeric character ID)| Yes

### Placement Parameters (Refer to the Placement Attribute Values section for valid values)

Parameter | Description | Parameter Type | Required
--------- | ----------- | -------- | --------
:name | The name of the placement | String|Yes
:sitelist_type | Type of Sitelist to run ads on (Off, Whitelist, Blacklist) | String|Yes
:delivery_type | (Normal, Witness) | String|Yes
:adm_tag_type | Adm Tag Type ["pscript", "pscript_backup", "pnoscript"] | String|No
:ad_format_id | Choose an ad format for this placement | String|Yes
:state | State of placement ("active", "pending", "failed") | String|Yes
:goal_type | ("impressions", "clearing_cost_budget", "client_cost_budget") |String |Yes
:goal_value | Number of impressions or  dollar amount | String|Yes if goal_type is "impressions"
:goal_target_clearing_cost | Only applies when campaign is pacing off clearing cost|String | Yes if goal_type is "clearing_cost_budget"
:goal_target_client_cost | Only applies when campaign is pacing off client cost| String| Yes if goal_type is "client_cost_budget"
:cpa_goal | CPA Goal advertiser is trying to hit. | String|Yes
:ad_unit_ids | Ad Units associated with a placements | Array | Yes
:append_extra_metadata_to_clicktracker | Append device ID to click tracker | Boolean | No
:rtb_setting | Hash with keys/values below related to a placement's real-time bidding settings|Hash| No
:rtb_setting.adm | Adm Tag | String | No
:rtb_setting.price | Maximum bid price.|String| No 
:rtb_setting.live | Whether campaign is live. Defaults to false.|Boolean| No
:rtb_setting.category_id | Category of the ad unit |String| No 
:rtb_setting.catch_up_type | Pace either 'Asap' (deliver hourly impressions as quickly as possible) or 'Spread Evenly' (deliver consistently throughout the hour) or 'None' |String| No 
:rtb_setting.auto_exchange_weights | Allow RUN's algorithm to determine which exchanges to run ads on. If false, must specify exchange weights.|Boolean| No 
:rtb_setting.exchange_weights | Manually select the exchanges and corresponding weights to run ads on. Required if auto_exchange_weights is set to false.|Hash| No 
:rtb_setting.frequency_cap | Turn Frequency Cap On/Off|Boolean| No 
:rtb_setting.frequency_cap_value | Set desired frequency per interval|String| No 
:rtb_setting.frequency_cap_interval_days | Choose an interval in days|String| No 
:rtb_setting.deal_id | Activate Deal ID|Boolean| No 
:rtb_setting.deal_id_value | Input the ID for the Deal|String| No 
:rtb_setting.serve_300x50_in_320x50 | Also run 300x50 sized units in 320x50 sized ad slots|Boolean| No 
:rtb_setting.domain |Advertiser domain, ie www.mcdonalds.com |String| No 
:rtb_setting.ad_type_id | Ad Type|String| No 
:rtb_setting.creative_attribute_id |Declare any important attributes of your tag (expandable, click to play, etc.) |String| No 
:rtb_setting.mraid_has_video |Include if running an MRAID tag that plays a video ad |Boolean| No 
:rtb_setting.video_types |Declare what kind of video files are part of the tag (MP4, FLV, etc) |String| No 
:rtb_setting.video_start_delays |Declare pre-roll, mid-roll, etc. |String| No 
:rtb_setting.video_playback_methods |Declare auto-play, click-to-play, etc. |String| No 
:rtb_setting.isps | Choose a whitelist of ISPs to target |Array| No 
:rtb_setting.i_url | Image URL | String | No
:rtb_setting.gender | Target Males or Females Only. Values are: "Any", "M", "F" |String| No 
:rtb_setting.only_buy_inventory_with_lat_lon |Only buy mobile inventory when GPS coordinates are passed |Boolean| No 
:rtb_setting.only_buy_known_ip |Only buy inventory when IP address is "known" (not unclassified) |Boolean| No 
:rtb_setting.geo_type |Choose the dimension of your geo-target (country, DMA, ZIP, etc.) |String| No 
:rtb_setting.country | Target by Country |String| No 
:rtb_setting.geo_zips |Target by ZIP Code (Format is comma-separated string) |String| No 
:rtb_setting.region |Target by State/Region |String| No 
:rtb_setting.city | Target by City|String| No
:rtb_setting.dma_ids |Target by DMA |String| No 
:rtb_setting.geo_points_radii_csv |Target by Lat/Long Coordinates  |String| No 
:rtb_setting.video_min_width | Choose minimum width of video player |String| No 
:rtb_setting.video_adtypes | Choose "Interstitial", "In-Banner", or "In-Stream" |String| No 
:rtb_setting.only_buy_volume_on | Target video players with volume turned on |Boolean| No 
:rtb_setting.x_bs_attrs | Blacklist certain categories of content  | Array| No
:rtb_setting.tld_wlist | Target top level domains ie .biz or .info sites |String| No 
:rtb_setting.wlist | Whitelist a specific list of sites |String|No
:rtb_setting.blist | Blacklist a specific list of sites |String|No
:rtb_setting.only_buy_transparent_inventory | Only buy inventory when the domain is passed transparently|Boolean| No 
:rtb_setting.only_buy_clear_text | Only buy in-app inventory when the device ID is passed in clear text format|Boolean| No 
:rtb_setting.inventory_type | Choose in-app, web only, or both (defaults to both) ("site" or "app") |String| No 
:rtb_setting.ad_position | Choose above the fold or below the fold or both ("above" or "below". Both is default.) |String| No 
:rtb_setting.category_ids |Target by IAB Category (Contextual Targeting) |String| No 
:rtb_setting.ctr_optimize | Turn the CTR Algorithm On/Off (must have a baseline of information first) |Boolean| No 
:rtb_setting.device_targeting | Target specific channels:rtb_setting. Desktop, Mobile, All, or Custom|String| No 
:rtb_setting.device_makes | If device_targeting is set to Custom, target specfic device makers only |String| No 
:rtb_setting.device_models | If device_targeting is set to Custom, target specific device models only |String| No 
:rtb_setting.segment_ids | Target a third party data segment|String| No 
:rtb_setting.segments_and | Should be set to true if you want to target the union of all segments in segment_ids. Default is false. | Boolean | No
:rtb_setting.not_segments | Can explicitly exclude specific targeting segments. It's the inverse of segment_ids. | Array | No
:rtb_setting.os | Target specific operating systems only |String| No 
:rtb_setting.age | Target users of certain ages only.|Array| No 
:rtb_setting.day_parting | Only buy media within a certain window during the day or on specific days|Array| No
:rtb_setting.placement_objective |Hash that contains start_at, end_at, and charging_amount| Hash| No
:rtb_setting.start_at | Start Date of Placement |String| Yes
:rtb_setting.end_at | End Date of Placement|String| Yes
:rtb_setting.charging_amount |Client Cost (CPM Client is paying you) | String |No
:rtb_setting.sitelist_type |"Whitelist" or "Blacklist"|String| No
:rtb_setting.sitelist_ids |Ids of previously created sitelists to target|String| No
:rtb_setting.language_country_ids | Target devices with specific languages set |String| No
:rtb_setting.retargeting_pixel_segment_ids |Target a specific Retargeting pool|String| No
:rtb_setting.viewability_select_all | Only target top 75% of impressions most likely to be viewed. Default to false.| Boolean | No
:rtb_setting.viewability | Target top x% of impressions most likely to be viewed.| Array | No

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


### HTTP Request

`PUT http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
:placement_id | The ID of the placement to update (24 alphanumeric character ID)| Yes

### Placement Parameters (Refer to the Placement Attribute Values section for valid values)


Parameter | Description | Parameter Type | Required
--------- | ----------- | -------- | --------
:name | The name of the placement | String|Yes
:sitelist_type | Type of Sitelist to run ads on (Off, Whitelist, Blacklist) | String|Yes
:delivery_type | (Normal, Witness) | String|Yes
:adm_tag_type | Adm Tag Type ["pscript", "pscript_backup", "pnoscript"] | String|No
:ad_format_id | Choose an ad format for this placement | String|Yes
:state | State of placement ("active", "pending", "failed") | String|Yes
:goal_type | ("impressions", "clearing_cost_budget", "client_cost_budget") |String |Yes
:goal_value | Number of impressions or  dollar amount | String|Yes if goal_type is "impressions"
:goal_target_clearing_cost | Only applies when campaign is pacing off clearing cost|String | Yes if goal_type is "clearing_cost_budget"
:goal_target_client_cost | Only applies when campaign is pacing off client cost| String| Yes if goal_type is "client_cost_budget"
:cpa_goal | CPA Goal advertiser is trying to hit. | String|Yes
:ad_unit_ids | Ad Units associated with a placements | Array | Yes
:append_extra_metadata_to_clicktracker | Append device ID to click tracker | Boolean | No
:rtb_setting | Hash with keys/values below related to a placement's real-time bidding settings|Hash| No
:rtb_setting.adm | Adm Tag | String | No
:rtb_setting.price | Maximum bid price.|String| No 
:rtb_setting.live | Whether campaign is live. Defaults to false.|Boolean| No
:rtb_setting.category_id | Category of the ad unit |String| No 
:rtb_setting.catch_up_type | Pace either 'Asap' (deliver hourly impressions as quickly as possible) or 'Spread Evenly' (deliver consistently throughout the hour) or 'None' |String| No 
:rtb_setting.auto_exchange_weights | Allow RUN's algorithm to determine which exchanges to run ads on. If false, must specify exchange weights.|Boolean| No 
:rtb_setting.exchange_weights | Manually select the exchanges and corresponding weights to run ads on. Required if auto_exchange_weights is set to false.|Hash| No 
:rtb_setting.frequency_cap | Turn Frequency Cap On/Off|Boolean| No 
:rtb_setting.frequency_cap_value | Set desired frequency per interval|String| No 
:rtb_setting.frequency_cap_interval_days | Choose an interval in days|String| No 
:rtb_setting.deal_id | Activate Deal ID|Boolean| No 
:rtb_setting.deal_id_value | Input the ID for the Deal|String| No 
:rtb_setting.serve_300x50_in_320x50 | Also run 300x50 sized units in 320x50 sized ad slots|Boolean| No 
:rtb_setting.domain |Advertiser domain, ie www.mcdonalds.com |String| No 
:rtb_setting.ad_type_id | Ad Type|String| No 
:rtb_setting.creative_attribute_id |Declare any important attributes of your tag (expandable, click to play, etc.) |String| No 
:rtb_setting.mraid_has_video |Include if running an MRAID tag that plays a video ad |Boolean| No 
:rtb_setting.video_types |Declare what kind of video files are part of the tag (MP4, FLV, etc) |String| No 
:rtb_setting.video_start_delays |Declare pre-roll, mid-roll, etc. |String| No 
:rtb_setting.video_playback_methods |Declare auto-play, click-to-play, etc. |String| No 
:rtb_setting.isps | Choose a whitelist of ISPs to target |Array| No 
:rtb_setting.i_url | Image URL | String | No
:rtb_setting.gender | Target Males or Females Only. Values are: "Any", "M", "F" |String| No 
:rtb_setting.only_buy_inventory_with_lat_lon |Only buy mobile inventory when GPS coordinates are passed |Boolean| No 
:rtb_setting.only_buy_known_ip |Only buy inventory when IP address is "known" (not unclassified) |Boolean| No 
:rtb_setting.geo_type |Choose the dimension of your geo-target (country, DMA, ZIP, etc.) |String| No 
:rtb_setting.country | Target by Country |String| No 
:rtb_setting.geo_zips |Target by ZIP Code (Format is comma-separated string) |String| No 
:rtb_setting.region |Target by State/Region |String| No 
:rtb_setting.city | Target by City|String| No
:rtb_setting.dma_ids |Target by DMA |String| No 
:rtb_setting.geo_points_radii_csv |Target by Lat/Long Coordinates  |String| No 
:rtb_setting.video_min_width | Choose minimum width of video player |String| No 
:rtb_setting.video_adtypes | Choose "Interstitial", "In-Banner", or "In-Stream" |String| No 
:rtb_setting.only_buy_volume_on | Target video players with volume turned on |Boolean| No 
:rtb_setting.x_bs_attrs | Blacklist certain categories of content  | Array| No
:rtb_setting.tld_wlist | Target top level domains ie .biz or .info sites |String| No 
:rtb_setting.wlist | Whitelist a specific list of sites |String|No
:rtb_setting.blist | Blacklist a specific list of sites |String|No
:rtb_setting.only_buy_transparent_inventory | Only buy inventory when the domain is passed transparently|Boolean| No 
:rtb_setting.only_buy_clear_text | Only buy in-app inventory when the device ID is passed in clear text format|Boolean| No 
:rtb_setting.inventory_type | Choose in-app, web only, or both (defaults to both) ("site" or "app") |String| No 
:rtb_setting.ad_position | Choose above the fold or below the fold or both ("above" or "below". Both is default.) |String| No 
:rtb_setting.category_ids |Target by IAB Category (Contextual Targeting) |String| No 
:rtb_setting.ctr_optimize | Turn the CTR Algorithm On/Off (must have a baseline of information first) |Boolean| No 
:rtb_setting.device_targeting | Target specific channels:rtb_setting. Valid values are: desktop, mobile, phone, tablet, all, custom.|String| No
:rtb_setting.device_makes | If device_targeting is set to Custom, target specfic device makers only |String| No 
:rtb_setting.device_models | If device_targeting is set to Custom, target specific device models only |String| No 
:rtb_setting.segment_ids | Target a third party data segment|String| No 
:rtb_setting.segments_and | Should be set to true if you want to target the union of all segments in segment_ids. Default is false. | Boolean | No
:rtb_setting.not_segments | Can explicitly exclude specific targeting segments. It's the inverse of segment_ids. | Array | No
:rtb_setting.os | Target specific operating systems only |String| No 
:rtb_setting.age | Target users of certain ages only.|Array| No 
:rtb_setting.day_parting | Only buy media within a certain window during the day or on specific days|Array| No
:rtb_setting.placement_objective |Hash that contains start_at, end_at, and charging_amount| Hash| No
:rtb_setting.start_at | Start Date of Placement |String| Yes
:rtb_setting.end_at | End Date of Placement|String| Yes
:rtb_setting.charging_amount |Client Cost (CPM Client is paying you) | String |No
:rtb_setting.sitelist_type |"Whitelist" or "Blacklist"|String| No
:rtb_setting.sitelist_ids |Ids of previously created sitelists to target|String| No
:rtb_setting.language_country_ids | Target devices with specific languages set |String| No
:rtb_setting.retargeting_pixel_segment_ids |Target a specific Retargeting pool|String| No
:rtb_setting.viewability_select_all | Only target top 75% of impressions most likely to be viewed. Default to false.| Boolean | No
:rtb_setting.viewability | Target top x% of impressions most likely to be viewed.| Array | No

## Get a specific placement for a campaign

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
:placement_id | The ID of the placement to retrieve (24 alphanumeric character ID)| Yes

## Get Placement Specific Data 

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_category/:start_date/:end_date`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
:placement_category | Type of placement category to filter by| Yes
:start_date | Start date of query| Yes
:end_date | End date of query| Yes
**Placement category values are: segments, referers and exchanges.

**Date formats are: yyyy-mm-dd-hh (hh values are in the range 00-24)


## Get the top 10 placements by click-through rate for a campaign

```
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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/top/ctr`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes


## Placement Attribute Values

Parameter | Potential Values | Parameter Type | Required
--------- | ----------- | -------- | --------
:adm_tag_type | Adm Tag Type ("pscript", "pscript_backup", "pnoscript") | String|No
:ad_format_id | more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_ad_formats](#) </div>| String|Yes
:rtb_setting.category_id | Category of the ad unit -- more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_categories](#)</div>|String| No 
:rtb_setting.catch_up_type | Pace either 'Asap' (deliver hourly impressions as quickly as possible) or 'Spread Evenly' (deliver consistently throughout the hour) or 'None' |String| No 
:rtb_setting.auto_exchange_weights | Allow RUN's algorithm to determine which exchanges to run ads on. If false, must specify exchange weights.|Boolean| No 
:rtb_setting.exchange_weights | Manually select the exchanges and corresponding weights to run ads on. Required if auto_exchange_weights is set to false -- more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_exchanges_weights](#)</div>|Hash| No 
:rtb_setting.ad_type_id | Ad Type -- more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_ad_type](#)</div>|String| No 
:rtb_setting.creative_attribute_id |Declare any important attributes of your tag (expandable, click to play, etc.) |String| No 
:rtb_setting.mraid_has_video |Include if running an MRAID tag that plays a video ad |Boolean| No 
:rtb_setting.video_types |Declare what kind of video files are part of the tag (MP4, FLV, etc) |String| No 
:rtb_setting.video_start_delays | String of integers. Values are: ["Preroll", "0"], ["Midroll", "-1"], ["Postroll", "-2"] |String| No 
:rtb_setting.video_playback_methods | String of integers. Values are: ["Auto-play sound on", "1"], ["Auto-play sound off", "2"], ["Click-to-play", "3"], ["Mouse-over", "4"] |String| No 
:rtb_setting.isps | Choose a whitelist of ISPs to target -- more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_isps?name={isp_name}](#)</div>|Array| No 
:rtb_setting.geo_type |Choose the dimension of your geo-target (country, DMA, ZIP, etc.) |String| No 
:rtb_setting.country | more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_countries](#)</div>|String| No 
:rtb_setting.region |more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_regions?name={state_name}](#)</div> |String| No 
:rtb_setting.dma_ids |more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_dmas](#)</div> |String| No 
:rtb_setting.geo_points_radii_csv |more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_geo_points](#)</div> |String| No 
:rtb_setting.x_bs_attrs | Blacklist certain categories of content (ie Adult, Alcohol, etc -- more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_blacklist_categories](#)</div> | Array| No
:rtb_setting.category_ids |Target by IAB Category (more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_categories](#)</div>|String| No 
:rtb_setting.device_makes | If device_targeting is set to Custom, target specfic device makers only (ie Apple - more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_device_makes](#)</div>|String| No 
:rtb_setting.device_models | If device_targeting is set to Custom, target specific device models only (ie iPhone - more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_device_models?name={device_model_name}](#)</div>|String| No 
:rtb_setting.segment_ids | Target a third party data segment (more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_segments?name={segment_name}](#)</div><div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/query_segments_by_ids?ids={array_of_segment_ids}](#)</div>|String| No 
:rtb_setting.segments_and | Should be set to true if you want to target the union of all segments in segment_ids. Default is false. | Boolean | No
:rtb_setting.not_segments | Can explicitly exclude specific targeting segments. It's the inverse of segment_ids. (more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_segments?name={segment_name})](#)</div>| Array | No
:rtb_setting.os | Target specific operating systems only (more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_os](#)</div> |String| No 
:rtb_setting.age | Target users of certain ages only. Format should be an array that consists of two integers which represents a range: [24,55] would target ages 24-55|Array| No 
:rtb_setting.day_parting | Only buy media within a certain window during the day or on specific days|Array| No
:rtb_setting.placement_objective |Hash that contains start_at, end_at, and charging_amount| Hash| No
:rtb_setting.sitelist_ids |Ids of Sitelists to target|String| No
:rtb_setting.language_country_ids | Target devices with specific languages set  (more info: <div>[GET http://portal.rundsp.com/api/v1/campaigns/{Campaign_ID}/placements/list_language_countries](#)</div> |String| No
:rtb_setting.viewability | Target top x% of impressions most likely to be viewed. Values are: ["VTOP10", "VTOP20", "VTOP35", "VTOP50", "VTOP75"]| Array | No

> Below is a sample POST request to create a Placement

```json
{  
   "placement"   =>   {  
      "_id"      =>"53bed7a869702d29db120000",
      "campaign_id"      =>"53beca4c69702d4039d90000",
      "aasm_state"      =>"pending",
      "ad_format_id"      =>"50c8cbb91aeaf0052600195d",
      "ad_unit_ids"      =>      [  
         "53e3b47869702d1fface0000",
         "53bed72669702d269e0e0000",
         "53bed71069702d26ae020000"
      ],
      "adm_tag_type"      =>"pscript",
      "avg_clearing_cpm"      =>0,
      "avg_cpm"      =>0,
      "click_conversions"      =>0,
      "clicks"      =>0,
      "ctr"      =>0,
      "delivery_type"      =>"Normal",
      "external_clicks"      =>0,
      "external_impressions"      =>0,
      "external_mapping"      =>"",
      "failed_to_sync_at"      =>nil,
      "failures"      =>nil,
      "goal_type"      =>"impressions",
      "goal_value"      =>"40000",
      "goal_target_clearing_cost"      =>"0.00",
      "goal_target_client_cost"      =>"0.00",
      "impressions"      =>0,
      "name"      =>"Albany,
      GA_Run of Network (Flash)_160x600_2/12/125-2/28/15",
      "noscript_ad_unit_id"      =>nil,
      "placement_id"      =>48138,
      "placement_objective"      =>      {  
         "start_at"         =>"2015-02-12",
         "end_at"         =>"2015-03-01",
         "charging_amount"         =>"2.80"
      },
      "remote_campaign_id"      =>2290,
      "rtb"      =>true,
      "rtb_setting"      =>      {  
         "live"         =>false,
         "price"         =>"2.50",
         "category_id"         =>"50dc659c254dee58e4000003",
         "catch_up_type"         =>"asap",
         "frequency_cap"         =>true,
         "frequency_cap_value"         =>"3",
         "frequency_cap_interval_days"         =>"1",
         "serve_300x50_in_320x50"         =>false,
         "adm"         =>"    <script type=\"text/javascript\" language=\"JavaScript\"> \n      (function()         {  
            \n        ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";   \n        ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;   \n        ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;   \n        ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;             \n        var randomnum = \"__RANDOM_NUMBER__\";              \n        var agref = \"__REFERER__\";    \n        var proto = \"http:            \";     \n        randomnum = String(randomnum); \n        if (window.location.protocol == \"https:            \") proto = \"https:\";   \n        if (randomnum.substring(0,
            2            ) == \"__\") randomnum = String(Math.random());\n        \n        var scr = '<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' + \n          proto + '//d.runadtag.com' + '/impressions/ext/p=' +       '48138' + '.js?AG_R=' + \n          randomnum + '&RUN_XNAME=__XNAME__' + \n          '&RUN_RTBWP=$            {  
               AUCTION_PRICE
            }            ' + \n          '            &RUN_CT_ID=' + \n          (agref === \"\" ? \"\":(\"&AG_REF=\" + agref)) +       \n          '\"></scr' + 'ipt>';\n        \n        document.writeln(scr); \n
         }         )(); \n    </script>\n    \n    <iframe name=\"__bkframe\" height=\"0\" width=\"0\" frameborder=\"0\" src=\"javascript:         void(0)\"></iframe>\n    <script type=\"text/javascript\" src=\"http:         //tags.bkrtx.com/js/bk-coretag.js\"></script>\n    <script type=\"text/javascript\" src=\"http://match.rundsp.com/redirect.js?id=__RUN_DEVICE_OR_COOKIE__&mobile=__RUN_MOBILE__\"></script>\n",
         "iurl"         =>"",
         "ad_choice_provider"         =>"rundsp",
         "ad_choice_position"         =>"top-right",
         "domain"         =>"http://www.choosenissan.com/",
         "ad_type_id"         =>"51b0e4a5254deebd6f000014",
         "creative_attribute_id"         =>"51b0e4a5254deebd6f000001",
         "mraid_has_video"         =>false,
         "video_types"         =>nil,
         "video_playback_methods"         =>         [  
            "1",
            "2",
            "3",
            "4"
         ],
         "video_start_delays"         =>         [  
            "0",
            "-1",
            "-2"
         ],
         "use_addition_pixel"         =>false,
         "addition_pixel"         =>"",
         "auto_exchange_weights"         =>false,
         "exchange_weights"         =>         {  
            "Nexage"            =>"16",
            "OpenX"            =>"24",
            "mopub"            =>"12",
            "rubicon"            =>"9",
            "adx"            =>"29",
            "spotx"            =>"4",
            "liverail"            =>"6",
            "brx"            =>"0"
         },
         "category_ids"         =>         [  
            "50dc659c254dee58e4000004",
            "50dc659c254dee58e4000005",
            "50dc659c254dee58e4000017",
            "50dc659c254dee58e4000007"
         ],
         "deal_id_value"         =>"",
         "tld_wlist"         =>         [  
            "edu",
            "mil"
         ],
         "only_buy_transparent_inventory"         =>true,
         "only_buy_clear_text"         =>true,
         "uidh"         =>false,
         "inventory_type"         =>"",
         "ad_position"         =>"",
         "exclude_all"         =>false,
         "select_all"         =>false,
         "x_bot_attrs"         =>"ESAHM",
         "isps"         =>         [  
            "American College Health Association",
            "ACEP American College of Emergency Physicians",
            "ALLTEL Corporation"
         ],
         "isp"         =>"",
         "gender"         =>"ALL",
         "only_buy_inventory_with_lat_lon"         =>true,
         "only_buy_known_ip"         =>true,
         "geo_type"         =>"country",
         "country"         =>         [  
            "US"
         ],
         "geo_zips"         =>"",
         "region"         =>"514893611aeaf0619c000017",
         "city"         =>"",
         "dma_ids"         =>"",
         "geo_points_radii_csv"         =>"31.576185,
         -84.152368,
         80500         ", "         video_min_width"=>"",
         "video_min_height"         =>"",
         "video_adtypes"         =>nil,
         "ctr_optimize"         =>false,
         "device_targeting"         =>"custom",
         "device_makes"         =>"5155d571254dee586f000001",
         "device_models"         =>"5155d571254dee586f000004,
         5155         d571254dee586f000003",
         "retargeting_pixel_ids"         =>nil,
         "device_list_ids"         =>nil,
         "segment_ids"         =>         [  
            "530280aaf6618c3910000007",
            "53028131f6618c3910000061",
            "53028201f6618c3910000107",
            "530280aaf6618c3910000005"
         ],
         "os"         =>         {  
            "ios"            =>"latest",
            "android"            =>"all",
            "windows"            =>"all",
            "macosx"            =>"all",
            "windowsphone"            =>"all",
            "blackberryos"            =>"all"
         },
         "age"         =>         [  
            19,
            80
         ],
         "day_parting"         =>         [  
            0,
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
            23,
            24,
            25,
            26,
            27,
            28,
            29,
            30,
            31,
            32,
            33,
            34,
            35,
            36,
            37,
            38,
            39,
            40,
            41,
            42,
            43,
            44,
            45,
            46,
            47,
            48,
            49,
            50,
            51,
            52,
            53,
            54,
            55,
            56,
            57,
            58,
            59,
            60,
            61,
            62,
            63,
            64,
            65,
            66,
            67,
            68,
            69,
            70,
            71,
            72,
            73,
            74,
            75,
            76,
            77,
            78,
            79,
            80,
            81,
            82,
            83,
            84,
            85,
            86,
            87,
            88,
            89,
            90,
            91,
            92,
            93,
            94,
            95,
            96,
            97,
            98,
            99,
            100,
            101,
            102,
            103,
            104,
            105,
            106,
            107,
            108,
            109,
            110,
            111,
            112,
            113,
            114,
            115,
            116,
            117,
            118,
            119,
            120,
            121,
            122,
            123,
            124,
            125,
            126,
            127,
            128,
            129,
            130,
            131,
            132,
            133,
            134,
            135,
            136,
            137,
            138,
            139,
            140,
            141,
            142,
            143,
            144,
            145,
            146,
            147,
            148,
            149,
            150,
            151,
            152,
            153,
            154,
            155,
            156,
            157,
            158,
            159,
            160,
            161,
            162,
            163,
            164,
            165,
            166,
            167
         ],
         "not_segment_ids"         =>nil,
         "segments_and"         =>false,
         "x_bs_attrs"         =>         [  
            "EHAD",
            "EHAL",
            "EHDL",
            "EHHT"
         ],
         "x_bs_attrs_exclude_all"         =>false,
         "viewability"         =>         [  
            "VTOP10"
         ],
         "viewability_select_all"         =>false
      },
      "state"      =>"pending",
      "tactics"      =>"Contextual,
      Behavioral",
      "tag"      =>"<script type=\"text/javascript\" language=\"JavaScript\">\n(function()      {  
         \n  ADGEAR_SOURCE_CLICKTRACKER = \"__CLICK_TRACKER_URL__\";\n  ADGEAR_SOURCE_CLICKTRACKER_EXPECTS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_ENCODED = false;\n  ADGEAR_SOURCE_CLICKTRACKER_IS_DOUBLE_ENCODED = false;\n  var randomnum = \"__RANDOM_NUMBER__\";\n  var agref = \"\";\n  var proto = \"http:         \";\n  if (!agref.match(/^https?/i)) agref = \"\";\n  if (((typeof __ADGEAR_SSL != \"undefined\") && __ADGEAR_SSL) || (window.location.protocol == \"https:         \")) proto = \"https:\";\n  if (randomnum.substring(0,
         2         ) == \"__\") randomnum = String(Math.random());\n  document.writeln('<scr' + 'ipt type=\"text/ja' + 'vascr' + 'ipt\" s' + 'rc=\"' +\n      proto + '//d.runadtag.com' + '/impressions/ext/p=' +\n      '48138' + '.js?AG_R=' + randomnum +\n      (agref === \"\" ? \"\":(\"&AG_REF=\" + encodeURIComponent(agref))) +\n      '\"></scr' + 'ipt>');\n
      }      )();\n</script>\n",
      "tag_type"      =>"pscript",
      "total_clearing_cost"      =>0,
      "total_cost"      =>0,
      "view_conversions"      =>0,
      "cpa_goal"      =>"0.00",
      "sitelist_type"      =>"whitelist",
      "sitelist_ids"      =>      [  
         "5334560b115a04f82f000069"
      ],
      "portal_updated_at"      =>"2014-10-14T19:22:36+00:00      ", "      video_formats"=>nil,
      "language_country_ids"      =>"",
      "append_extra_metadata_to_clicktracker"      =>false,
      "is_baselined"      =>0,
      "vast_url"      =>nil,
      "has_companion_ad_unit"      =>false,
      "creative_rotation_weights"      =>      {  
         "53e3b47869702d1fface0000"         =>"45",
         "53bed72669702d269e0e0000"         =>"19",
         "53bed71069702d26ae020000"         =>"36"
      },
      "selection_mechanism_type"      =>"weighted",
      "retargeting_pixel_segment_ids"      =>nil
   },
   "campaign_id"   =>"53beca4c69702d4039d90000",
   "id"   =>"53bed7a869702d29db120000"
}

```

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


### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes



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


### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
:ad_unit_id | The ID of the ad unit to retrieve (24 alphanumeric character ID)| Yes

## Upload an image file for an ad unit

```shell
curl -F "fileupload=@file_name.extension" http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/file_upload -H 'Authorization: Token token="your_auth_token"'
```

> The above command returns JSON structured like this:

```json
{"ad_unit_upload_id":"53dbafd84a6f68291a2e0000"}
```

This endpoint uploads an image.


### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/file_upload`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
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


### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/video_upload`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
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


### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
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


### HTTP Request

`POST http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve (24 alphanumeric character ID)| Yes
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


