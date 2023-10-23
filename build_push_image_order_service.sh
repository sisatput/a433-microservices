# Perintah untuk membuat Docker image dengan format GitHub Packages.
docker build -t ghcr.io/sisatput/order-service:latest .

# Login ke GitHub Packages via Terminal.
echo "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" | docker login ghcr.io -u sisatput --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/sisatput/order-service:latest
