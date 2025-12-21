#!/bin/bash
# wait for Postgres to be ready
echo "Waiting for DB..."
until pg_isready -h "$AIRFLOW__DATABASE__SQL_ALCHEMY_CONN"; do
  sleep 2
done

# run DB migrations
airflow db upgrade

# create admin user if not exists
airflow users list | grep -q admin || airflow users create \
    --username admin \
    --firstname Admin \
    --lastname User \
    --password admin \
    --role Admin \
    --email admin@example.com

# start webserver
exec airflow webserver
