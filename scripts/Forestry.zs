import minetweaker.item.IItemStack;
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.forestry.Still;
import mods.gregtech.Mixer;
import mods.gregtech.Assembler;
import mods.nei.NEI;

val diamondTube = <Forestry:thermionicTubes:5>;

val Saw = <ore:craftingToolSaw>;
val HHammer = <ore:craftingToolHardHammer>;
val SHammer = <ore:craftingToolSoftHammer>;
val Wrench = <ore:craftingToolWrench>;
val File = <ore:craftingToolFile>;
val Screwdriver = <ore:craftingToolScrewdriver>;
val Mortar = <ore:craftingToolMortar>;
val Knife = <ore:craftingToolKnife>;

val SteelCell = <gregtech:gt.metaitem.01:32405>;
val BronzePlate = <ore:plateBronze>;
val DenseBronzePlate = <ore:plateDenseBronze>;
val StoneBrickSlab = <minecraft:stone_slab:5>;
val MotorLV = <gregtech:gt.metaitem.01:32600>;
val ConveyorLV = <gregtech:gt.metaitem.01:32630>;
val PumpModuleLV = <gregtech:gt.metaitem.01:32610>;
val BrassPipeM = <ore:pipeMediumBrass>;
val SteelPipeM = <ore:pipeMediumSteel>;
val BasicCircuit = <ore:circuitBasic>;
val RedAlloyWire = <ore:wireGt01RedAlloy>;
val RubberPlate = <ore:plateRubber>;
val gearSteel = <ore:gearSteel>;
val gearBronze = <ore:gearBronze>;
val IronRod = <ore:stickAnyIron>;
val CopperBolt = <ore:boltAnyCopper>;
val gtAsh = <gregtech:gt.metaitem.01:2815>;
val icAsh = <IC2:itemDust2:3>;
val fAsh = <Forestry:ash>;
val Compost = <Forestry:fertilizerBio>;
val DirtAny = <minecraft:dirt:*>;
val Wheat = <minecraft:wheat>;
val ScentedPaneling = <Forestry:craftingMaterial:6>;
val EnderTube = <Forestry:thermionicTubes:12>;
val EnderEye = <minecraft:ender_eye>;
val EndStone = <minecraft:end_stone>;

//Soldering Iron
recipes.addShaped(<Forestry:solderingIron>,[
 [CopperBolt, null, null],
 [null, IronRod, RubberPlate],
 [null, RubberPlate, IronRod]]);

//Scented Paneling
Assembler.addRecipe(ScentedPaneling, <minecraft:planks:*> * 3, <Forestry:royalJelly>, <liquid:for.honey> * 500, 1200, 30);


//Compost
recipes.remove(Compost);
Mixer.addRecipe (Compost * 2, null, [Wheat * 4, DirtAny], <liquid:water> * 100, 64, 8);
Mixer.addRecipe (Compost, null, [fAsh * 4, DirtAny], <liquid:water> * 100, 64, 8);
Mixer.addRecipe (Compost, null, [gtAsh * 4, DirtAny], <liquid:water> * 100, 64, 8);
Mixer.addRecipe (Compost, null, [icAsh * 4, DirtAny], <liquid:water> * 100, 64, 8);

recipes.remove(<Forestry:scoop>);
/*
val FB = [
<Forestry:ffarm>.withTag({FarmBlock:0}),
<Forestry:ffarm>.withTag({FarmBlock:1}),
<Forestry:ffarm>.withTag({FarmBlock:2}),
<Forestry:ffarm>.withTag({FarmBlock:3}),
<Forestry:ffarm>.withTag({FarmBlock:4}),
<Forestry:ffarm>.withTag({FarmBlock:5}),
<Forestry:ffarm>.withTag({FarmBlock:6}),
<Forestry:ffarm>.withTag({FarmBlock:7}),
<Forestry:ffarm>.withTag({FarmBlock:8}),
<Forestry:ffarm>.withTag({FarmBlock:9}),
<Forestry:ffarm>.withTag({FarmBlock:10})
] as IItemStack[];*/

val FC = [
<minecraft:stonebrick>,
<minecraft:stonebrick:1>,
<minecraft:stonebrick:2>,
<minecraft:brick_block>,
<minecraft:sandstone:1>,
<minecraft:sandstone:2>,
<minecraft:nether_brick>,
<minecraft:stonebrick:3>,
<minecraft:quartz_block>,
<minecraft:quartz_block:1>,
<minecraft:quartz_block:2>
] as IItemStack[];

recipes.remove(<Forestry:ffarm:*>);
//replacing recipes for Farms.
for i, X in FC {
  recipes.addShaped(<Forestry:ffarm>.withTag({FarmBlock:i}),[
  [BronzePlate, StoneBrickSlab, BronzePlate],
  [FC[i], diamondTube, FC[i]],
  [HHammer.transformDamage(100), gearSteel, File.transformDamage(100)]]);
  //gearbox
  recipes.addShaped(<Forestry:ffarm:2>.withTag({FarmBlock:i}), [
  [gearBronze, gearSteel, gearBronze],
  [gearSteel,  <Forestry:ffarm>.withTag({FarmBlock:i}), gearSteel],
  [gearBronze, MotorLV, gearBronze]]);
  //Hatch
  recipes.addShaped(<Forestry:ffarm:3>.withTag({FarmBlock:i}), [
  [null, <Forestry:thermionicTubes:9>, null],
  [ConveyorLV, <Forestry:ffarm>.withTag({FarmBlock:i}), ConveyorLV],
  [null, BrassPipeM, null]]);
  //vent
  recipes.addShaped(<Forestry:ffarm:4>.withTag({FarmBlock:i}), [
  [null, SteelPipeM, null],
  [PumpModuleLV, <Forestry:ffarm>.withTag({FarmBlock:i}), PumpModuleLV],
  [null, SteelPipeM, null]]);
  //control
  recipes.addShaped(<Forestry:ffarm:5>.withTag({FarmBlock:i}), [
  [null, <Forestry:thermionicTubes:4>, null],
  [BasicCircuit, <Forestry:ffarm>.withTag({FarmBlock:i}),BasicCircuit],
  [null, RedAlloyWire,null]]);
}


//remove machines and engines
recipes.remove(<Forestry:core:*>);
recipes.remove(<Forestry:engine:*>);
recipes.remove(<Forestry:factory:*>);
recipes.remove(<Forestry:factory2:*>);



ThermionicFabricator.removeCast(<*>);
Assembler.addRecipe(EnderTube * 4, EnderEye * 2, EndStone * 5, <liquid:glass> * 72, 64, 32);


Still.removeRecipe(<*>);
Carpenter.removeRecipe(<*>);

//sturdy casings nerf
recipes.remove(<Forestry:sturdyMachine>);

//gears nerf
<ore:gearCopper>.remove(<Forestry:gearCopper>);
<ore:gearBronze>.remove(<Forestry:gearBronze>);
<ore:gearTin>.remove(<Forestry:gearTin>);
recipes.remove(<Forestry:gearBronze>);
recipes.remove(<Forestry:gearCopper>);
recipes.remove(<Forestry:gearTin>);

//cans nerf
recipes.remove(<Forestry:canEmpty>);
recipes.remove(<Forestry:waxCapsule>);
recipes.remove(<Forestry:refractoryEmpty>);

//Fermenter
recipes.addShaped(<Forestry:factory:3>, [
	[DenseBronzePlate, Wrench.transformDamage(100), DenseBronzePlate],
	[SteelCell, <gregtech:gt.blockmachines:502>, SteelCell],
	[DenseBronzePlate, Wrench.transformDamage(100), DenseBronzePlate]]);


//Backpacks
val Leather = <minecraft:leather>;
val String = <minecraft:string>;
val EnderPearl = <minecraft:ender_pearl>;
val WovenSilk = <Forestry:craftingMaterial:3>;

val BacksList = {
<Forestry:apiaristBag>:<Forestry:apicultureChest>,
<Forestry:minerBag>: <gregtech:gt.blockores:*>,
<Forestry:diggerBag>: <minecraft:stone>,
<Forestry:foresterBag>: <minecraft:log>,
<Forestry:hunterBag>: <minecraft:feather>,
<Forestry:adventurerBag>: <minecraft:bone>,
<Forestry:builderBag>: <minecraft:stonebrick>,
<Forestry:lepidopteristBag>: <Forestry:lepidopterology>,
<Railcraft:backpack.trackman.t1>: <minecraft:rail>,
<Railcraft:backpack.iceman.t1>: <minecraft:snow>,
<Railcraft:backpack.apothecary.t1>: <minecraft:potion:*>,
} as IItemStack[IItemStack];

for Bag, Material in BacksList{
	recipes.remove(Bag);
	recipes.addShaped(Bag,[
	  [String, EnderPearl, String],
	  [Leather, Material, Leather],
	  [Leather, Leather, Leather]]);
}

val BacksListT2 = {
<Forestry:minerBagT2>: <Forestry:minerBag>,
<Forestry:diggerBagT2>: <Forestry:diggerBag>,
<Forestry:foresterBagT2>: <Forestry:foresterBag>,
<Forestry:hunterBagT2>: <Forestry:hunterBag>,
<Forestry:adventurerBagT2>: <Forestry:adventurerBag>,
<Forestry:builderBagT2>: <Forestry:builderBag>,
<Railcraft:backpack.trackman.t2>: <Railcraft:backpack.trackman.t1>,
<Railcraft:backpack.iceman.t2>: <Railcraft:backpack.iceman.t1>,
<Railcraft:backpack.apothecary.t2>: <Railcraft:backpack.apothecary.t1>
} as IItemStack[IItemStack];

for BagT2, BagT1 in BacksListT2{
	Assembler.addRecipe(BagT2, BagT1, WovenSilk * 9, <liquid:molten.steel> * 144, 4800, 30);
}









