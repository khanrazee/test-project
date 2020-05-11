FROM ruby:2.6.5 as dev

COPY . .

EXPOSE 3000


FROM dev
RUN bundle install --jobs 2 --without test development
EXPOSE 80
