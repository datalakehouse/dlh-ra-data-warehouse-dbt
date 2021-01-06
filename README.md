## Introduction

The RA Warehouse dbt framework is a set of data models, data transformations and data warehousing design patterns for use with dbt ("Data Build Tool"), an open-source data transformation and orchestration toolkit we use when modern data stacks for clients and for internal use. We've decided to open-source this framework to share our learnings and experience with the dbt and analytics engineering community, and to invite others to review, contribute and fork this repository.

![Conceptual Diagram](img/dw_diagram.png)

* [What's New in v1.2.0](whats_new_in_v_1_2_0.md)

You can read more about our work with dbt, Google BigQuery, Snowflake and other modern data stack technologies on our website and blog:

* [Rittman Analytics](https://rittmananalytics.com/home-index) homepage
* [Data Centralization](https://rittmananalytics.com/data-centralization) consulting packages
* [Rittman Analytics Blog dbt Posts](https://rittmananalytics.com/blog/tag/dbt)
* [Contact Us](https://rittmananalytics.com/home-index/#about-us)

## Why Did We Create This Framework?

[dbt](getdbt.com) is a toolkit that solves the problem of testing, repeatability and modularity of analysts code by bringing the principles of modern software development to the analysts' workflow. The RA Data Warehouse framework solves the problem of how to design your dbt transformations so that your project doesn't grind to a halt after you integrate your second, third, fourth data source because you need to combine identity across multiple systems, deduplicate multiple sources of customer data and make sure that numbers coming out of your BI tool still match with the numbers in your source systems.

* [Getting Started with dbt](https://rittmananalytics.com/getting-started-with-dbt) consulting packages
* [dbt Viewpoint](https://docs.getdbt.com/docs/about/viewpoint/)
* [dbtCloud](https://docs.getdbt.com/docs/dbt-cloud/cloud-overview) for scheduling and orchestrating dbt and the RA Data Warehouse

## Design Goals

1. To provide standards for our team on how to structure, model and transform data for analysis
2. To enable merging of customer, product, contact and other shared entity data with no single authoratitive source
3. To provide fast time-to-value on client projects by pre-building and pre-integrating common SaaS data sources
4. To pre-create derived analytics measures for individual and combinations of sources
5. To create a means of selecting sources and warehouses and have just those sources/warehouses loaded (and deployed for a customer)
6. To support use of multiple warehouse platforms and combinations of extract technologies while maintaining a single code base
7. To make it simpler to run data quality tests than to not, by defining these tests in-advance
8. To enable loading and integration of custom (customer app database) sources into the warehouse

[Introducing the RA Warehouse dbt Framework : How Rittman Analytics Does Data Centralization using dbt, Google BigQuery, Stitch and Looker](https://rittmananalytics.com/blog/2020/5/28/introducing-the-ra-warehouse-dbt-framework-how-rittman-analytics-does-data-centralization) on the Rittman Analytics blog talks more about the background to this package.

### Dimensional Model

![Dimensional Model](img/dimensional_model.png)

### dbt Transformation Graph

![dbt DAG](img/dbt_graph.jpeg)

## What Data Warehouse, Data Pipeline and Data Collection Technologies are Supported?

* Google BigQuery (Standard SQL)
* Snowflake Data Warehouse
* Stitch
* Fivetran
* Segment

## What SaaS Sources are Supported?

* Hubspot CRM (Stitch, Fivetran)
* Hubspot Marketing (Stitch)
* Harvest Timesheets (Stitch)
* Xero Accounting (Stitch)
* Salesforce CRM (Stitch)
* Stripe Payments (Stitch)
* Stripe Subscriptions (Segment)
* Asana Projects (Stitch)
* Jira Projects (Stitch)
* Mailchimp Email Marketing (Stitch)
* Segment Events and Pageviews (Segment)
* GCP Billing Exports
* Google Ads (Segment, Stitch)
* Facebook Ads (Segment, Stitch)
* Intercom Messaging (Stitch)
* Mixpanel Events (Stitch, Fivetran)
* Baremetrics Analytics (Segment)
* Custom data sources

## What Warehouse modules are Modelled?

* Finance (Invoices, Chart of Accounts, Currencies)
* CRM (Deals, Contacts, Companies)
* Subscriptions (Plans, Subscribers, Subscriptions)
* Projects (Timesheet Projects, Timesheet Tasks, Delivery Projects, Delivery Tasks, Timesheets, Users)
* Marketing (Email lists, Email sends, Email campaigns, Ad Campaigns, Ad Performance, Ad Spend, Web Page Views, Web Sessions, Subscription Attribution)
* Product (Web Page Views, Web Sessions,)


## Contributing

Contributions are welcome. To contribute:

1. fork this repo,
2. make and test changes, and
3. submit a PR. All contributions must be widely relevant to users of each SaaS data source and not contain logic specific to a given business.
