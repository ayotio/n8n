FROM n8nio/n8n:latest
COPY package.json /tmp/package.json
RUN npm install --prefix /tmp && \
    cp -r /tmp/node_modules/@modelcontextprotocol /usr/local/lib/node_modules/
