FROM timbru31/ruby-node:latest

RUN npm install -g npm
RUN gem install bundler

RUN mkdir /frontend
RUN cd /frontend && \
    wget https://github.com/twbs/bootstrap/archive/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv bootstrap-master bootstrap

WORKDIR /frontend/bootstrap

RUN bundle install
RUN npm install

EXPOSE 9001
