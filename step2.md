#### Instalasi FastAPI

Pertama mari buat direktori baru untuk aplikasi, gunakan perintah dibawah

```{.bash .copy}
mkdir /home/admin/app && cd /home/admin/app
```

Selanjutnya kita dapat menginstal FastAPI dengan menggunakan pip. Jalankan perintah berikut di terminal:

```{.bash .copy}
pip install fastapi
```

Selain itu, kita juga perlu menginstal web server uvicorn agar dapat menjalankan aplikasi FastAPI. Jalankan perintah berikut untuk menginstal uvicorn:

```{.bash .copy}
pip install uvicorn
```

#### Membuat Aplikasi Sederhana

Untuk membuat aplikasi FastAPI, kita perlu membuat sebuah file Python dengan ekstensi .py. Dalam contoh ini, kita akan membuat sebuah file bernama `main.py`.

> Tekan tombol refresh pada editor apabila folder app belum tampil

> Gunakan editor disebelah kanan untuk membuat file baru

Pertama, mari kita impor FastAPI dan buat sebuah instance aplikasi. tambahkan kode dibawah pada file `main.py`

```{.python .copy}
from fastapi import FastAPI

app = FastAPI()
```

Sekarang, kita dapat menambahkan route pada aplikasi kita. Route adalah URL yang akan dihubungi oleh klien untuk mengakses API kita. Mari kita tambahkan route sederhana untuk mengakses halaman beranda:

```{.python .copy}
@app.get("/")
async def root():
    return {"message": "Hello World"}
```

Kita menggunakan decorator @app.get("/") untuk menentukan bahwa kita ingin menangani request HTTP GET pada route /. Fungsi root akan dipanggil ketika route tersebut diakses, dan akan mengembalikan objek JSON dengan pesan "Hello World".

#### Menjalankan Aplikasi

Setelah membuat aplikasi FastAPI, kita bisa menjalankannya dengan web server uvicorn. Jalankan perintah berikut di terminal:

```{.bash .copy}
uvicorn main:app --host 0.0.0.0 --port 80 --reload
```

Perintah ini akan menjalankan aplikasi FastAPI di url berikut

```{.bash .copy}
https://#ID#.host.cloudtutor.io
```

Kita dapat membuka URL ini di browser untuk melihat halaman beranda API atau gunakan browser disebelah kanan.

> Penggunaan host 0.0.0.0 dan port 80 adalah untuk membuka akses aplikasi ke url public, umumnya kedua parameter ini tidak digunakan
