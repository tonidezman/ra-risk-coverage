FROM mysql:5.7.21

ENV MYSQL_DATABASE=tag \
    MYSQL_ROOT_PASSWORD=root \
    MYSQL_USER=root

COPY create_user.sql       /docker-entrypoint-initdb.d/create_user.sql
COPY rrc_rag.sql           /docker-entrypoint-initdb.d/rrc_rag.sql
COPY z_create_amx_user.sql /docker-entrypoint-initdb.d/z_create_amx_user.sql
# COPY rrc_tmf.sql /docker-entrypoint-initdb.d/.
RUN chmod 755 /docker-entrypoint-initdb.d

EXPOSE 3306
