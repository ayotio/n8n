FROM n8nio/n8n:latest   # still the newest n8n

# install the older SDK globally
RUN npm install -g @modelcontextprotocol/sdk@0.4.6
