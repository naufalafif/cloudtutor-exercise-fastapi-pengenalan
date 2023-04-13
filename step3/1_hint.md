tambahkan route dibawah

```{.python}
@app.get("/hello")
async def hello_page():
    return {"status": "success"}
```
