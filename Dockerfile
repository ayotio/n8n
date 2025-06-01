# Use the latest n8n image as the base
FROM n8nio/n8n:latest

# Switch to root so we can install global packages
USER root

# Install MCP SDK v1.4.1 (speaks protocol 2024-11-05)
RUN npm install -g @modelcontextprotocol/sdk@1.4.1

# Switch back to the non-root node user (n8n’s default)
USER node

# (No CMD override—n8n’s built-in entrypoint will run automatically)
