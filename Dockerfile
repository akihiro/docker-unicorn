FROM ruby:alpine

RUN apk -U add gcc make libc-dev linux-headers && gem install unicorn
ADD unicorn.rb /etc/unicorn.rb

VOLUME /unicorn
ENTRYPOINT [ "unicorn" ]
CMD [ "-c", "/etc/unicorn.rb"]
