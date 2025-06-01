# ─────────────────────────────────────────────────────────────
# Use the official n8n image as the base (latest n8n).
FROM n8nio/n8n:latest

# Run as root for the install step.
USER root

# Install the MCP SDK version 1.4.1 (a truly published npm tag).
RUN npm install -g @modelcontextprotocol/sdk@1.4.1

# Switch back to the non‐root "node" user (n8n’s default).
USER node

# (No CMD override needed — n8n’s own entrypoint is left intact.)
