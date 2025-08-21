# Pakai Python 3.12 slim (ringan)
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy file requirements.txt (isi: pandas, numpy, jupyter)
COPY requirements.txt .

# Install dependensi
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file project ke container
COPY . .

# Default command: jalankan Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
