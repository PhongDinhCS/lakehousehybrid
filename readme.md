ubuntu2020@ubuntu2020-virtual-machine:~/lakehousehybrid$ 
git branch
* main

ubuntu2020@ubuntu2020-virtual-machine:~/lakehousehybrid$ 
git pull origin main
From https://github.com/PhongDinhCS/lakehousehybrid
 * branch            main       -> FETCH_HEAD
Already up to date.

ubuntu2020@ubuntu2020-virtual-machine:~/lakehousehybrid$ 
sudo chown -R $USER:$USER ~/lakehousehybrid
[sudo] password for ubuntu2020: 

ubuntu2020@ubuntu2020-virtual-machine:~$ 
sudo chown -R 50000:50000 ~/lakehousehybrid/airflow/logs
[sudo] password for ubuntu2020: 
ubuntu2020@ubuntu2020-virtual-machine:~$ 
docker exec -it airflow-dag-processor id airflow
uid=50000(airflow) gid=0(root) groups=0(root)
ubuntu2020@ubuntu2020-virtual-machine:~$ 
sudo chmod -R 755 ~/lakehousehybrid/airflow/logs

ubuntu2020@ubuntu2020-virtual-machine:~/lakehousehybrid$ 
sudo chmod 666 /var/run/docker.sock

ubuntu2020@ubuntu2020-virtual-machine:~/lakehousehybrid$ 
git add .
git commit -m "Update airflow config + docker changes"
git push origin main

