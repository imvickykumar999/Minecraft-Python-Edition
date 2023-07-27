
import json
from pprint import pprint

with open(r'C:\Users\Vicky\AppData\Roaming\.minecraft\saves\Demo_World\stats\8792cc36-8230-8cff-e745-c0e32290caa2.json') as f:
    x = f.read()
    x = json.loads(x)

# pprint(x['stats']['minecraft:picked_up'])
pprint(x['stats'])


'''
{'minecraft:crafted': {'minecraft:crafting_table': 1,
                       'minecraft:oak_planks': 4},
 'minecraft:custom': {'minecraft:crouch_one_cm': 654,
                      'minecraft:damage_dealt': 220,
                      'minecraft:damage_taken': 160,
                      'minecraft:fall_one_cm': 2845,
                      'minecraft:fly_one_cm': 417,
                      'minecraft:jump': 100,
                      'minecraft:mob_kills': 3,
                      'minecraft:play_time': 9548,
                      'minecraft:sneak_time': 421,
                      'minecraft:sprint_one_cm': 12675,
                      'minecraft:time_since_death': 9548,
                      'minecraft:time_since_rest': 9548,
                      'minecraft:total_world_time': 36329,
                      'minecraft:walk_on_water_one_cm': 2677,
                      'minecraft:walk_one_cm': 37041,
                      'minecraft:walk_under_water_one_cm': 944},
 'minecraft:killed': {'minecraft:chicken': 1,
                      'minecraft:pig': 1,
                      'minecraft:sheep': 1},
 'minecraft:mined': {'minecraft:dirt': 16,
                     'minecraft:grass': 2,
                     'minecraft:grass_block': 9,
                     'minecraft:gravel': 3,
                     'minecraft:lilac': 10,
                     'minecraft:oak_leaves': 5,
                     'minecraft:oak_log': 3,
                     'minecraft:sand': 20},
 'minecraft:picked_up': {'minecraft:chicken': 1,
                         'minecraft:dirt': 25,
                         'minecraft:feather': 2,
                         'minecraft:gravel': 3,
                         'minecraft:lilac': 10,
                         'minecraft:mutton': 1,
                         'minecraft:oak_log': 3,
                         'minecraft:porkchop': 3,
                         'minecraft:sand': 20,
                         'minecraft:wheat_seeds': 1,
                         'minecraft:white_wool': 1},
 'minecraft:used': {'minecraft:dirt': 12, 'minecraft:sand': 12}}
 '''
