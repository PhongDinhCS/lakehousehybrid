 docker exec -it airflow-webserver airflow users create \
    --username admin \
    --firstname Admin \
    --lastname User \
    --password admin \
    --role Admin \
    --email admin@example.com
