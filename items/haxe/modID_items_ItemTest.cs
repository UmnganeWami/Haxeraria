namespace modID.items.haxe {
	class ItemTest: Terraria.ModLoader.ModItem {
		public override void SetStaticDefaults() {
			this.DisplayName.SetDefault("Haxe");
			this.Tooltip.SetDefault("haxe logo lmao");
		}

		public override void SetDefaults() {
			this.Item.UseSound = Terraria.ID.SoundID.DD2_GoblinBomb;
			this.Item.useStyle = 4;
			this.Item.useTime = 45;
			this.Item.useAnimation = 45;
			this.Item.consumable = true;
		}

		public override void AddRecipes() {
			Terraria.Recipe recipe = this.CreateRecipe();

			recipe.AddIngredient(Terraria.ID.ItemID.DirtBlock, 1);
			recipe.AddTile(Terraria.ID.TileID.WorkBenches);
			recipe.Register();
		}

		public override bool? UseItem(Terraria.Player plr) {
			this.Mod.Logger.Debug("USED HAXE ITEM!");
			Terraria.NPC.SpawnOnPlayer(plr.whoAmI, Terraria.ModLoader.ModContent.Find<Terraria.ModLoader.ModNPC>(this.Mod.Name, "EnemyTest").Type);
			plr.QuickSpawnItem(plr.GetSource_ItemUse(this.Item), Terraria.ID.ItemID.Zenith, 1);
			plr.QuickSpawnItem(plr.GetSource_ItemUse(this.Item), Terraria.ModLoader.ModContent.Find<Terraria.ModLoader.ModItem>(this.Mod.Name, "ItemTest").Type, 1);

			return true;
		}
	}
}
