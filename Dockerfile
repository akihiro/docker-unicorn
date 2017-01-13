FROM ruby:alpine

RUN apk -U add gcc make libc-dev linux-headers \
 && gem install unicorn \
 && addgroup -S unicorn \
 && adduser -h /unicorn -s /bin/false -S -D -H -G unicorn unicorn

ADD unicorn.rb /etc/unicorn.rb

VOLUME /unicorn
USER unicorn
ENTRYPOINT [ "unicorn" ]
CMD [ "-c", "/etc/unicorn.rb"]
