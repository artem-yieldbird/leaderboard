FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y postgresql-client
ADD . /leaderboard
WORKDIR /leaderboard
RUN bundle install
ENV RAILS_ENV production
EXPOSE 3000
CMD ["bash"]
