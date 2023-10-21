# Perintah untuk membuat Docker image dari Dockerfile yang sudah ada
docker build -t sisatput/karsajobs:latest .

# Melihat daftar image di lokal.
docker image ls

# Mengubah nama image agar sesuai dengan format GitHub Packages.
docker tag sisatput/karsajobs:latest ghcr.io/sisatput/karsajobs:latest

# Login ke GitHub Packages via Terminal.
echo "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" | docker login ghcr.io -u sisatput --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/sisatput/karsajobs:latest
