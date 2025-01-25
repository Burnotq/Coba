#!/bin/bash

# Direktori instalasi ekstensi
EXT_DIR="$HOME/ipFuck"

# URL repositori IpFuck
GIT_REPO="https://github.com/jeremiepat/ipfuck.git"

# Langkah 1: Unduh repositori IpFuck
echo "Mengunduh repositori IpFuck..."
if git clone "$GIT_REPO" "$EXT_DIR"; then
    echo "Repositori berhasil diunduh ke $EXT_DIR"
else
    echo "Gagal mengunduh repositori. Periksa koneksi internet Anda atau URL repositori."
    exit 1
fi

# Langkah 2: Instruksi untuk memuat ekstensi
echo "Ekstensi telah diunduh. Ikuti langkah berikut untuk memuat ekstensi di Chromium:"
echo "1. Buka browser Chromium."
echo "2. Masuk ke 'chrome://extensions/'."
echo "3. Aktifkan 'Developer Mode' (Mode Pengembang)."
echo "4. Klik 'Load unpacked' (Muat tanpa paket)."
echo "5. Pilih folder berikut: $EXT_DIR"

echo "Selesai! 😊"
