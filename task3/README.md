Solution
========
Basically we need a data warehouse solution which will accept archived Elasticsearch data which can be consumed by Python expert data scientists. Since you are already in AWS, you can use Redshift or also another third-party solution like Snowflake.

Description
-----------
First of all, I assumed that arrow direction between AWS RMQ and Logstash should be reversed. Because in current path, there is no input to Logstash. Then we don't know what is the output from Logstash to Elasticsearch either. So I just assumed that data is flowing from AWS RMQ to Logstash then to Elasticsearch.

Then we can periodically export data from Elasticsearch to data warehouse.

Motivation
----------
I chose data warehouse because both there is so much data and it needs to be used by Python expert data scientists. There are also other solutions like OLAP or even OLTP but they don't quite fit the use case.
