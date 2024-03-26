FROM apache/nifi

ENV NIFI_WEB_HTTP_PORT='8080'
ENV TZ=Europe/Istanbul

RUN wget https://jdbc.postgresql.org/download/postgresql-42.7.3.jar
RUN wget https://repo1.maven.org/maven2/com/microsoft/sqlserver/mssql-jdbc/12.6.1.jre11/mssql-jdbc-12.6.1.jre11.jar
RUN wget https://download.oracle.com/otn-pub/otn_software/jdbc/233/ojdbc11.jar
RUN wget https://repo1.maven.org/maven2/com/oracle/ojdbc/orai18n/19.3.0.0/orai18n-19.3.0.0.jar
RUN wget https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.3.0/mysql-connector-j-8.3.0.jar
RUN mv mssql-jdbc-12.6.1.jre11.jar ./lib
RUN mv ojdbc11.jar ./lib
RUN mv orai18n-19.3.0.0.jar ./lib
RUN mv postgresql-42.7.3.jar ./lib
RUN mv mysql-connector-j-8.3.0.jar ./lib

EXPOSE 8080

WORKDIR ${NIFI_HOME}

ENTRYPOINT ["../scripts/start.sh"]

