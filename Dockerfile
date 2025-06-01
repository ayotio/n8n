# 1) Start from the official n8n image
FROM n8nio/n8n:latest

# 2) Switch to root, install the older MCP SDK globally, then drop back to the n8n user
USER root

RUN npm install -g @modelcontextprotocol/sdk@0.4.6

# 3) Switch back to the non‐root user (this is the default user in n8n images)
USER node

# 4) Keep the original n8n entrypoint/command (no need to override)
