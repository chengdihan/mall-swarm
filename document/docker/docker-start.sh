
#Remove DSSTORE File
rm ~/mydata/tc/elasticsearch/plugins/.DS_Store

docker network create docker-main-net

docker compose -f docker-compose-env.yml up --build --force-recreate -d

# init logstash
cat <<EOF | docker exec logstash /bin/bash
logstash-plugin install logstash-codec-json_lines
EOF

docker restart logstash


# start apps
# docker compose -f docker-compose-app.yml up -d
