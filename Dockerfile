FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN gem install bundler

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY . /myapp

# Предварительные команды для подготовки приложения
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]