# Start from a base image with Python and pip (e.g., Python 3.9)
FROM python:3.9

ENV PASSWORD 00000000

# Install pipx
RUN python -m pip install pipx && python -m pipx ensurepath

# Install Autonity CLI
RUN pipx install --force https://github.com/autonity/aut/releases/download/v0.3.0.dev4/aut-0.3.0.dev4-py3-none-any.whl

# Add the pipx binary path to PATH
ENV PATH="/root/.local/bin:$PATH"

# Install expect
RUN apt-get update && apt-get install -y expect

# Copy the entrypoint script and the expect script to the container
COPY entrypoint.sh /entrypoint.sh
COPY aut-account-create.expect /aut-account-create.expect

# Make sure the scripts are executable
RUN chmod +x /entrypoint.sh /aut-account-create.expect

# Set the entrypoint script as the default command to execute
ENTRYPOINT ["/entrypoint.sh"]
