FROM heroku/cedar:14

RUN mkdir -p /app/user && \
    mkdir -p /app/.cache/gotools && \
    mkdir -p /app/.profile.d

WORKDIR /app/user

ENV GOVERSION go1.3.3
ENV STACK cedar-14
ENV HOME /app
ENV GOROOT /app/.cache/go

RUN curl -s --retry 3 -L https://storage.googleapis.com/golang/$GOVERSION.linux-amd64.tar.gz | tar xz -C /app/.cache
ENV PATH $GOROOT/bin:$PATH
