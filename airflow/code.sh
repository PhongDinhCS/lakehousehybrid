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

ubuntu2020@ubuntu2020-virtual-machine:~/lakehousehybrid/airflow/dags$ pwd
/home/ubuntu2020/lakehousehybrid/airflow/dags
sudo chown -R ubuntu2020:ubuntu2020 .

docker exec -it airflow-webserver airflow scheduler


