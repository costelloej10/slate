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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | ---------
:campaign_id | The ID of the campaign to retrieve | Yes


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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes


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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/placements/:placement_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:placement_id | The ID of the placement to retrieve| Yes

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

### HTTP Request

`GET http://portal.rundsp.com/api/v1/campaigns/:campaign_id/ad_units/:ad_unit_id`

### URL Parameters

Parameter | Description | Required
--------- | ----------- | --------
:campaign_id | The ID of the campaign to retrieve | Yes
:ad_unit_id | The ID of the ad unit to retrieve| Yes









