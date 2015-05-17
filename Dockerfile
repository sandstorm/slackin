FROM octohost/nodejs

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 8080

CMD ./bin/slackin --interval 30000 --port 8080 $SLACK_SUBDOMAIN $SLACK_API_TOKEN
