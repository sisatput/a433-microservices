# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker image ls

# Mengubah nama image agar sesuai dengan format GitHub Packages.
docker tag item-app:v1 ghcr.io/sisatput/item-app:v1

# Login ke GitHub Packages via Terminal.
echo "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" | docker login ghcr.io -u sisatput --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/sisatput/item-app:v1
