FROM ruby:2.7.1

RUN mkdir /myapp
COPY . /myapp
WORKDIR /myapp

# Install gems
RUN gem install bundler
RUN bundle install

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs \
    && npm install yarn -g

# Start the application server
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/usr/bin/entrypoint.sh"]