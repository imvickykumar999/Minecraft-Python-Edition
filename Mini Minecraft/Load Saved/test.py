import json

path="test.json"

# get data file
with open(path) as f:
   obj = json.load(f)

print(obj)

# add data new
obj["position"].append({"Vec3":(7.0, 5.0, 5.0)})

# save data new
with open(path,"w+") as of:
   json.dump(obj,of)
