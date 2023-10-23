# Perintah untuk membuat Docker image dengan format GitHub Packages.
docker build -t ghcr.io/sisatput/shipping-service:latest .

# Login ke GitHub Packages via Terminal.
echo "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" | docker login ghcr.io -u sisatput --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/sisatput/shipping-service:latest
