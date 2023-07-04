package haxe.npcs.haxe;

import TMod.NPCSpawnInfo;
import SpawnConditions;
import TMod.ModNPC;
import SoundID;

class EnemyTest extends ModNPC {
    override function SetStaticDefaults() {
        DisplayName.SetDefault("HaxeTestZombie");
        untyped __cs__("Terraria.Main.npcFrameCount[NPC.type] = Terraria.Main.npcFrameCount[Terraria.ID.NPCID.Zombie]"); //im lazy rn
    }

    override function SetDefaults(){
        NPC.width = 18;
        NPC.height = 40;
        NPC.damage = 14;
        NPC.defense = 6;
        NPC.lifeMax = 200;
        NPC.HitSound =  SoundID.NPCHit1;
        NPC.DeathSound = SoundID.NPCDeath2;
        //NPC.value = 60;
        NPC.knockBackResist = 0.5;
        NPC.aiStyle = 3;
		var testFl:Float = 1.0;
    }

	override function SpawnChance(spawnInfo:NPCSpawnInfo):Float{
		return SpawnConditions.OverworldDay.Chance * 0.5;
	}
}

/*
public override void SetStaticDefaults() {
	DisplayName.SetDefault("Zombie");
	Main.npcFrameCount[npc.type] = Main.npcFrameCount[NPCID.Zombie];
}

public override void SetDefaults() {
	npc.width = 18;
	npc.height = 40;
	npc.damage = 14;
	npc.defense = 6;
	npc.lifeMax = 200;
	npc.HitSound = SoundID.NPCHit1;
	npc.DeathSound = SoundID.NPCDeath2;
	npc.value = 60f;
	npc.knockBackResist = 0.5f;
	npc.aiStyle = 3;
	aiType = NPCID.Zombie;
	animationType = NPCID.Zombie;
	banner = Item.NPCtoBanner(NPCID.Zombie);
	bannerItem = Item.BannerToItem(banner);
}

public override float SpawnChance(NPCSpawnInfo spawnInfo) {
	return SpawnCondition.OverworldNightMonster.Chance * 0.5f;
}

public override void HitEffect(int hitDirection, double damage) {
	for (int i = 0; i < 10; i++) {
		int dustType = Main.rand.Next(139, 143);
		int dustIndex = Dust.NewDust(npc.position, npc.width, npc.height, dustType);
		Dust dust = Main.dust[dustIndex];
		dust.velocity.X = dust.velocity.X + Main.rand.Next(-50, 51) * 0.01f;
		dust.velocity.Y = dust.velocity.Y + Main.rand.Next(-50, 51) * 0.01f;
		dust.scale *= 1f + Main.rand.Next(-30, 31) * 0.01f;
	}
}
*/