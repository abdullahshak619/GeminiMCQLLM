# Step 1: Use an official Python image as a base
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt into the container
COPY . /app
# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code into the container

# Step 6: Set environment variables (Optional: For loading .env files)
ENV GOOGLE_API_KEY=
# Step 7: Expose the port the app will run on
EXPOSE 5000

# Step 8: Run the Flask app
ENTRYPOINT ["python3"]
CMD ["app.py", "runserver", "0.0.0.0:5000"]
~                                                                                                                                                                        
~              
