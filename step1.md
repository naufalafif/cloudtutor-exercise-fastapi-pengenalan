#### Apa Itu FastAPI

FastAPI adalah framework web untuk Python yang dirancang untuk membuat API dengan cepat dan mudah. FastAPI terinspirasi oleh framework web populer lainnya seperti Flask dan Django

Selling point utama dari fastapi adalah pada performa dan kemudahan, berikut beberapa fitur yang menjadikan fastapi lebih mudah digunakan dan cepat dibandingkan framework python lainnya.

Type annotations dan Pydantic

FastAPI menggunakan type annotations dan Pydantic untuk membuat kode lebih mudah dibaca dan dipahami. Type annotations membantu memperjelas tipe data dan parameter yang digunakan dalam kode, sementara Pydantic digunakan untuk validasi masukan (input) dan output API.

Dokumentasi otomatis

FastAPI secara otomatis menghasilkan dokumentasi interaktif untuk API menggunakan swagger dan redoc, yang dapat diakses melalui browser. Dokumentasi ini memberikan dokumentasi yang terstruktur dengan baik, termasuk bagaimana API harus digunakan, parameter yang diperlukan, dan response yang dihasilkan. contoh swagger doc https://petstore.swagger.io/

Performa yang lebih baik

FastAPI menggunakan asyncio dan teknologi modern lainnya untuk mengoptimalkan performa API, yang dapat menangani request dengan cepat dan efisien.

#### Contoh Dan Perbandingan Dengan Flask

Berikut adalah contoh kode untuk membuat API endpoint sederhana menggunakan FastAPI dan Flask, untuk membandingkan perbedaan fitur dan kemudahan penggunaannya

Flask

```{.python}
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/hello/<nama>")
def hello(nama):
    return jsonify({"pesan": f"Halo, {nama}"})
```

Fastapi

```{.python}
from fastapi import FastAPI

app = FastAPI()

@app.get("/hello/{nama}")
def hello(nama: str):
    return {"pesan": f"Halo, {nama}"}
```

Perbedaan yang terlihat dalam kode di atas adalah penggunaan type annotations pada FastAPI untuk memastikan tipe data yang diterima oleh API, dan tidak diperlukannya module tambahan untuk memformat output JSON. Selain itu, FastAPI secara otomatis menghasilkan dokumentasi interaktif untuk endpoint /hello/{nama}, yang dapat diakses melalui browser tanpa perlu menulis dokumentasi manual. Sedangkan di Flask, dokumentasi perlu ditulis secara manual atau menggunakan plugin tambahan seperti Flask-RESTful.

Pada umumnya, FastAPI akan membutuhkan kode yang lebih sedikit dan lebih mudah dibaca dibandingkan dengan Flask, karena fitur-fitur bawaannya yang memudahkan penggunaan.
