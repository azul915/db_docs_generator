FROM fufuhu/sql-migrate

ADD https://github.com/golang/go/raw/master/lib/time/zoneinfo.zip /usr/local/go/lib/time/zoneinfo.zip

RUN apk --no-cache add mysql-client && \
    rm -rf /var/cache/apk/*
