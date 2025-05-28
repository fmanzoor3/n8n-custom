FROM n8nio/n8n

# Set a custom global install directory with write permissions
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

USER node

# Install the community node to the user's global directory
RUN npm install n8n-nodes-mcp-client
