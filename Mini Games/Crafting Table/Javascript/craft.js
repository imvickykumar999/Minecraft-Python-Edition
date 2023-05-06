var COBBLESTONE = 4;
var WOOD_PLANK = 5;
var WOOD = 17;
var TORCH = 50;
var CHEST = 54;
var CRAFTING_TABLE = 58;
var FURNACE = 61;
var REDSTONETORCH = 76;
var REDSTONE_BLOCK = 152;
var IRON_SHOVEL = 256;
var IRON_PICKAXE = 257;
var IRON_AXE = 258;
var FLINT_AND_STEEL = 259;
var BOW = 261;
var ARROW = 262;
var COAL = 263;
var DIAMOND = 264;
var IRON_INGOT = 265;
var GOLD = 266;
var IRON_SWORD = 267;
var WOODEN_SWORD = 268;
var WOODEN_SHOVEL = 269;
var WOODEN_PICKAXE = 270;
var WOODEN_AXE = 271;
var STONE_SWORD = 272;
var STONE_SHOVEL = 273;
var STONE_PICKAXE = 274;
var STONE_AXE = 275;
var DIAMOND_SWORD = 276;
var DIAMOND_SHOVEL = 277;
var DIAMOND_PICKAXE = 278;
var DIAMOND_AXE = 279;
var STICK = 280;
var GOLDEN_SWORD = 283;
var GOLDEN_SHOVEL = 284;
var GOLDEN_PICKAXE = 285;
var GOLDEN_AXE = 286;
var STRING = 287;
var FEATHER = 288;
var WOODEN_HOE = 290;
var STONE_HOE = 291;
var IRON_HOE = 292;
var DIAMOND_HOE = 293;
var GOLDEN_HOE = 294;
var FLINT = 318;
var BUCKET = 325;
var REDSTONE = 331;
var COMPASS = 345;
var FISHING_ROD = 346;
var CLOCK = 347;

var craftTable = [0,0,0,0,0,0,0,0,0];
var inventory = [COBBLESTONE,WOOD,IRON_INGOT,GOLD,DIAMOND,REDSTONE,STRING,FEATHER,FLINT,COAL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
var selectedCell;
var selectedIngredient=0;
var newItem=0;

var recipes = [];
recipes.push(["Wood Planks",WOOD_PLANK,[0,0,0,0,WOOD,0,0,0,0]]);
recipes.push(["Stick",STICK,[0,0,0,0,WOOD_PLANK,0,0,WOOD_PLANK,0]]);
recipes.push(["Bow",BOW,[STRING,STICK,0,STRING,0,STICK,STRING,STICK,0]]);
recipes.push(["Arrow",ARROW,[0,FLINT,0,0,STICK,0,0,FEATHER,0]]);
recipes.push(["Torch",TORCH,[0,0,0,0,COAL,0,0,STICK,0]]);
recipes.push(["Redstone Torch",REDSTONETORCH,[0,0,0,0,REDSTONE,0,0,STICK,0]]);
recipes.push(["Redstone Block",REDSTONE_BLOCK,[REDSTONE,REDSTONE,REDSTONE,REDSTONE,REDSTONE,REDSTONE,REDSTONE,REDSTONE,REDSTONE]]);
recipes.push(["Chest",CHEST,[WOOD_PLANK,WOOD_PLANK,WOOD_PLANK,WOOD_PLANK,0,WOOD_PLANK,WOOD_PLANK,WOOD_PLANK,WOOD_PLANK]]);
recipes.push(["Crafting Table",CRAFTING_TABLE,[0,0,0,WOOD_PLANK,WOOD_PLANK,0,WOOD_PLANK,WOOD_PLANK,0]]);
recipes.push(["Furnace",FURNACE,[COBBLESTONE,COBBLESTONE,COBBLESTONE,COBBLESTONE,0,COBBLESTONE,COBBLESTONE,COBBLESTONE,COBBLESTONE]]);
recipes.push(["Bucket",BUCKET,[0,0,0,IRON_INGOT,0,IRON_INGOT,0,IRON_INGOT,0]]);
recipes.push(["Flint and Steel",FLINT_AND_STEEL,[0,0,0,IRON_INGOT,0,0,0,FLINT,0]]);
recipes.push(["Wooden Axe",WOODEN_AXE,[WOOD_PLANK,WOOD_PLANK,0,WOOD_PLANK,STICK,0,0,STICK,0]]);
recipes.push(["Stone Axe",STONE_AXE,[COBBLESTONE,COBBLESTONE,0,COBBLESTONE,STICK,0,0,STICK,0]]);
recipes.push(["Iron Axe",IRON_AXE,[IRON_INGOT,IRON_INGOT,0,IRON_INGOT,STICK,0,0,STICK,0]]);
recipes.push(["Diamond Axe",DIAMOND_AXE,[DIAMOND,DIAMOND,0,DIAMOND,STICK,0,0,STICK,0]]);
recipes.push(["Golden Axe",GOLDEN_AXE,[GOLD,GOLD,0,GOLD,STICK,0,0,STICK,0]]);
recipes.push(["Wooden Hoe",WOODEN_HOE,[WOOD_PLANK,WOOD_PLANK,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Stone Hoe",STONE_HOE,[COBBLESTONE,COBBLESTONE,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Iron Hoe",IRON_HOE,[IRON_INGOT,IRON_INGOT,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Diamond Hoe",DIAMOND_HOE,[DIAMOND,DIAMOND,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Golden Hoe",GOLDEN_HOE,[GOLD,GOLD,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Wooden Pickaxe",WOODEN_PICKAXE,[WOOD_PLANK,WOOD_PLANK,WOOD_PLANK,0,STICK,0,0,STICK,0]]);
recipes.push(["Stone Pickaxe",STONE_PICKAXE,[COBBLESTONE,COBBLESTONE,COBBLESTONE,0,STICK,0,0,STICK,0]]);
recipes.push(["Iron Pickaxe",IRON_PICKAXE,[IRON_INGOT,IRON_INGOT,IRON_INGOT,0,STICK,0,0,STICK,0]]);
recipes.push(["Diamond Pickaxe",DIAMOND_PICKAXE,[DIAMOND,DIAMOND,DIAMOND,0,STICK,0,0,STICK,0]]);
recipes.push(["Golden Pickaxe",GOLDEN_PICKAXE,[GOLD,GOLD,GOLD,0,STICK,0,0,STICK,0]]);
recipes.push(["Wooden Shovel",WOODEN_SHOVEL,[0,WOOD_PLANK,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Stone Shovel",STONE_SHOVEL,[0,COBBLESTONE,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Iron Shovel",IRON_SHOVEL,[0,IRON_INGOT,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Diamond Shovel",DIAMOND_SHOVEL,[0,DIAMOND,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Golden Shovel",GOLDEN_SHOVEL,[0,GOLD,0,0,STICK,0,0,STICK,0]]);
recipes.push(["Wooden Sword",WOODEN_SWORD,[0,WOOD_PLANK,0,0,WOOD_PLANK,0,0,STICK,0]]);
recipes.push(["Stone Sword",STONE_SWORD,[0,COBBLESTONE,0,0,COBBLESTONE,0,0,STICK,0]]);
recipes.push(["Iron Sword",IRON_SWORD,[0,IRON_INGOT,0,0,IRON_INGOT,0,0,STICK,0]]);
recipes.push(["Diamond Sword",DIAMOND_SWORD,[0,DIAMOND,0,0,DIAMOND,0,0,STICK,0]]);
recipes.push(["Golden Sword",GOLDEN_SWORD,[0,GOLD,0,0,GOLD,0,0,STICK,0]]);
recipes.push(["Fishing Rod",FISHING_ROD,[0,0,STICK,0,STICK,STRING,STICK,0,STRING]]);


//Add newly crafted item to the inventory (if it's not already there)
function addItemToInventory(){
  var inventoryIsFull=true;
  if (newItem!=0) {
    //First check if this item is not already in the inventory
    if (inventory.indexOf(newItem)==-1) {  
      //Then find an empty location in the inventory
      for (var i=0;i<inventory.length;i++) {
        if (inventory[i]==0) {
          //Empty location spotted. Add item to the inventory
          inventoryIsFull =false;
          inventory[i]=newItem;
          document.getElementById("inventory-"+i).innerHTML="<IMG src='http://www.101computing.net/mc/" + + newItem + "-0.png'>";
          break; 
        }
      }
      if (inventoryIsFull) alert("Inventory is full!");
    } else {
      alert("This item is already in your inventory!")
    }
  }
}

//A function to compare a recipe with the content of the craft table
function checkRecipe(recipe) {
  var match=true; 
  for (var i = 0; i < 9; i++) {
     if (recipe[i]!=craftTable[i]) {
       match=false;
       break;
     }
   }
  return match;
}

//A function to compare the craft table with all recipes to see if an item can be crafted
function craft() {
  //Check each recipe one at a time
  document.getElementById("result").innerHTML="";
  newItem="";
  for (var i = 0; i < recipes.length; i++) {
    if (checkRecipe(recipes[i][2])) {
      newItem=recipes[i][1];
      //Craft the new item!
      document.getElementById("result").innerHTML="<IMG src='http://www.101computing.net/mc/" + + recipes[i][1] + "-0.png'><br/>" + recipes[i][0] + "<BR/>Click on this item to add it to your inventory.";
       break;
    }
  }
  }

//Highlight inventory item when user click on it
function selectInventoryItem(cell_ID) {
  if (selectedCell) {
    selectedCell.style.backgroundColor="#8b8b8b";
  }
  selectedCell = document.getElementById("inventory-" + cell_ID);
  selectedCell.style.backgroundColor="#88FF88";
  selectedIngredient = inventory[cell_ID];
}

//Replace ingredient on craft table when the user click on one of the 9 cells of the craft table
function selectCraftTable(cell_ID) {
  var craftTableCell = document.getElementById("craftTable-" + cell_ID);
  if (craftTableCell.innerHTML=="") {
    if (selectedCell) {
      craftTableCell.innerHTML=selectedCell.innerHTML;
      craftTable[cell_ID]=selectedIngredient;
    }
  } else {
    craftTableCell.innerHTML="";
    craftTable[cell_ID]=0;
  }
  craft();
}