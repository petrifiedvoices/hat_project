#!/usr/bin/env bash

set -euo pipefail


cd SQL_queries_export

psql hat --file 0_test.sql
