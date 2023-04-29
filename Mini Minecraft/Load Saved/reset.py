
import json
path = "test.json"

def world():
    with open(path,"w") as of:
        json.dump({"position": []}, of)

world()
