# Use the official n8n image as base
FROM n8nio/n8n:1.46.0

# Copy your package.json & install the older MCP SDK
COPY package.json /tmp/package.json
RUN npm install --prefix /tmp && \
    cp -r /tmp/node_modules/@modelcontextprotocol /usr/local/lib/node_modules/

# Default CMD stays the same
