 docker exec -it airflow-webserver airflow users create \
    --username admin \
    --firstname Admin \
    --lastname User \
    --password admin \
    --role Admin \
    --email admin@example.com

docker exec -it --user root airflow-webserver bash
chmod 666 /var/run/docker.sock
exit


docker exec -it airflow-webserver airflow scheduler


