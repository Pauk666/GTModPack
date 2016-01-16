#########################
#	Imports
#########################

	import mods.gregtech.FormingPress;
	import mods.gregtech.Assembler;
	import minetweaker.item.IItemStack;
	import mods.ic2.Compressor;

#########################
#	Variables
#########################

	val TinCable = <ore:craftingWireTin>;
	val CopperCable = <ore:craftingWireCopper>;
	val SilverCable = <ore:cableGt01Silver>;
	val TungstenteelCable = <ore:cableGt01TungstenSteel>;

	val CopperWire = <ore:wireGt01Copper>;

	val SteelPlate = <ore:plateSteel>;
	val RubberPlate = <ore:plateRubber>;
	val BronzePlate = <ore:plateBronze>;
	val AluminiumPlate = <ore:plateAluminium>;
	val GlowstonePlate = <ore:plateGlowstone>;
	val StainlessSteelPlate = <ore:plateStainlessSteel>;
	val AdvancedAlloyPlate = <ore:plateAlloyAdvanced>; val specificAdvancedAlloyPlate = <IC2:itemPartAlloy>; 
	val LeadPlate = <ore:plateLead>;
	val IronPlate = <ore:plateIron>;
	val BlueSteelPlate = <ore:plateBlueSteel>;
	val RedSteelPlate = <ore:plateRedSteel>;
	val SilverPlate = <ore:plateSilver>;
	val DiamondPlate = <ore:plateDiamond>;
	val CarbonPlate = <ore:plateAlloyCarbon>;
	val LapisPlate = <ore:plateLapis>;
	val BeriliumPlate = <ore:plateBerilium>;val specificBeriliumPlate = <gregtech:gt.metaitem.01:17008>;

	val DenseLeadPlate = <ore:plateDenseLead>; val specificDenseLeadPlate = <gregtech:gt.metaitem.01:22089>;
	val DenseBronsePlate = <ore:plateDenseBronse>;val specificDenseBronsePlate = <gregtech:gt.metaitem.01:22300>;
	val DenseElectrumPlate = <ore:plateDenseElectrum>;
	val DenseTinPlate = <ore:plateDenseTin>;
	val DenseRedAlloyPlate = <ore:plateRedAlloy>;
	val DenseLapisPlate = <ore:plateDenseLapis>; val specificDenseLapisPlate = <IC2:itemDensePlates:8>;

	val ReactorPlate = <IC2:reactorPlating>;
	val ReactorHeatPlate = <IC2:reactorPlatingHeat>;
	val ReactorExplosivePlate = <IC2:reactorPlatingExplosive>;
	val ReactorHeatSwitch = <IC2:reactorHeatSwitch>;
	val ReactorHeatSwitchCore = <IC2:reactorHeatSwitchCore>;
	val ReactorHeatSwitchSpread = <IC2:reactorHeatSwitchSpread>;
	val ReactorHeatVent = <IC2:reactorVent>;
	val ReactorHeatVentCore = <IC2:reactorVentCore>;
	val ReactorHeatVentGold = <IC2:reactorVentGold>;
	val ReactorHeatVentDiamond = <IC2:reactorVentDiamond>;
	val ReactorHeatVentSpread = <IC2:reactorVentSpread>;
	val ReactorCondensator = <IC2:reactorCondensator>;
	val ReactorReflector = <IC2:reactorReflector>;
	val ReactorThickReflector = <IC2:reactorReflectorThick>;

	val BasicBattery = <ore:batteryBasic>;
	val AdvancedBattery = <ore:batteryAdvanced>;
	val EliteBattery = <ore:batteryElite>;   //Energy Crystal
	val MasterBattery = <ore:batteryMaster>; //Lapatron Crystal

	val BasicCircuit = <ore:circuitBasic>;
	val GoodCircuit = <ore:circuitGood>;
	val AdvancedCircuit = <ore:circuitAdvanced>;
	val MasterCircuit = <ore:circuitMaster>;

	val SulfurDust = <ore:dustSulfur>;
	val LeadDust = <ore:dustLead>;
	val GlowstoneDust = <ore:dustGlowstone>;

	val AnyIronStick = <ore:stickAnyIron>;

	val LVHull = <gregtech:gt.blockmachines:11>;
	val MVHull = <gregtech:gt.blockmachines:12>;
	val HVHull = <gregtech:gt.blockmachines:13>;
	val EVHull = <gregtech:gt.blockmachines:14>;

	val HHammer = <ore:craftingToolHardHammer>;
	val Wrench = <ore:craftingToolWrench>;

	val MiningPipe = <IC2:blockMiningPipe>;
	val Glass = <ore:blockGlass>;
	val OrangeDye = <ore:dyeOrange>;
	val EmptyCell = <IC2:itemFluidCell>;
	val IronBars = <minecraft:iron_bars>;
	val Piston = <minecraft:piston>;
	val Chest = <minecraft:chest>;
	val LargeSteelCell = <gregtech:gt.metaitem.01:32405>;
	val HVMotor = <gregtech:gt.metaitem.01:32602>;
	
	val TurboDieselGenerator = <gregtech:gt.blockmachines:1112>;
	val TurboSteamTurbine = <gregtech:gt.blockmachines:1122>;

oreDict.plateSteel.remove(<IC2:itemPlates:5>); // De Ordicted Refined Iron

#########################
#	Items
#########################

	recipes.remove(<IC2:itemSteamTurbineBlade>);
	recipes.remove(<IC2:itemRecipePart:*>);
	recipes.remove(<IC2:itemFluidCell>);
	recipes.remove(<IC2:itemupgradekit>);
	recipes.remove(<IC2:itemToolDrill>);
	recipes.remove(<IC2:itemToolDDrill>);
	recipes.remove(<IC2:itemToolIridiumDrill>);
	recipes.remove(<IC2:itemToolChainsaw>);
	recipes.remove(<IC2:itemToolWrenchElectric>);
	recipes.remove(<IC2:itemTreetapElectric>);
	recipes.remove(<IC2:itemToolHoe>);


	//Hazmat Helmet
	recipes.remove(<IC2:itemArmorHazmatHelmet>);
	recipes.addShaped(<IC2:itemArmorHazmatHelmet>,[
	[null, OrangeDye, null],
	[RubberPlate, Glass, RubberPlate],
	[RubberPlate, <minecraft:iron_bars> , RubberPlate]]);

	//Hazmat Chestplate
	recipes.remove(<IC2:itemArmorHazmatChestplate>);
	recipes.addShaped(<IC2:itemArmorHazmatChestplate>,[
	[RubberPlate, OrangeDye, RubberPlate],
	[RubberPlate, RubberPlate, RubberPlate],
	[RubberPlate, RubberPlate , RubberPlate]]);

	//Hazmat Leggings
	recipes.remove(<IC2:itemArmorHazmatLeggings>);
	recipes.addShaped(<IC2:itemArmorHazmatLeggings>,[
	[RubberPlate, RubberPlate, RubberPlate],
	[RubberPlate, OrangeDye, RubberPlate],
	[RubberPlate, null , RubberPlate]]);

	//Rubber Boots
	recipes.remove(<IC2:itemArmorRubBoots>);
	recipes.addShaped(<IC2:itemArmorRubBoots>,[
	[RubberPlate, null, RubberPlate],
	[RubberPlate, null, RubberPlate],
	[RubberPlate, <ore:blockWool> , RubberPlate]]);

	//Bat Pack
	recipes.remove(<IC2:itemArmorBatpack>);
	recipes.addShaped(<IC2:itemArmorBatpack>, [
	[BasicBattery, BasicCircuit, BasicBattery],
	[BasicBattery, AluminiumPlate, BasicBattery],
	[BasicBattery, TinCable, BasicBattery]]);

	//OD Scanner
	recipes.remove(<IC2:itemScanner>);
	recipes.addShaped(<IC2:itemScanner>,[
	[StainlessSteelPlate, GlowstoneDust, StainlessSteelPlate],
	[GoodCircuit, AdvancedBattery, GoodCircuit],
	[StainlessSteelPlate, <gregtech:gt.metaitem.01:32682> , StainlessSteelPlate]]);

	//OV Scanner
	recipes.remove(<IC2:itemScannerAdv>);
	recipes.addShaped(<IC2:itemScannerAdv>,[
	[BlueSteelPlate, GlowstonePlate, BlueSteelPlate],
	[AdvancedCircuit, EliteBattery, AdvancedCircuit],
	[RedSteelPlate, <IC2:itemScanner> , RedSteelPlate]]);

	//Mining Laser
	recipes.remove(<IC2:itemToolMiningLaser>);
	recipes.addShaped(<IC2:itemToolMiningLaser>,[
	[<ore:craftingLensRed>, <gregtech:gt.metaitem.01:32682>, EliteBattery],
	[<ore:plateRedSteel>, <ore:plateAlloyCarbon>, AdvancedCircuit],
	[null, null , <ore:plateBlueSteel>]]);

	//Advanced Battery
	recipes.remove(AdvancedBattery);
	recipes.addShaped(<IC2:itemAdvBat:26>,[
	[CopperCable, BronzePlate, CopperCable],
	[BronzePlate, SulfurDust, BronzePlate],
	[BronzePlate, LeadDust, BronzePlate]]);

	//Weeding Trowel
	recipes.remove(<IC2:itemWeedingTrowel>);
	recipes.addShaped(<IC2:itemWeedingTrowel>, [
	[ null, <ore:toolHeadUniversalSpadeAnyIron>, null],
	[RubberPlate, AnyIronStick, RubberPlate],
	[RubberPlate, AnyIronStick, RubberPlate]]);

	//CF Sprayer
	recipes.remove(<IC2:itemFoamSprayer>);
	recipes.addShaped(<IC2:itemFoamSprayer>, [
	[ null, null, null],
	[IronPlate, IronPlate, Piston],
	[null, EmptyCell, IronPlate]]);

	recipes.remove(<IC2:itemToolbox>);

	//Containment Box
	recipes.remove(<IC2:itemContainmentbox>);
	recipes.addShaped(<IC2:itemContainmentbox>, [
	[DenseLeadPlate, DenseLeadPlate, DenseLeadPlate],
	[DenseLeadPlate, Chest, DenseLeadPlate],
	[DenseLeadPlate, DenseLeadPlate, DenseLeadPlate]]);

	//Reactor Plating
	recipes.remove(ReactorPlate);
	FormingPress.addRecipe(ReactorPlate, specificAdvancedAlloyPlate * 8,
	specificDenseLeadPlate, 200, 480);

	//Reactor Heat Plating
	recipes.remove(ReactorHeatPlate);
	FormingPress.addRecipe(ReactorHeatPlate, specificDenseBronsePlate * 8,
	ReactorPlate, 220, 480);

	//Reactor Explosive Plating
	recipes.remove(ReactorExplosivePlate);
	FormingPress.addRecipe(ReactorExplosivePlate, specificAdvancedAlloyPlate * 8, ReactorPlate, 220, 480);

	//Heat Exchanger
	recipes.remove(ReactorHeatSwitch);
	recipes.addShaped(ReactorHeatSwitch, [
	[ReactorHeatPlate, SilverPlate, ReactorHeatPlate],
	[AluminiumPlate, AdvancedCircuit, AluminiumPlate],
	[ReactorHeatPlate, SilverPlate, ReactorHeatPlate]]);

	//Reactor Heat Exchanger
	recipes.remove(ReactorHeatSwitchCore);
	recipes.addShaped(ReactorHeatSwitchCore, [
	[ReactorHeatPlate, SilverPlate, ReactorHeatPlate],
	[SilverPlate, ReactorHeatSwitch, SilverPlate],
	[ReactorHeatPlate, SilverPlate, ReactorHeatPlate]]);

	//Component Heat Exchanger
	recipes.remove(ReactorHeatSwitchSpread);
	recipes.addShaped(ReactorHeatSwitchSpread, [
	[null, DenseElectrumPlate, null],
	[DenseElectrumPlate, ReactorHeatSwitchCore, DenseElectrumPlate],
	[null, DenseElectrumPlate, null]]);

	//Heat Vent
	recipes.remove(ReactorHeatVent);
	recipes.addShaped(ReactorHeatVent, [
	[ReactorPlate, IronBars, ReactorPlate],
	[IronBars, Wrench, IronBars],
	[ReactorPlate, IronBars, ReactorPlate]]);

	//Reactor Heat Vent
	recipes.remove(ReactorHeatVentCore);
	recipes.addShaped(ReactorHeatVentCore, [
	[ReactorHeatPlate, SilverPlate, ReactorHeatPlate],
	[SilverPlate, ReactorHeatVent, SilverPlate],
	[ReactorHeatPlate, SilverPlate, ReactorHeatPlate]]);

	//Overclocked Heat Vent
	recipes.remove(ReactorHeatVentGold);
	recipes.addShaped(ReactorHeatVentGold, [
	[ReactorPlate, DenseElectrumPlate, ReactorPlate],
	[DenseElectrumPlate, ReactorHeatVentCore, DenseElectrumPlate],
	[ReactorPlate, DenseElectrumPlate, ReactorPlate]]);

	//Advanced Heat Vent
	recipes.remove(ReactorHeatVentDiamond);
	recipes.addShaped(ReactorHeatVentDiamond, [
	[ReactorHeatPlate, DiamondPlate, ReactorHeatPlate],
	[DiamondPlate, ReactorHeatVentGold, DiamondPlate],
	[ReactorHeatPlate, DiamondPlate, ReactorHeatPlate]]);

	//Component Heat Vent
	recipes.remove(ReactorHeatVentSpread);
	recipes.addShaped(ReactorHeatVentSpread, [
	[ReactorPlate, DenseTinPlate, ReactorPlate],
	[DenseTinPlate, ReactorHeatVent, DenseTinPlate],
	[ReactorPlate, DenseTinPlate, ReactorPlate]]);

	//Neutron Reflector
	recipes.remove(ReactorReflector);
	recipes.addShaped(ReactorReflector, [
	[DenseTinPlate, CarbonPlate, DenseTinPlate],
	[CarbonPlate, ReactorHeatPlate, CarbonPlate],
	[DenseTinPlate, CarbonPlate, DenseTinPlate]]);

	//Thick Neutron Reflector
	recipes.remove(ReactorThickReflector);
	Assembler.addRecipe(ReactorThickReflector, ReactorReflector*8, specificBeriliumPlate, 600 ,120);

	//RSH Condensator
	recipes.remove(ReactorCondensator);
	recipes.addShaped(ReactorCondensator, [
	[DenseRedAlloyPlate, ReactorHeatSwitchCore, DenseRedAlloyPlate],
	[DenseRedAlloyPlate, ReactorHeatVentCore, DenseRedAlloyPlate],
	[DenseRedAlloyPlate, ReactorHeatSwitchCore, DenseRedAlloyPlate]]);
	recipes.addShapeless(ReactorCondensator, [<IC2:reactorCondensator:9999>, DenseRedAlloyPlate, DenseRedAlloyPlate, DenseRedAlloyPlate]);

	//Dense Lapis Plate
	Compressor.addRecipe(specificDenseLapisPlate, LapisPlate*9);

	//LZH Condensator
	recipes.addShaped(<IC2:reactorCondensatorLap>, [
	[DenseLapisPlate, ReactorHeatVentGold, DenseLapisPlate],
	[<IC2:reactorCondensator>, DenseLapisPlate, <IC2:reactorCondensator>],
	[DenseLapisPlate, ReactorHeatSwitchSpread, DenseLapisPlate]]);
	recipes.addShapeless(<IC2:reactorCondensatorLap>, [<IC2:reactorCondensatorLap:9999>, DenseLapisPlate, DenseLapisPlate, DenseLapisPlate]);

	//Biogas Jetpack
	recipes.remove(<IC2:itemArmorJetpack>);
	recipes.addShaped(<IC2:itemArmorJetpack>, [
	[StainlessSteelPlate, AdvancedCircuit, StainlessSteelPlate],
	[LargeSteelCell, TurboDieselGenerator, LargeSteelCell],
	[HVMotor, null, HVMotor]]);
	

#########################
#	Blocks
#########################

	recipes.remove(<IC2:blockKineticGenerator:*>);
	recipes.remove(<IC2:blockHeatGenerator:*>);
	recipes.remove(<IC2:blockGenerator:*>);
	recipes.remove(<IC2:blockMachine:*>);
	recipes.remove(<IC2:blockMachine2:*>);
	recipes.remove(<IC2:blockMachine3:*>);
	recipes.remove(<IC2:blockPersonal:*>);
	recipes.remove(<IC2:blockITNT>);
	recipes.remove(<IC2:blockElectric:*>);

	//Bat Box
	recipes.addShaped(<IC2:blockElectric>, [
	[TinCable, SteelPlate, TinCable],
	[BasicBattery, LVHull, BasicBattery],
	[BasicCircuit, BasicBattery , BasicCircuit]]);

	//CESU
	recipes.addShaped(<IC2:blockElectric:7>, [
	[CopperCable, BronzePlate, CopperCable],
	[AdvancedBattery, MVHull, AdvancedBattery],
	[GoodCircuit, AdvancedBattery, GoodCircuit]]);

	//MFE
	recipes.addShaped(<IC2:blockElectric:1>, [
	[SilverCable, EliteBattery, SilverCable],
	[EliteBattery, HVHull, EliteBattery],
	[AdvancedCircuit, EliteBattery, AdvancedCircuit]]);

	//MFSU
	recipes.addShaped(<IC2:blockElectric:2>, [
	[TungstenteelCable, MasterBattery, TungstenteelCable],
	[MasterBattery, EVHull, MasterBattery],
	[MasterCircuit, MasterBattery, MasterCircuit]]);

	//Mining Pipe
	recipes.remove(MiningPipe);
	recipes.addShaped(MiningPipe, [
	[SteelPlate, null, SteelPlate],
	[SteelPlate, HHammer, SteelPlate],
	[null, SteelPlate, null]]);

	//Advanced Miner
	recipes.addShaped(<IC2:blockMachine2:11>, [
	[<gregtech:gt.metaitem.01:32641>, MVHull, <gregtech:gt.metaitem.01:32631>],
	[AdvancedCircuit, MiningPipe, AdvancedCircuit],
	[SilverCable, <ore:toolHeadDrillStainlessSteel>, SilverCable]]);

	//LV Transformer
	recipes.addShapeless(<IC2:blockElectric:3>, [<gregtech:gt.blockmachines:21>]);
	recipes.addShapeless(<gregtech:gt.blockmachines:21>, [<IC2:blockElectric:3>]);

	//MV Transformer
	recipes.addShapeless(<IC2:blockElectric:4>, [<gregtech:gt.blockmachines:22>]);
	recipes.addShapeless(<gregtech:gt.blockmachines:22>, [<IC2:blockElectric:4>]);

	//HV Transformer
	recipes.addShapeless(<IC2:blockElectric:5>, [<gregtech:gt.blockmachines:23>]);
	recipes.addShapeless(<gregtech:gt.blockmachines:23>, [<IC2:blockElectric:5>]);
	//EV Transformer
	recipes.addShapeless(<IC2:blockElectric:6>, [<gregtech:gt.blockmachines:24>]);
	recipes.addShapeless(<gregtech:gt.blockmachines:24>, [<IC2:blockElectric:6>]);

	//Nuclear Reactor
	recipes.addShaped(<IC2:blockGenerator:5>, [
	[AdvancedCircuit, ReactorThickReflector ,AdvancedCircuit],
	[<IC2:blockReactorChamber>, EVHull, <IC2:blockReactorChamber>],
	[SilverCable, TurboSteamTurbine, SilverCable]]);

