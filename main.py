from fastapi import FastAPI
from dotenv import load_dotenv
import os

# Load environment variables from the .env file
load_dotenv()

# Initialize FastAPI app
app = FastAPI()

@app.get("/")
def read_env_vars():
    # Access the environment variables
    my_secret_key = os.getenv("MY_SECRET_KEY")
    database_url = os.getenv("DATABASE_URL")

    # Return them in a dictionary (JSON format)
    return {
        "MY_SECRET_KEY": my_secret_key,
        "DATABASE_URL": database_url
    }

