# Install python software
FROM python:3-slim

# Create a folder in the container
WORKDIR /flaskapp

# Copy the current directory contents into the container at /flaskapp
COPY app.py requirements.txt /flaskapp/

#flask will be installed
RUN pip install -r requirements.txt

# Run the flask application
CMD [  "python", "app.py"]
