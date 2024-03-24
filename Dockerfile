# FROM ENV WORKDIR COPY RUN EXPOSE ENTRYPOINT

# Download and configure python
FROM python:3.12

# APP_HOME = '/app'
ENV APP_HOME /app

# Set current folder
WORKDIR $APP_HOME

# Copy all files to WORKDIR
COPY . .

# Terminal command
RUN ls
RUN python -m venv .venv
RUN pip install colorama

# For web apps
# EXPOSE 8080

# Main entry point for our application
ENTRYPOINT ["python", "main.py", "arg1"]