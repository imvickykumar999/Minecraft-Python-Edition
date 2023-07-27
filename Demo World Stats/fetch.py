
import json
from pprint import pprint

with open(r'C:\Users\Vicky\AppData\Roaming\.minecraft\saves\Demo_World\stats\8792cc36-8230-8cff-e745-c0e32290caa2.json') as f:
    x = f.read()
    x = json.loads(x)

# pprint(x['stats']['minecraft:picked_up'])
pprint(x['stats'])


'''
{'minecraft:broken': {'minecraft:iron_pickaxe': 1,
                      'minecraft:wooden_axe': 1,
                      'minecraft:wooden_pickaxe': 1,
                      'minecraft:wooden_sword': 1},
 'minecraft:crafted': {'minecraft:bucket': 1,
                       'minecraft:cooked_chicken': 4,
                       'minecraft:crafting_table': 2,
                       'minecraft:gold_ingot': 9,
                       'minecraft:iron_pickaxe': 1,
                       'minecraft:oak_boat': 1,
                       'minecraft:oak_door': 3,
                       'minecraft:oak_planks': 48,
                       'minecraft:redstone': 2,
                       'minecraft:stick': 12,
                       'minecraft:white_bed': 1,
                       'minecraft:wooden_axe': 1,
                       'minecraft:wooden_pickaxe': 1,
                       'minecraft:wooden_sword': 2},
 'minecraft:custom': {'minecraft:bell_ring': 30,
                      'minecraft:boat_one_cm': 63491,
                      'minecraft:crouch_one_cm': 726,
                      'minecraft:damage_dealt': 4724,
                      'minecraft:damage_taken': 1330,
                      'minecraft:deaths': 4,
                      'minecraft:drop': 25,
                      'minecraft:fall_one_cm': 10091,
                      'minecraft:fly_one_cm': 14057,
                      'minecraft:horse_one_cm': 1524,
                      'minecraft:interact_with_blast_furnace': 1,
                      'minecraft:interact_with_brewingstand': 1,
                      'minecraft:interact_with_crafting_table': 6,
                      'minecraft:interact_with_smoker': 1,
                      'minecraft:jump': 787,
                      'minecraft:mob_kills': 26,
                      'minecraft:open_chest': 8,
                      'minecraft:play_time': 116266,
                      'minecraft:sleep_in_bed': 6,
                      'minecraft:sneak_time': 762,
                      'minecraft:sprint_one_cm': 233027,
                      'minecraft:swim_one_cm': 13797,
                      'minecraft:talked_to_villager': 29,
                      'minecraft:time_since_death': 92532,
                      'minecraft:time_since_rest': 5162,
                      'minecraft:total_world_time': 159532,
                      'minecraft:traded_with_villager': 1,
                      'minecraft:walk_on_water_one_cm': 28647,
                      'minecraft:walk_one_cm': 551944,
                      'minecraft:walk_under_water_one_cm': 28869},
 'minecraft:dropped': {'minecraft:brown_mushroom': 1,
                       'minecraft:coarse_dirt': 1,
                       'minecraft:dandelion': 4,
                       'minecraft:egg': 2,
                       'minecraft:feather': 8,
                       'minecraft:lectern': 1,
                       'minecraft:oak_fence': 1,
                       'minecraft:poppy': 4,
                       'minecraft:rotten_flesh': 1,
                       'minecraft:sugar_cane': 8,
                       'minecraft:wheat_seeds': 61,
                       'minecraft:white_bed': 3,
                       'minecraft:yellow_bed': 5},
 'minecraft:killed': {'minecraft:cat': 1,
                      'minecraft:chicken': 5,
                      'minecraft:cow': 2,
                      'minecraft:drowned': 1,
                      'minecraft:enderman': 1,
                      'minecraft:iron_golem': 3,
                      'minecraft:pig': 4,
                      'minecraft:salmon': 1,
                      'minecraft:sheep': 7},
 'minecraft:killed_by': {'minecraft:drowned': 4},
 'minecraft:mined': {'minecraft:brown_mushroom': 1,
                     'minecraft:carrots': 16,
                     'minecraft:chest': 1,
                     'minecraft:coarse_dirt': 1,
                     'minecraft:composter': 1,
                     'minecraft:crafting_table': 4,
                     'minecraft:dead_bush': 2,
                     'minecraft:dirt': 77,
                     'minecraft:dirt_path': 3,
                     'minecraft:fern': 7,
                     'minecraft:gold_block': 1,
                     'minecraft:grass': 5,
                     'minecraft:grass_block': 48,
                     'minecraft:gravel': 5,
                     'minecraft:hay_block': 18,
                     'minecraft:large_fern': 1,
                     'minecraft:lectern': 3,
                     'minecraft:lilac': 10,
                     'minecraft:magma_block': 5,
                     'minecraft:mossy_cobblestone': 1,
                     'minecraft:netherrack': 4,
                     'minecraft:oak_fence': 1,
                     'minecraft:oak_leaves': 9,
                     'minecraft:oak_log': 13,
                     'minecraft:oak_planks': 1,
                     'minecraft:oak_sapling': 1,
                     'minecraft:oak_stairs': 2,
                     'minecraft:podzol': 3,
                     'minecraft:potatoes': 7,
                     'minecraft:sand': 23,
                     'minecraft:seagrass': 2,
                     'minecraft:spruce_leaves': 1,
                     'minecraft:sugar_cane': 2,
                     'minecraft:sweet_berry_bush': 3,
                     'minecraft:tall_grass': 2,
                     'minecraft:torch': 4,
                     'minecraft:wall_torch': 2,
                     'minecraft:wheat': 53,
                     'minecraft:white_bed': 9,
                     'minecraft:yellow_bed': 6},
 'minecraft:picked_up': {'minecraft:apple': 1,
                         'minecraft:beef': 2,
                         'minecraft:bread': 2,
                         'minecraft:brown_mushroom': 1,
                         'minecraft:carrot': 17,
                         'minecraft:chest': 1,
                         'minecraft:chicken': 7,
                         'minecraft:coarse_dirt': 2,
                         'minecraft:composter': 1,
                         'minecraft:copper_ingot': 1,
                         'minecraft:crafting_table': 4,
                         'minecraft:dandelion': 2,
                         'minecraft:dirt': 139,
                         'minecraft:egg': 6,
                         'minecraft:feather': 11,
                         'minecraft:flint': 1,
                         'minecraft:gold_block': 1,
                         'minecraft:grass_block': 1,
                         'minecraft:gravel': 4,
                         'minecraft:hay_block': 18,
                         'minecraft:iron_ingot': 11,
                         'minecraft:leather': 4,
                         'minecraft:lectern': 3,
                         'minecraft:lilac': 10,
                         'minecraft:magma_block': 1,
                         'minecraft:mangrove_log': 3,
                         'minecraft:mossy_cobblestone': 1,
                         'minecraft:mutton': 10,
                         'minecraft:oak_boat': 2,
                         'minecraft:oak_fence': 1,
                         'minecraft:oak_log': 15,
                         'minecraft:oak_sapling': 1,
                         'minecraft:oak_stairs': 2,
                         'minecraft:poppy': 5,
                         'minecraft:porkchop': 9,
                         'minecraft:potato': 7,
                         'minecraft:rotten_flesh': 1,
                         'minecraft:salmon': 1,
                         'minecraft:sand': 47,
                         'minecraft:spruce_log': 3,
                         'minecraft:stick': 2,
                         'minecraft:sugar_cane': 8,
                         'minecraft:sweet_berries': 2,
                         'minecraft:torch': 7,
                         'minecraft:wheat': 2,
                         'minecraft:wheat_seeds': 95,
                         'minecraft:white_banner': 1,
                         'minecraft:white_bed': 11,
                         'minecraft:white_wool': 8,
                         'minecraft:wooden_axe': 1,
                         'minecraft:wooden_pickaxe': 1,
                         'minecraft:yellow_bed': 9},
 'minecraft:used': {'minecraft:bucket': 5,
                    'minecraft:composter': 1,
                    'minecraft:cooked_chicken': 4,
                    'minecraft:crafting_table': 4,
                    'minecraft:dirt': 115,
                    'minecraft:golden_shovel': 1,
                    'minecraft:grass_block': 1,
                    'minecraft:gravel': 1,
                    'minecraft:iron_pickaxe': 136,
                    'minecraft:lectern': 2,
                    'minecraft:mutton': 9,
                    'minecraft:oak_boat': 3,
                    'minecraft:oak_sapling': 4,
                    'minecraft:sand': 23,
                    'minecraft:sweet_berries': 2,
                    'minecraft:water_bucket': 5,
                    'minecraft:wheat_seeds': 33,
                    'minecraft:white_bed': 8,
                    'minecraft:wooden_axe': 30,
                    'minecraft:wooden_pickaxe': 36,
                    'minecraft:wooden_sword': 110,
                    'minecraft:yellow_bed': 4}}
'''
