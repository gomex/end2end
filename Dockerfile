FROM ruby
COPY Gemfile Gemfile
RUN bundle install
COPY ./ /blog
WORKDIR /blog
CMD jekyll serve --host 0.0.0.0
