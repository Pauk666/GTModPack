import mods.nei.NEI;
import mods.gregtech.Mixer;
import mods.gregtech.Assembler;

val ChemicalGreenDye = <liquid:dye.chemical.dyegreen>;
val ChemicalRedDye = <liquid:dye.chemical.dyered>;
val ChemicalYellowDye = <liquid:dye.chemical.dyeyellow>;
val WaterGreenDye = <liquid:dye.watermixed.dyegreen>;
val WaterRedDye = <liquid:dye.watermixed.dyered>;
val WaterYellowDye = <liquid:dye.watermixed.dyeyellow>;
val Water = <liquid:water>;

val WoodenTie = <Railcraft:part.tie>;
val RedstoneBlock = <ore:blockRedstone>;
val blockSteelGearCasing = <gregtech:gt.blockcasings2:3>;
val TunnelBore = <Railcraft:cart.bore>;
val HHammer = <ore:craftingToolHardHammer>;
val Wrench = <ore:craftingToolWrench>;
val ClayDust = <gregtech:gt.metaitem.01:2805>;
val Sand = <minecraft:sand>;
val WetCokeBrick = <Railcraft:brick.sandy>;
val CokeOven = <Railcraft:machine.alpha:7>;
val TinCable = <gregtech:gt.blockmachines:1246>;
val PlatinumCable = <gregtech:gt.blockmachines:1646>;
val SSteelRod = <ore:stickStainlessSteel>;
val LeadPlate = <ore:plateLead>;
val GoldPlate = <ore:plateGold>; val specificGoldPlate = <gregtech:gt.metaitem.01:17086>; 
val CopperPlate = <ore:plateCopper>;
val SteelPlate= <ore:plateSteel>;
val TinAlloyPlate = <ore:plateTinAlloy>;
val pressurePlateStone = <minecraft:stone_pressure_plate>;
val MetalPost = <Railcraft:post:2>;
val ControllerCircuit = <Railcraft:part.circuit:0>;
val ReceiverCircuit = <Railcraft:part.circuit:1>;
val SignalCircuit = <Railcraft:part.circuit:2>;
val BasicCircuit = <ore:circuitBasic>; val specificBasicCircuit = <IC2:itemPartCircuit>; 
val AdvCircuit = <ore:circuitAdvanced>;
val mfeCart = <Railcraft:cart.energy.mfe>;
val motorHV = <gregtech:gt.metaitem.01:32602>;
val Locomotive = <Railcraft:cart.loco.steam.solid:0>;
val ELocomotive = <Railcraft:cart.loco.electric>;
val BoilerHP = <gregtech:gt.blockmachines:101>;
val MachineController = <gregtech:gt.metaitem.01:32730>;
val BronzeFirebox = <gregtech:gt.blockcasings3:13>;
val SwitchMotor = <Railcraft:signal:2>;
val SwitchLever = <Railcraft:signal:4>;
val IronBars = <minecraft:iron_bars>;
val StandardRail = <Railcraft:part.rail>;
val DiamondPickaxe = <minecraft:diamond_pickaxe>;
val Piston = <minecraft:piston>;
val Book = <ore:bookEmpty>;
val FireboxLiquid = <Railcraft:machine.beta:6>;
val FireboxSolid = <Railcraft:machine.beta:5>;
val FireCharge = <minecraft:fire_charge>;
val FurnaceHighPressure = <gregtech:gt.blockmachines:101>;
val FurnaceSteam = <gregtech:gt.blockmachines:103>;
val CraftingTable = <minecraft:crafting_table>;
val AbyssalBrick = <Railcraft:brick.abyssal>;
val LapotronCrystal = <IC2:itemBatLamaCrystal>;
val Glass = <minecraft:glass>;
val Bucket = <minecraft:bucket>;
val PistonLV = <gregtech:gt.metaitem.01:32640>;
val benchEngraving = <Railcraft:machine.epsilon:5>;
val blockDiamond = <ore:blockDiamond>;
val detectorEnergy = <Railcraft:detector:10>;
val trackDisposal = <Railcraft:track:2264>.withTag({track: "railcraft:track.disposal"});
val fluxTransformer = <Railcraft:machine.epsilon:4>;
val forceTrackEmitter = <Railcraft:machine.epsilon:3>;


mods.railcraft.RockCrusher.removeRecipe(<*>);
recipes.remove(<Railcraft:machine.alpha:15>);

mods.railcraft.BlastFurnace.removeRecipe(<*>);
recipes.remove(<Railcraft:machine.alpha:12>);


mods.railcraft.Rolling.removeRecipe(<*>);
recipes.remove(<Railcraft:machine.alpha:8>);
//Shunting wire
recipes.addShaped(<Railcraft:machine.delta:0>, [
	[null, LeadPlate, null],
	[LeadPlate, TinCable, LeadPlate],
	[null, LeadPlate, null]]);
	
recipes.addShaped(MetalPost * 8, [
	[SSteelRod, null, SSteelRod],
	[SSteelRod, SSteelRod, SSteelRod],
	[SSteelRod, null, SSteelRod]]);

recipes.remove(ControllerCircuit);	
Assembler.addRecipe(ControllerCircuit, specificBasicCircuit, specificGoldPlate, WaterRedDye * 24, 120, 5);
Assembler.addRecipe(ControllerCircuit, specificBasicCircuit, specificGoldPlate, ChemicalRedDye * 24, 120, 5);
recipes.remove(ReceiverCircuit);
Assembler.addRecipe(ReceiverCircuit, specificBasicCircuit, specificGoldPlate, WaterGreenDye * 24, 120, 5);
Assembler.addRecipe(ReceiverCircuit, specificBasicCircuit, specificGoldPlate, ChemicalGreenDye * 24, 120, 5);
recipes.remove(SignalCircuit);
Assembler.addRecipe(SignalCircuit, specificBasicCircuit, specificGoldPlate, WaterYellowDye * 24, 120, 5);
Assembler.addRecipe(SignalCircuit, specificBasicCircuit, specificGoldPlate, ChemicalYellowDye * 24, 120, 5);

recipes.remove(SwitchMotor);
recipes.addShaped(SwitchMotor, [
	[<ore:dyeRed>, <ore:dyeBlack> , <ore:dyeWhite>],
	[PistonLV, ReceiverCircuit, <ore:plateAnyIron>]]);

recipes.remove(SwitchLever);
recipes.addShaped(SwitchLever, [
	[<ore:dyeRed>, <ore:dyeBlack> , <ore:dyeWhite>],
	[PistonLV, <minecraft:lever>, <ore:plateAnyIron>]]);

recipes.remove(<Railcraft:upgrade.lapotron>);	
recipes.addShaped(<Railcraft:upgrade.lapotron>, [
	[Glass, Glass, Glass],
	[PlatinumCable, LapotronCrystal, PlatinumCable],
	[Glass, AdvCircuit, Glass]]);
	
recipes.remove(FireboxSolid);
recipes.addShaped(FireboxSolid, [
	[AbyssalBrick, AbyssalBrick, AbyssalBrick],
	[AbyssalBrick, FireCharge, AbyssalBrick],
	[AbyssalBrick, FurnaceSteam, AbyssalBrick]]);
	
recipes.remove(FireboxLiquid);
recipes.addShaped(FireboxLiquid, [
	[SteelPlate, Bucket, SteelPlate],
	[IronBars, FireCharge, IronBars],
	[SteelPlate, FurnaceHighPressure, SteelPlate]]);
	
recipes.remove(benchEngraving);
recipes.addShaped(benchEngraving, [
	[DiamondPickaxe, SteelPlate, Book],
	[SteelPlate, CraftingTable, SteelPlate],
	[Piston, SteelPlate, Piston]]);

recipes.remove(trackDisposal);
recipes.addShaped(trackDisposal * 16, [
	[StandardRail, WoodenTie, StandardRail],
	[StandardRail, SteelPlate, StandardRail],
	[StandardRail, WoodenTie, StandardRail]]);

recipes.remove(detectorEnergy);
recipes.addShaped(detectorEnergy, [
    [TinAlloyPlate, TinAlloyPlate, TinAlloyPlate],
    [TinAlloyPlate, pressurePlateStone, TinAlloyPlate],
    [TinAlloyPlate, TinAlloyPlate, TinAlloyPlate]]);

recipes.remove(forceTrackEmitter);
recipes.addShaped(forceTrackEmitter, [
    [TinAlloyPlate, CopperPlate, TinAlloyPlate],
    [CopperPlate, blockDiamond, CopperPlate],
    [TinAlloyPlate, CopperPlate, TinAlloyPlate]]);

recipes.remove(fluxTransformer);
recipes.addShaped(fluxTransformer * 2, [
    [CopperPlate, GoldPlate, CopperPlate],
    [GoldPlate, RedstoneBlock, GoldPlate],
    [CopperPlate, GoldPlate, CopperPlate]]);

recipes.remove(Locomotive);
recipes.addShaped(Locomotive, [
	[BoilerHP, BoilerHP, BronzeFirebox],
	[BoilerHP, BoilerHP, BronzeFirebox],
	[IronBars, <minecraft:minecart>, <minecraft:minecart>]]);

recipes.remove(ELocomotive);
recipes.addShaped(ELocomotive, [
	[MachineController, AdvCircuit, Wrench],
	[AdvCircuit, blockSteelGearCasing, AdvCircuit],
	[motorHV, mfeCart, motorHV]]);

recipes.remove(TunnelBore);	
recipes.addShaped(TunnelBore, [
	[blockSteelGearCasing, Locomotive, blockSteelGearCasing],
	[BoilerHP, Locomotive, BoilerHP],
	[HHammer, <Railcraft:cart.track.layer>, Wrench]]);



	
// Coke Oven to LV age
NEI.overrideName(WetCokeBrick, "Wet Coke Oven Brick");
WetCokeBrick.displayName = "Wet Coke Oven Brick";

recipes.remove(WetCokeBrick);
mods.chisel.Groups.removeVariation(WetCokeBrick);
Mixer.addRecipe(WetCokeBrick, null, [ClayDust * 4, Sand * 5], Water * 100, 20, 16);

recipes.remove(CokeOven);
furnace.addRecipe(CokeOven, WetCokeBrick);

recipes.remove(<Railcraft:stair>);
recipes.remove(<Railcraft:wall.alpha:1>);
recipes.remove(<Railcraft:slab>);
// Possible to make Wet Brick non placeable (Block Properties mod)
