FROM heroku/cedar:14

RUN mkdir -p /app/user /app/.cache/go

WORKDIR /app/user

ENV GOVERSION go1.6
ENV STACK cedar-14
ENV HOME /app
ENV GOROOT /app/.cache/go

RUN curl -s --retry 3 -L https://storage.googleapis.com/golang/$GOVERSION.linux-amd64.tar.gz | tar xz -C /app/.cache
RUN apt-get update && apt-get -y install mercurial bzr && apt-get -y clean && apt-get -y autoclean
ENV PATH $GOROOT/bin:$PATH
