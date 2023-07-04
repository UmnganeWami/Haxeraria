namespace haxe.npcs.haxe {
	class EnemyTest: Terraria.ModLoader.ModNPC {
		public override void SetStaticDefaults() {
			this.DisplayName.SetDefault("HaxeTestZombie");
			Terraria.Main.npcFrameCount[NPC.type] = Terraria.Main.npcFrameCount[Terraria.ID.NPCID.Zombie];
		}

		public override void SetDefaults() {
			this.NPC.width = 18;
			this.NPC.height = 40;
			this.NPC.damage = 14;
			this.NPC.defense = 6;
			this.NPC.lifeMax = 200;
			this.NPC.HitSound = Terraria.ID.SoundID.NPCHit1;
			this.NPC.DeathSound = Terraria.ID.SoundID.NPCDeath2;
			this.NPC.knockBackResist = 0.5f;
			this.NPC.aiStyle = 3;

			float testFl = 1.0f;
		}

		public override float SpawnChance(NPCSpawnInfo spawnInfo) {
			return Terraria.ModLoader.Utilities.SpawnCondition.OverworldDay.Chance * 0.5f;
		}
	}
}
