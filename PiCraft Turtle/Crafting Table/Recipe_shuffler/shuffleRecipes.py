import json, os, random

PATH = "recipes"

AVOID_FILES = {                                    
    "crafting_table.json", "crafting_table_from",
    "furnace.json", "furnace_from",
    "brew_water_nether_wart.json"
}

def get_recipes(avoid_files, path):
    """
    Parameters:
        avoid_files: A set of filenames that will not be changed and will remain default
        path: The path to the recipes folder
    return:
        a list of all the desired recipes to be mixed up.
    """
    recipe_list = []
    for file_name in os.listdir(path):
        if not is_ignorable_file(avoid_files, file_name):
            print(file_name)
            with open(f"{path}\\{file_name}", "r") as file:
                data = json.load(file)
                recipe_list.append(find_recipe(data))
    return recipe_list

def find_recipe(data):
    """
    description:
        Will find the exact key-value path to a recipe's outcome from a given JSON file. Has (Hopefully) all of the possible combinations minecraft
        uses to store recipe outcomes.
    Parameters:
        data: The JSON file in a python dictionary
    return:
        A String Object of the object to be returned from a specific crafting recipe.
    """
    main_keys = ["minecraft:recipe_shaped", "minecraft:recipe_shapeless", "minecraft:recipe_furnace", "minecraft:recipe_brewing_mix"]

    if main_keys[0] in data.keys(): # recipe_shaped
        
        if type(data["minecraft:recipe_shaped"]["result"]) != list: # Some files are stored as ["minecraft:recipe_shaped"]["result"][0]["item"] and some are stored as ["minecraft:recipe_shaped"]["result"]["item"]
            return data["minecraft:recipe_shaped"]["result"]["item"]
        else:
            return data["minecraft:recipe_shaped"]["result"][0]["item"]

    elif main_keys[1] in data.keys(): #recipe_shapeless
        return data["minecraft:recipe_shapeless"]["result"]["item"]
    
    elif main_keys[2] in data.keys(): #recipe_furnace
        return data["minecraft:recipe_furnace"]["output"]
    
    elif main_keys[3] in data.keys(): #recipe_brewing_mix
        return data["minecraft:recipe_brewing_mix"]["output"]

def is_ignorable_file(avoid_files, name):
    """
    description:
        Will return whether or not a file should be ignored from a given list
    Parameters:
        avoid_files: A set of filenames that will not be changed and will remain default
        name: the name of the current file
    """
    for ignorable in avoid_files:
        if name.startswith(ignorable):
            return True
    return False

def upload_recipes(avoid_files, path, recipes):
    """
    description:
        Will Take the recipes list, and update each file with it's shuffled list counterpart
    Parameters:
        avoid_files: A set of filenames that will not be changed and will remain default
        path: The path to the recipes folder
        recipes: A list of every recipe outcome
    """
    index = 0
    for file_name in os.listdir(path):

        if not is_ignorable_file(avoid_files, file_name):
            print(file_name)
            with open(f"{path}\\{file_name}", "r+") as file:    
                data = json.load(file)
                data = update_data(data, recipes[index])
                write_to_file(data, file)
            index += 1

def update_data(data, new_recipe):
    """
    description:
        Will find the exact key-value path to a recipe's outcome from a given JSON file. Then, will update the data with the new recipe
    Parameters:
        data: The JSON file in a python dictionary
        new_recipe: The information that will be used to replace data[recipe]
    return:
        Updated form of data with it's recipe outcome changed
    """
    main_keys = ["minecraft:recipe_shaped", "minecraft:recipe_shapeless", "minecraft:recipe_furnace", "minecraft:recipe_brewing_mix"]

    if main_keys[0] in data.keys(): # recipe_shaped
        
        if type(data["minecraft:recipe_shaped"]["result"]) != list: # Some files are stored as ["minecraft:recipe_shaped"]["result"][0]["item"] and some are stored as ["minecraft:recipe_shaped"]["result"]["item"]
            data["minecraft:recipe_shaped"]["result"]["item"] = new_recipe
        else:
            data["minecraft:recipe_shaped"]["result"][0]["item"] = new_recipe

    elif main_keys[1] in data.keys(): #recipe_shapeless
        data["minecraft:recipe_shapeless"]["result"]["item"] = new_recipe
    
    elif main_keys[2] in data.keys(): #recipe_furnace
        data["minecraft:recipe_furnace"]["output"] = new_recipe
    
    elif main_keys[3] in data.keys(): #recipe_brewing_mix
        data["minecraft:recipe_brewing_mix"]["output"] = new_recipe
            
    return data

def write_to_file(data, file):
    """
    clears file and writes to it. 
    """
    file.seek(0)
    json.dump(data, file)
    file.truncate() #In case the new file is shorter than the old

def main(path, avoid_files):
    recipes = get_recipes(avoid_files, path) #gets the list of crafting recipe outcomes

    random.shuffle(recipes) #Shuffles recipes around

    upload_recipes(avoid_files, path, recipes) #changes each allowed files crafting recipe outcomes.

main(PATH, AVOID_FILES)
