#!/usr/bin/env bash

set -euo pipefail
rm -rf results
mkdir results


cd PostgreSQL_load

psql --quiet --file load.sql


cd ../SQL_queries_export

for file in $(ls *.sql); do
echo $file
psql hat --csv --file "$file" --quiet > "../results/${file%.*}.csv"
done