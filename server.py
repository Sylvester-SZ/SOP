from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/", methods=["POST"])
def process_data():
    # Modtag JSON-data
    data = request.get_json()
    print(f"Received batch data: {data}")
    
    # Gem eller processér dataen
    # Eksempel: Gem til en fil
    with open("click_data.json", "a") as f:
        import json
        json.dump(data, f)
        f.write("\n")
    
    # Returnér successtatus
    return jsonify({"status": "success", "message": "Batch data received!"}), 200


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000)
