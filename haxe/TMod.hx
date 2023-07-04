package;


abstract TypeId<T>(Int) to Int {}

extern class TMod {
    @:native("Terraria.ModLoader.ModContent.NPCType")
    public static function NPCType<T:ModNPC>():TypeId<T>{};

    @:native("Terraria.ModLoader.ModContent.Find<Terraria.ModLoader.ModItem>")
    public static function FindModItem(modID:String, itemName:String):ModItem{};
    
    @:native("Terraria.ModLoader.ModContent.Find<Terraria.ModLoader.ModNPC>")
    public static function FindModNpc(modID:String, npcName:String):ModNPC{};

    @:native("Terraria.ModLoader.ModContent.ItemType")
    public static function ItemType<T>():Int{};
}

/*
abstract TypeId<T>(Int) to Int {}
function NPCType<T:ModNPC>():TypeId<T>;
var id:TypeId<MyNpc> = NpcType();
*/
@:native("Terraria.ModLoader.NPCSpawnInfo")
extern class NPCSpawnInfo {

}

@:native("Terraria.ModLoader.Utilities.SpawnCondition")
extern class SpawnCondition {
    var Chance:Int;
}

@:native("Terraria.ModLoader.ModItem")
extern class ModItem {
    var Mod:MOD;
    var Tooltip:Tooltip;
    var DisplayName:ModTranslation;
    var Item:Item;
    var Type:Int;
    function CreateRecipe():Recipe{};
    function CanUseItem(plr:Player):Bool{};
    function UseItem(plr:Player):Null<Bool>{};
    function SetStaticDefaults():Void{};
    function SetDefaults():Void{};
    function AddRecipes():Void{};
}

@:native("Terraria.Item")
extern class Item {
    var UseSound:SoundStyle;
    var damage:Int;
    var width:Int;
    var height:Int;
    var knockBack:Int;
    var useStyle:Int;
    var useTime:Int;
    var useAnimation:Int;
    var consumable:Bool;
    @:native("Terraria.Item.BannerToItem")
    public static function BannerToItem(npc:Int):Void{};
}

@:native("Terraria.ModLoader.ModNPC")
extern class ModNPC {
    var MOD:MOD;
    var TownNPCStayingHomeless:Bool;
    var NPC:NPC;
    var DisplayName:ModTranslation;
    var Type:Int;
    function SpawnChance(spawnInfo:NPCSpawnInfo):Float{};
    function SetDefaults():Void{};
    function HitEffect():Void{};
    function SetStaticDefaults():Void{};
}

extern class NPC {
    var width:Int;
    var height:Int;
    var damage:Int;
    var defense:Int;
    var lifeMax:Int;
    var HitSound:SoundStyle;
    var DeathSound:SoundStyle;
    var value:Float;
    var knockBackResist:Float;
    var aiStyle:Int;
    var aiType:Int;
    var animationType:Int;
    var banner:Int;
    var bannerItem:Int;
    var type:Int;
    @:native("Terraria.NPC.SpawnOnPlayer")
    public static function SpawnOnPlayer(plr:Int, enemy:Dynamic):Void{};
}

extern class MOD {
    var Name:String;
    var Logger:ILOG;
}

extern class ILOG {
    public function Info(text:String):Void{};
    public function Warn(text:String):Void{};
    public function Error(text:String):Void{};
    public function Fatal(text:String):Void{};
    public function Debug(text:String):Void{};
}

/**
Mod.Logger.Info("This is an informational log"); // at log-level INFO
Mod.Logger.InfoFormat("This is a formatted informational log from {0}", Mod.Name);

Mod.Logger.Warn("This is a warning"); // at log-level WARN
Mod.Logger.WarnFormat("This is a warning from {0}", Mod.Name);

Mod.Logger.Error("An error occurred"); // at log-level ERROR
Mod.Logger.ErrorFormat("An error occurred: {0}", e.StackTrace);

Mod.Logger.Fatal("Something fatal happened"); // at log-level FATAL
Mod.Logger.FatalFormat("Something fatal happened: {0}", e.StackTrace);

Mod.Logger.Debug("Some debug info"); // at log-level DEBUG
Mod.Logger.DebugFormat("Some debug info: ({0}, {1})", x, y);
*/

@:native("Terraria.ModLoader.ModTranslation")
extern class ModTranslation {
    function SetDefault(string:String):Void{};
}

@:native("Terraria.Player")
extern class Player {
    public function GetSource_ItemUse(item:Item):Dynamic{};
    public function QuickSpawnItem(source:Dynamic, item:Int, amount:Int):Int{};
    public var whoAmI:Dynamic;
}

@:native("Terraria.Audio.SoundStyle")
extern class SoundStyle {
    public function new(file:String){};
}

@:native("Terraria.Audio.SoundEngine")
extern class SoundEngine {
    @:native("Terraria.Audio.SoundEngine.PlaySound") //shitass
    public static function PlaySound(fileToPlay:SoundStyle):Void{};
}

extern class Tooltip {
    function SetDefault(description:String):Void{};
}

@:native("Terraria.Recipe")
extern class Recipe{
    function AddIngredient(itemID:Int, number:Int):Void{};
    function AddTile(tileID:Int):Void{};
    function Register():Void{};
}
