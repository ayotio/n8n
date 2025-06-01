FROM n8nio/n8n:latest

USER root

# Install the last 0.4-series release (0.4.4)
RUN npm install -g @modelcontextprotocol/sdk@0.4.4

USER node
