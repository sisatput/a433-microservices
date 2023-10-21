# Perintah untuk membuat Docker image dari Dockerfile yang sudah ada
docker build -t sisatput/karsajobs-ui:latest .

# Melihat daftar image di lokal.
docker image ls

# Mengubah nama image agar sesuai dengan format GitHub Packages.
docker tag sisatput/karsajobs-ui:latest ghcr.io/sisatput/karsajobs-ui:latest

# Login ke GitHub Packages via Terminal.
echo "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" | docker login ghcr.io -u sisatput --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/sisatput/karsajobs-ui:latest
