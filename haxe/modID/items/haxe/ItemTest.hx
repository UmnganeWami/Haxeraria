package modID.items.haxe;
import TMod;
import TMod.NPCType;
import TMod.NPC;
import TMod.SoundEngine;
import TMod.Player;
import ItemIDs;
import TMod.Recipe;
import TileIDs;
import TMod.ModItem;
import SoundID;

class ItemTest extends ModItem{
    
    override function SetStaticDefaults():Void {
        //set the name of the item
        DisplayName.SetDefault("Haxe");
        //set the description for the item
        Tooltip.SetDefault("haxe logo lmao");
    }

    override function SetDefaults():Void {
        //the sound that using the item does
        Item.UseSound = SoundID.DD2_GoblinBomb;
        //the style you use the item (swinging, eating, stuff like that)
        Item.useStyle = 4;
        //time between uses
        Item.useTime = 45;
        //time for the animation
        Item.useAnimation = 45;
        //is the item consumable
        Item.consumable = true;
    }
    override function AddRecipes():Void {
        var recipe = CreateRecipe();
        //add 1 dirt to the recipe for this item
        recipe.AddIngredient(ItemIDs.DirtBlock, 1);
        //make it so you need the workbench to craft the item
        recipe.AddTile(TileIDs.WorkBenches);
        //register it using the stuff you did before in the function
        recipe.Register();
    }

    override function UseItem(plr:Player):Null<Bool> {
        Mod.Logger.Debug("USED HAXE ITEM!");
        //spawn an enemy of the type "EnemyTest"
        NPC.SpawnOnPlayer(plr.whoAmI, TMod.FindModNpc(Mod.Name, "EnemyTest").Type);
        //give the player a zenith
        plr.QuickSpawnItem(plr.GetSource_ItemUse(Item), ItemIDs.Zenith, 1);
        //give the player an item of the type "ItemTest"
        plr.QuickSpawnItem(plr.GetSource_ItemUse(Item), TMod.FindModItem(Mod.Name, "ItemTest").Type , 1);
        //return value means if do we destroy the item when we use it
        return true;
    };
}

