# Minecraft Randomized Crafting Recipe
## Description:
This datapack will randomize all crafting recipes in minecraft!
## Roll Recipes:
The version of minecraft already has all crafting recipes randomized once over, besides a few exceptions (see below). If you want to do a reroll, do the following:
* open up the datapack 
* run ShuffleRecipes.py<br>
## Change Exclusions: 
If you want to change which files are ignored in the randomization, do the following: (Note: As far as I can tell, a few recipes are not changeable, though I haven't tested this extensively yet)
* Open up the datapack
* open shuffleRecipes.py in a text editor
* At the top of the file (line 5), there is an AVOID_FILES variable. Any *filename* Put in this Set will be ignored by the code. Vice Versa, any file that is excluded should be included in the randomize. The defaults are listed in the "Execptions" Group Below.
* Once done, save the file, and use the steps above to run it
* Have fun!
## Default Exclusions (Recipes that will not change from playthrough to playthrough):
* Crafting Tables
* Furnaces
* Awkward Potion
* Splash Potion
* Dragon Breath Potion
## Known Bugs:
* Dyes are not properly implemented