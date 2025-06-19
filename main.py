from fastapi import FastAPI
import fastapi

app = FastAPI()


@app.get("/")
async def home():
    return "Testing github action with python and fastapi"


@app.get("/status")
async def status():
    return fastapi.status.HTTP_200_OK
