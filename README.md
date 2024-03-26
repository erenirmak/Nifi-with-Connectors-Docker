# Nifi-with-Connectors-Docker

This Dockerfile includes Apache/Nifi:Latest and it also has commands to download connectors of the most common databases
and to move them to the ${NIFI_HOME}/lib location. Nifi sees connectors directly.

**BEWARE! This Dockerfile is configured for HTTP access without authentication through the port 8080.**
For authentication and secure access through HTTPS, do not use directly and apply your configurations.

Connectors of databases:
* SQL Server
* Oracle (connector + converter orai18n)
* PostgreSQL
* MySQL

Download the Dockerfile and use:
> docker build -t apache/nifi .

> docker run --name nifi -p 8080:8080 -d apache/nifi --restart=always

