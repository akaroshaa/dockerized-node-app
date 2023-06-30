FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i
docker container prune -f
docker rmi -f akaroshaa/node-app:1.1
docker build -t node-app:1.1 .
docker tag node-app:1.1 akaroshaa/node-app:1.1
docker push akaroshaa/node-app:1.1