val Mortar = <ore:craftingToolMortar>;
val Screwdriver = <ore:craftingToolScrewdriver>;
val HHammer = <ore:craftingToolHardHammer>;
val SHammer = <ore:craftingToolSoftHammer>;
val Knife = <ore:craftingToolKnife>;
val Saw = <ore:craftingToolSaw>;
val Wrench = <ore:craftingToolWrench>;
val File = <ore:craftingToolFile>;

val Chest = <minecraft:chest>;
val Dispenser = <minecraft:dispenser>;
val Piston = <minecraft:piston>;
val SPiston = <minecraft:sticky_piston>;
val Slimeball = <minecraft:slime_ball>;
val String = <minecraft:string>;
val PressurePlate = <minecraft:stone_pressure_plate>;
val GoldPressurePlate = <minecraft:light_weighted_pressure_plate>;
val JackOLantern = <minecraft:lit_pumpkin>;
val Pumpkin = <minecraft:pumpkin>;
val Torch = <minecraft:torch>;
val Lever = <minecraft:lever>;
val RSTorch = <minecraft:redstone_torch>;
val EnchantingTable = <minecraft:enchanting_table>;
val RSLamp = <minecraft:redstone_lamp>;
val Log = <ore:logWood>;
val Hopper = <minecraft:hopper>;
val Dropper = <minecraft:dropper>;
val Cobble = <ore:cobblestone>;
val Sugar = <minecraft:sugar>;
val SugarCane = <minecraft:reeds>;
val RSDust = <ore:dustRedstone>;
val Bow = <minecraft:bow>;
val IronBars = <minecraft:iron_bars>;
val IronPlate = <ore:plateAnyIron>;
val IronRod = <ore:stickAnyIron>;
val RedAlloyWire = <ore:wireRedAlloy>;
val RedAlloyRod = <ore:stickRedAlloy>;
val RedAlloyPlate = <ore:plateRedAlloy>;
val GlowstonePlate = <ore:plateGlowstone>;
val Plank = <ore:plankWood>;
val Stone = <minecraft:stone>;
val Coal = <ore:gemCoal>;
val Charcoal = <ore:gemCharcoal>;
val CoalCoke = <ore:fuelCoke>;
val Sulfur = <ore:dustSulfur>;
val Rubber = <ore:itemRawRubber>;
val Stick = <ore:stickWood>;
val GSBlock = <minecraft:glowstone>;

// --- Enchantment Table
 recipes.remove(EnchantingTable);
// --- Dispenser
recipes.remove(Dispenser);
// --- Dropper
recipes.remove(Dropper);
// --- Sticky Piston
recipes.remove(SPiston);
// --- Jack O' Lantern
recipes.remove(JackOLantern);
// --- Pressure Plate
recipes.remove(PressurePlate);
// --- Lever
recipes.remove(Lever);
// --- Redstone Torch
recipes.remove(RSTorch);
// --- Iron Bars
recipes.remove(IronBars);
// --- Redstone Lamp
recipes.remove(RSLamp);
// --- Ender Chest
recipes.remove(<minecraft:ender_chest>);
// --- Clock
recipes.remove(<minecraft:clock>);
// --- Compass
recipes.remove(<minecraft:compass>);
// --- Diamond Sword
recipes.remove(<minecraft:diamond_sword>);
// --- Diamond Shovel
recipes.remove(<minecraft:diamond_shovel>);
// --- Diamond Pickaxe
recipes.remove(<minecraft:diamond_pickaxe>);
// --- Diamond Axe
recipes.remove(<minecraft:diamond_axe>);
// --- Diamond Hoe
recipes.remove(<minecraft:diamond_hoe>);
// --- Diamond Helm
recipes.remove(<minecraft:diamond_helmet>);
// --- Diamond Chestplate
recipes.remove(<minecraft:diamond_chestplate>);
// --- Diamond Leggins
recipes.remove(<minecraft:diamond_leggings>);
// --- Diamond Boots
recipes.remove(<minecraft:diamond_boots>);
// --- Ender Eye
recipes.remove(<minecraft:ender_eye>);
// --- Minecart with Chest
recipes.removeShaped(<minecraft:chest_minecart>);
// --- Minecart with Furnace
recipes.removeShaped(<minecraft:furnace_minecart>);
// --- Minecart with Hopper
recipes.removeShaped(<minecraft:hopper_minecart>);
// --- Sugar
recipes.removeShaped(<minecraft:sugar>);
// --- Cake
recipes.remove(<minecraft:cake>);
// --- Pumpkin Seeds
recipes.remove(<minecraft:pumpkin_seeds>);
// --- Melon Seeds
recipes.remove(<minecraft:melon_seeds>);
// --- remove Oak Slaps
recipes.removeShaped(<minecraft:wooden_slab> * 6, [
[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);






// Sticky Piston
recipes.addShaped(SPiston, [
[null, SHammer, null],
[null, Slimeball, null],
[null, Piston, null]]);

recipes.addShaped(SPiston, [
[null, <ore:CellGlue>, null],
[null, Piston, null]]);

// Jack O' Lantern
recipes.addShapeless(JackOLantern,
[Pumpkin, Torch, Knife]);
// Pressure Plate
recipes.addShaped(PressurePlate, [
[Stone, Stone],
[RedAlloyPlate, RedAlloyPlate]]);

// Lever
recipes.addShapedMirrored(Lever, [
[null, Stick, null],
[null, RedAlloyPlate, null],
[null, Cobble, null]]);

// Redstone Lamp
recipes.addShaped(RSLamp, [
[RedAlloyPlate, GlowstonePlate, RedAlloyPlate],
[GlowstonePlate, GSBlock, GlowstonePlate],
[RedAlloyPlate, RedAlloyWire, RedAlloyPlate]]);

// Sugar
recipes.addShapeless(Sugar,
[Mortar, SugarCane]);

//Iron Horse Armor
recipes.addShaped(<minecraft:iron_horse_armor>, [
[null, null, <minecraft:iron_helmet>],
[<ore:plateIron>, <minecraft:iron_chestplate>, <ore:plateIron>],
[<minecraft:iron_leggings>, <ore:plateIron>, <minecraft:iron_leggings>]]);

//Gold Horse Armor
recipes.addShaped(<minecraft:golden_horse_armor>, [
[null, null, <minecraft:golden_helmet>],
[<ore:plateGold>, <minecraft:golden_chestplate>, <ore:plateGold>],
[<minecraft:golden_leggings>, <ore:plateGold>, <minecraft:golden_leggings>]]);

//Diamond horse Armor
recipes.addShaped(<minecraft:diamond_horse_armor>, [
[null, null, <minecraft:diamond_helmet>],
[<ore:plateDiamond>, <minecraft:diamond_chestplate>, <ore:plateDiamond>],
[<minecraft:diamond_leggings>, <ore:plateDiamond>, <minecraft:diamond_leggings>]]);

//Saddle
recipes.addShaped(<minecraft:saddle>, [
[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
[<minecraft:carpet:*>, <minecraft:carpet:*>, <minecraft:carpet:*>],
[<gregtech:gt.metaitem.01:28032>, <minecraft:string>, <gregtech:gt.metaitem.01:28032>]]);

//Clock
recipes.addShaped(<minecraft:clock>, [
[<gregtech:gt.metaitem.01:28086>, <ore:plateGold>, <gregtech:gt.metaitem.01:28086>],
[<gregtech:gt.metaitem.01:26086>, <minecraft:comparator>, <gregtech:gt.metaitem.01:26086>],
[<gregtech:gt.metatool.01:22>, <gregtech:gt.metaitem.01:27086>, <gregtech:gt.metatool.01:16>]]);

//Compass
recipes.addShaped(<minecraft:compass>, [
[<ore:screwIron>, <ore:paneGlass>, <ore:boltIron>],
[<ore:ringZinc>, <ore:plateIron>, <ore:ringZinc>],
[<ore:boltRedAlloy>, Screwdriver, <ore:screwIron>]]);

//Pumpkin Seeds
recipes.addShapeless(<minecraft:pumpkin_seeds> * 4, [HHammer, <minecraft:pumpkin>]);

//Melon Seeds
recipes.addShapeless(<minecraft:melon_seeds>, [HHammer, <minecraft:melon>]);

//Gunpowder
recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustSmallGunpowder>, <ore:dustSmallGunpowder>, <ore:dustSmallGunpowder>, <ore:dustSmallGunpowder>]);

//Minecart with Chest
recipes.addShaped(<minecraft:chest_minecart>, [
[HHammer, <minecraft:chest>, Wrench],
[null, <minecraft:minecart>, null],
[null, Screwdriver, null]]);

//Minecart with Furnace
recipes.addShaped(<minecraft:furnace_minecart>, [
[HHammer, <minecraft:furnace>, Wrench],
[null, <minecraft:minecart>, null],
[null, Screwdriver, null]]);

//Minecart with Hopper
recipes.addShaped(<minecraft:hopper_minecart>, [
[HHammer, <minecraft:hopper>, Wrench],
[null, <minecraft:minecart>, null],
[null, Screwdriver, null]]);