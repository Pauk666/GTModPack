val Wrench = <ore:craftingToolWrench>;
val Fence = <minecraft:fence>;
val WoodPlate = <ore:plateWood>;
val IronPlate = <ore:plateIron>;
val GoldPlate = <ore:plateGold>;
val DiamondPlate = <ore:plateDiamond>;
val ObsidianPlate = <ore:plateObsidian>;
val EndStone = <minecraft:end_stone>;
val EnderEyePlate = <ore:plateEnderEye>;
val EmeraldPlate = <ore:plateEmerald>;
val Piston = <ore:craftingPiston>;
//Structural MK 1
recipes.remove(<JABBA:upgradeStructural>);
//Structural MK 2
recipes.remove(<JABBA:upgradeStructural:1>);
//Structural MK 3
recipes.remove(<JABBA:upgradeStructural:2>);
//Structural MK 4
recipes.remove(<JABBA:upgradeStructural:3>);
//Structural MK 5
recipes.remove(<JABBA:upgradeStructural:4>);
//Structural MK 6
recipes.remove(<JABBA:upgradeStructural:5>);
//Structural MK 7
recipes.remove(<JABBA:upgradeStructural:6>);
//B Space Upgrade
recipes.remove(<JABBA:upgradeCore:1>);
//Redstone Upgrade
recipes.remove(<JABBA:upgradeCore:2>);
//Hopper Upgrade
recipes.remove(<JABBA:upgradeCore:3>);
//Void Upgrade
recipes.remove(<JABBA:upgradeCore:7>);
//JABBA Hammer
recipes.remove(<JABBA:hammer>);
//tuning Fork
recipes.remove(<JABBA:tuningFork>);
//Dolly
recipes.remove(<JABBA:mover>);
//Diamond Dolly
recipes.remove(<JABBA:moverDiamond>);

//add Recipes

//Structural MK 1
recipes.addShaped(<JABBA:upgradeStructural>, [
[Fence, WoodPlate, Fence],
[WoodPlate, Wrench, WoodPlate],
[Fence, WoodPlate, Fence]]);

//Structural MK 2
recipes.addShaped(<JABBA:upgradeStructural:1>, [
[Fence, IronPlate, Fence],
[IronPlate, Wrench, IronPlate],
[Fence, IronPlate, Fence]]);

//Structural MK 3
recipes.addShaped(<JABBA:upgradeStructural:2>, [
[Fence, GoldPlate, Fence],
[GoldPlate, Wrench, GoldPlate],
[Fence, GoldPlate, Fence]]);

//Structural MK 4
recipes.addShaped(<JABBA:upgradeStructural:3>, [
[Fence, DiamondPlate, Fence],
[DiamondPlate, Wrench, DiamondPlate],
[Fence, DiamondPlate, Fence]]);

//Structural MK 5
recipes.addShaped(<JABBA:upgradeStructural:4>, [
[Fence, ObsidianPlate, Fence],
[ObsidianPlate, Wrench,ObsidianPlate],
[Fence, ObsidianPlate, Fence]]);

//Structural MK 6
recipes.addShaped(<JABBA:upgradeStructural:5>, [
[Fence, EnderEyePlate, Fence],
[EndStone, Wrench, EndStone],
[Fence, EnderEyePlate, Fence]]);

//Structural MK 7
recipes.addShaped(<JABBA:upgradeStructural:6>, [
[Fence, EmeraldPlate, Fence],
[EmeraldPlate, Wrench, EmeraldPlate],
[Fence, EmeraldPlate, Fence]]);

//B Space Upgrade
recipes.addShaped(<JABBA:upgradeCore:1>, [
[null, Piston, null],
[WoodPlate, <ore:blockEnderEye>, WoodPlate],
[null, Piston, null]]);

//Redstone Upgrade
recipes.addShaped(<JABBA:upgradeCore:2>, [
[null, Piston, null],
[WoodPlate, <ore:blockRedstone>, WoodPlate],
[null, Piston, null]]);

//Hopper Upgrade
recipes.addShaped(<JABBA:upgradeCore:3>, [
[null, Piston, null],
[WoodPlate, <minecraft:hopper>, WoodPlate],
[null, Piston, null]]);

//Void Upgrade
recipes.addShaped(<JABBA:upgradeCore:7>, [
[null, Piston, null],
[Piston, <minecraft:obsidian>, Piston],
[null, Piston, null]]);

//Sticker with Sticky Resin
recipes.addShaped(<JABBA:upgradeSide> * 4, [
[null, <ore:platePaper>, null],
[<ore:platePaper>, <IC2:itemHarz>, <ore:platePaper>],
[null, <ore:platePaper>, null]]);


//JABBA Hammer
recipes.addShaped(<JABBA:hammer>, [
[<ore:toolHeadHammerIron>, <ore:toolHeadHammerIron>, <ore:toolHeadHammerIron>],
[null, <ore:stickWood>, null],
[null, <ore:stickWood>, null]]);

//tunig Fork
recipes.addShaped(<JABBA:tuningFork>, [
[<ore:stickSteelMagnetic>, null, <ore:stickSteelMagnetic>],
[<ore:stickSteel>, <ore:gemEnderEye>, <ore:stickSteel>],
[null, <ore:stickSteel>, null]]);

//Dolly
recipes.addShaped(<JABBA:mover>, [
[null, <minecraft:iron_bars>, <ore:stickIron>],
[null, <minecraft:iron_bars>, <ore:stickIron>],
[<ore:plateIron>, <ore:plateIron>, <ore:roundRubber>]]);

//Diamond Dolly
recipes.addShaped(<JABBA:moverDiamond>, [
[null, null, <ore:stickDiamond>],
[null, <JABBA:mover>, <ore:stickDiamond>],
[<ore:plateDiamond>, <ore:plateDiamond>, <ore:roundRubber>]]);