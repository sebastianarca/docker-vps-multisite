# Docker Wordpress - Instrucciones

Del archivo docker/docker-compose.yml se debe reemplazar todo lo que diga wordpresstest por el nombre del dominio. Eso incluye nombre de servicios y contenedores

docker/base/site_nginx.conf 
docker 

`sed -i -e 's/wordpresstest/custom_site/g' ./docker/docker-compose.yml`
`sed -i -e 's/real\.email\@gmail.com/own\.email\@gmail\.com/g' ./docker/docker-compose.yml`
`sed -i -e 's/wordpresstest/custom_site/g' ./docker/base/site_nginx.conf`
