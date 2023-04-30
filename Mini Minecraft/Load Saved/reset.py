
import json, sys

try:
	data = sys.argv[1]
except:
	data = 'ground'
        
path = f"worlds/{data}.json"

def world():
    with open(path,"w") as of:
        json.dump({"position": []}, of)

world()
