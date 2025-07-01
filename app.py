from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, DevOps World!"

@app.route("/add", methods=["GET"])
def add_numbers():
    a = int(request.args.get("a"))
    b = int(request.args.get("b"))
    result = a + b
    return jsonify({"result": result})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
