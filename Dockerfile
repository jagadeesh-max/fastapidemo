# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# # Install the virtualenv package
# RUN pip install virtualenv

# # Create a virtual environment
# RUN virtualenv venv

# # Activate the virtual environment and install dependencies
# RUN . venv/bin/activate && pip install --no-cache-dir -r requirements.txt

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app/

# Expose port 8000 (the port FastAPI will run on)
EXPOSE 8000

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
