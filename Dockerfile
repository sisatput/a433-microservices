# Menggunakan image node versi 18 berbasis Alpine Linux sebagai base image
FROM node:18-alpine

# Menetapkan direktori kerja di dalam container sebagai /src
WORKDIR /src

# Menyalin file package.json dan package-lock.json (atau yarn.lock jika menggunakan Yarn) ke dalam direktori kerja
COPY package*.json ./

# Menjalankan perintah npm install untuk menginstal dependencies yang diperlukan
RUN npm install

# Menetapkan environment variable NODE_ENV ke nilai 'production'
ENV NODE_ENV=production

# Menjalankan perintah npm ci untuk menginstal dependencies yang terkunci (locked) di package-lock.json (atau yarn.lock)
RUN npm ci

# Menyalin seluruh file dari direktori lokal ke dalam direktori kerja di dalam container
COPY . .

# Mengekspos port 3000 untuk dapat diakses dari luar container
EXPOSE 3000

# Menetapkan perintah default yang akan dijalankan saat container berjalan, dalam hal ini 'npm start'
CMD ["npm", "start"]
