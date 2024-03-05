docker stop gcrunch_nginx
docker rm gcrunch_nginx
docker build -t gcrunch_nginx .
docker run -p 8080:80 -p 8081:8081 --name gcrunch_nginx --mount 'src=af-pipeline_af_data_volume,dst=/usr/share/nginx/html/af,ro' gcrunch_nginx
