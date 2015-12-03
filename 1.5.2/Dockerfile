FROM heroku/cedar:14

RUN mkdir -p /app/user /app/.cache/go

WORKDIR /app/user

ENV GOVERSION go1.5.2
ENV STACK cedar-14
ENV HOME /app
ENV GOROOT /app/.cache/go

RUN curl -s --retry 3 -L https://storage.googleapis.com/golang/$GOVERSION.linux-amd64.tar.gz | tar xz -C /app/.cache
ENV PATH $GOROOT/bin:$PATH
