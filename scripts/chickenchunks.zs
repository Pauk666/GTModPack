var ChunkLoader = <ChickenChunks:chickenChunkLoader:0>;
var SpotLoader = <ChickenChunks:chickenChunkLoader:1>;
var Obsidian = <ore:obsidian>;
var plateGold = <ore:plateGold>;
var IndustrialDiamond = <IC2:itemPartIndustrialDiamond>;
var EnderPearl = <minecraft:ender_pearl>;

recipes.remove(<ChickenChunks:chickenChunkLoader:*>);

recipes.addShaped(SpotLoader, [
[EnderPearl],
[plateGold],
[Obsidian]]);

recipes.addShaped(ChunkLoader, [
[SpotLoader, SpotLoader, SpotLoader],
[SpotLoader, IndustrialDiamond, SpotLoader],
[SpotLoader, SpotLoader, SpotLoader]]);



