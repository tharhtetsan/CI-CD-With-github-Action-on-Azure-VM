from flask import Flask
import os

app = Flask(__name__)

@app.get('/')
def hoemPage():
    temp = os.getenv("my_env")
    return "hello server : "+temp


runPort = os.getenv('PORT') if os.getenv('PORT') else '80'


if __name__ == "__main__": 
    app.run(host='0.0.0.0',port= runPort, debug = False)