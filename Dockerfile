# Gunakan base image Python
FROM python:3.11-slim

# Set workdir di container
WORKDIR /app

# Copy file requirements dan install dependensi
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh isi folder project ke dalam container
COPY . .

# Set environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port Flask
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["flask", "run"]
