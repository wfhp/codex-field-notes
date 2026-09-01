FROM ruby:3.3-bookworm

RUN gem install --no-document 'jekyll:4.4.1' 'minima:2.5.2'

WORKDIR /site
EXPOSE 4000

ENTRYPOINT ["/usr/local/bundle/bin/jekyll"]
CMD ["serve", "--host", "0.0.0.0", "--livereload"]
