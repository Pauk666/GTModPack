import mods.gregtech.ChemicalReactor;
import mods.gregtech.Assembler;
import mods.nei.NEI;
import minetweaker.item.IItemStack;

val PumpCoverHV = <gregtech:gt.metaitem.01:32612>;
val EmitterHV = <gregtech:gt.metaitem.01:32682>;
val SensorHV = <gregtech:gt.metaitem.01:32692>;
val TitaniumPipe = <ore:pipeMediumTitanium>;
val BrassPipe = <ore:pipeMediumBrass>;
val ElectrumPipe = <ore:pipeMediumElectrum>;
val SSteelPipe = <ore:pipeMediumStainlessSteel>;
val MachineHullIV = <gregtech:gt.blockmachines:15>;
val MachineHullEV = <gregtech:gt.blockmachines:14>;
val MachineHullHV = <gregtech:gt.blockmachines:12>;
val MachineHullLV = <gregtech:gt.blockmachines:11>;
val FluidExtractorHV = <gregtech:gt.blockmachines:513>;
val ScannerHV = <gregtech:gt.blockmachines:343>;
val Tank = <extracells:certustank>;
val DNA = <liquid:liquiddna>;
val Plutonium = <IC2:itemPlutonium>;
val PlutoniumIngot = <gregtech:gt.metaitem.01:11100>;
val MOX = <IC2:itemMOX>;
val Mutagen = <liquid:mutagen>;
val PreparedBiomass = <liquid:protein>;
val DataStick = <gregtech:gt.metaitem.01:32708>;
val DataOrb = <gregtech:gt.metaitem.01:32707>;

val ElectrumPlate = <gregtech:gt.metaitem.01:17303>;
val DiamondPlate = <ore:plateDiamond>;
val EnderEyePlate = <ore:plateEnderEye>;
val TitaniumPlate = <ore:plateTitanium>;
val NiobiumTitaniumPlate = <ore:plateNiobiumTitanium>;
val PlatinumPlate = <ore:platePlatinum>; val specificPlatinumPlate = <gregtech:gt.metaitem.01:17085>;
val NaquadriaPlate = <ore:plateNaquadria>;
val SSteelPlate = <ore:plateStainlessSteel>; val specificSSteelPlate = <gregtech:gt.metaitem.01:17306>;
val BronzePlate = <ore:plateBronze>;

val DenseElectrumPlate = <ore:plateDenseElectrum>;
val DenseNaquadriaPlate = <ore:plateDenseNaquadria>;

val GoodCircuit = <ore:circuitGood>;
val DataCircuit = <ore:circuitData>;
val AdvCircuit = <ore:circuitAdvanced>;
val DataControlCircuit = <ore:circuitElite>;
val EnergyFlowCircuit = <ore:circuitMaster>;

val Alveary = <Forestry:alveary>;
val MachineController = <gregtech:gt.metaitem.01:32730>;
val PistonLV = <gregtech:gt.metaitem.01:32640>;
val EmptyCircuitBoard = <gregtech:gt.metaitem.01:32719>;
val Grass = <minecraft:tallgrass:1>;
val Snow = <minecraft:snow>;
val Fern = <minecraft:tallgrass:2>;
val GlassPane = <ore:paneGlass>;

val SSteelRod = <ore:stickStainlessSteel>;
val DiamondRod = <ore:stickDiamond>;

val SSteelGear = <ore:gearStainlessSteel>;

val GeneticsProcessor = <gendustry:GeneticsProcessor>;
val Mutatron = <gendustry:Mutatron>;
val Labware = <gendustry:Labware>;
val BlankGene = <gendustry:GeneSampleBlank>;
val GeneticTemplate = <gendustry:GeneTemplate>;
val EnviromentalProcessor = <gendustry:EnvProcessor>;
val UpgradeFrame = <gendustry:UpgradeFrame>;



//DNA Extractor
recipes.remove(<gendustry:Extractor>);
recipes.addShaped(<gendustry:Extractor>, [
	[TitaniumPipe, SensorHV, TitaniumPipe],
	[ScannerHV, MachineHullEV, FluidExtractorHV],
	[PumpCoverHV, Tank, PumpCoverHV]]);


//Industrial Apiary
recipes.remove(<gendustry:IndustrialApiary>);
recipes.addShaped(<gendustry:IndustrialApiary>, [
	[ElectrumPlate, GoodCircuit, ElectrumPlate],
	[BrassPipe, MachineHullLV, Alveary],
	[ElectrumPlate, MachineController, ElectrumPlate]]);

//Mutatron
recipes.remove(Mutatron);
recipes.addShaped(Mutatron, [
	[TitaniumPlate, EmitterHV, TitaniumPlate],
	[Tank, MachineHullHV, ElectrumPipe],
	[TitaniumPlate, GeneticsProcessor, TitaniumPlate]]);

//Advanced Mutatron
recipes.remove(<gendustry:MutatronAdv>);
recipes.addShaped(<gendustry:MutatronAdv>, [
	[NiobiumTitaniumPlate, DataControlCircuit, NiobiumTitaniumPlate],
	[GeneticsProcessor, Mutatron, GeneticsProcessor],
	[NiobiumTitaniumPlate, GeneticsProcessor, NiobiumTitaniumPlate]]);

//Genetic Sampler
recipes.remove(<gendustry:Sampler>);
recipes.addShaped(<gendustry:Sampler>, [
	[NiobiumTitaniumPlate, DataControlCircuit, NiobiumTitaniumPlate],
	[BlankGene, MachineHullEV, Labware],
	[NiobiumTitaniumPlate, GeneticsProcessor, NiobiumTitaniumPlate]]);

//Genetic Tranposer
recipes.remove(<gendustry:Transposer>);
recipes.addShaped(<gendustry:Transposer>, [
	[NiobiumTitaniumPlate, GeneticsProcessor, NiobiumTitaniumPlate],
	[EnviromentalProcessor, MachineHullEV, EnviromentalProcessor],
	[NiobiumTitaniumPlate, GeneticsProcessor, NiobiumTitaniumPlate]]);
	
//Genetic Imprinter
recipes.remove(<gendustry:Imprinter>);
recipes.addShaped(<gendustry:Imprinter>, [
	[NaquadriaPlate, GeneticTemplate, NaquadriaPlate],
	[EnviromentalProcessor, MachineHullIV, EnviromentalProcessor],
	[NaquadriaPlate, EnviromentalProcessor, NaquadriaPlate]]);

//Genetic Replicator
recipes.remove(<gendustry:Replicator>);
recipes.addShaped(<gendustry:Replicator>, [
	[DenseNaquadriaPlate, EnviromentalProcessor, DenseNaquadriaPlate],
	[EnviromentalProcessor, <gendustry:Imprinter>, EnviromentalProcessor],
	[DenseNaquadriaPlate, EnviromentalProcessor, DenseNaquadriaPlate]]);
	
	
	
	
//Prepared Biomass
val ProteinSourses =[
<minecraft:fish:0>,
<minecraft:fish:1>,
<minecraft:fish:2>,
<minecraft:fish:3>,
<minecraft:porkchop>,
<minecraft:beef>,
<minecraft:chicken>,
] as IItemStack[];
for i in ProteinSourses{
ChemicalReactor.addRecipe(null, PreparedBiomass * 1000, i, null, Mutagen * 1000, 60);
}

//Mutagen
ChemicalReactor.addRecipe(null, Mutagen * 10, Plutonium, null, DNA * 1000, 60);
ChemicalReactor.addRecipe(null, Mutagen * 40, MOX, null, DNA * 1000, 80);
ChemicalReactor.addRecipe(null, Mutagen * 10, PlutoniumIngot, null, DNA * 1000, 60);
	
	
	
//Genetics Processor
recipes.remove(GeneticsProcessor);
recipes.addShaped(GeneticsProcessor, [
[DiamondPlate, DataCircuit, DiamondPlate],
[AdvCircuit, EnderEyePlate, AdvCircuit],
[DiamondPlate, DataCircuit, DiamondPlate]]);

//Environmental Processor
recipes.remove(EnviromentalProcessor);
recipes.addShaped(EnviromentalProcessor, [
[DiamondPlate, EnergyFlowCircuit, DiamondPlate],
[EnergyFlowCircuit, DenseElectrumPlate, EnergyFlowCircuit],
[DiamondPlate, EnergyFlowCircuit, DiamondPlate]]);

//Genetics Labware
recipes.remove(Labware);
recipes.addShaped(Labware * 8, [
[DiamondRod, SSteelRod, DiamondRod],
[SSteelRod, DiamondPlate, SSteelRod],
[DiamondRod, SSteelRod, DiamondRod]]);

//Blank Gene Sample
recipes.remove(BlankGene);
Assembler.addRecipe(BlankGene, specificPlatinumPlate * 4, DataStick, null, 10 * 20, 300);

//Genetic Template
recipes.remove(GeneticTemplate);
Assembler.addRecipe(GeneticTemplate, specificPlatinumPlate * 4, DataOrb, null, 10 * 20, 300);

val TerritoryUp = <gendustry:ApiaryUpgrade:3>;

val UpFrame = <gendustry:UpgradeFrame>;
val ProductionUp = <gendustry:ApiaryUpgrade>;
val LifespanUp = <gendustry:ApiaryUpgrade:1>;
val HeatUp = <gendustry:ApiaryUpgrade:6>;
val SieveUp = <gendustry:ApiaryUpgrade:15>;
val PollenUp = <gendustry:ApiaryUpgrade:22>;



val GlowstonePlate = <ore:plateGlowstone>;
val AluminiumRotor = <ore:rotorAluminium>;
val LavaCell = <IC2:itemFluidCell>.withTag({Fluid: {FluidName: "lava", Amount: 1000}});
val WaterCell= <IC2:itemFluidCell>.withTag({Fluid: {FluidName: "water", Amount: 1000}});
val SteelWaterCell= <gregtech:gt.metaitem.01:32405>.withTag({"GT.FluidContent": {FluidName: "water", Amount: 16000}});
val IceCell= <IC2:itemFluidCell>.withTag({Fluid: {FluidName: "ice", Amount: 1000}});
val SugarCell = <IC2:itemFluidCell>.withTag({Fluid:{FluidName:"molten.sugar", Amount:1000}});
val WovenSilk = <Forestry:craftingMaterial:3>;
val Sand = <minecraft:sand>;
val RoboArmMV = <gregtech:gt.metaitem.01:32651>;
val FermentedEye = <minecraft:fermented_spider_eye>;
val Netherrack = <minecraft:netherrack>;
val Glass = <ore:blockGlass>;
//val Drain = <gregtech:gt.metaitem.01:32745>;
val Beeswax = <Forestry:beeswax>;
val DyeBlue = <ore:dyeBlue>;
val DyeYellow = <ore:dyeYellow>;
val DyeRed = <ore:dyeRed>;
val RoyalJelly = <ore:dropRoyalJelly>;

//Upgrade Frame
recipes.remove(UpgradeFrame);
Assembler.addRecipe(UpgradeFrame, specificSSteelPlate*4, EmptyCircuitBoard, null, 400, 30);

//Plains Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:17>);
recipes.addShaped(<gendustry:ApiaryUpgrade:17>, [
[SSteelGear, GlassPane, SSteelGear],
[Grass, UpgradeFrame, Grass],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Light Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:11>);
recipes.addShaped(<gendustry:ApiaryUpgrade:11>, [
[SSteelGear, GlassPane, SSteelGear],
[GlowstonePlate, UpgradeFrame, GlowstonePlate],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Winter Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:20>);
recipes.addShaped(<gendustry:ApiaryUpgrade:20>, [
[SSteelGear, GlassPane, SSteelGear],
[Snow, UpgradeFrame, Snow],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Dryer Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:5>);
recipes.addShaped(<gendustry:ApiaryUpgrade:5>, [
[SSteelGear, GlassPane, SSteelGear],
[LavaCell, UpgradeFrame, AluminiumRotor],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Automation Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:14>);
recipes.addShaped(<gendustry:ApiaryUpgrade:14>, [
[SSteelGear, GlassPane, SSteelGear],
[RoboArmMV, UpgradeFrame, RoboArmMV],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Humidifier Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:4>);
recipes.addShaped(<gendustry:ApiaryUpgrade:4>, [
[SSteelGear, GlassPane, SSteelGear],
[WaterCell, UpgradeFrame, AluminiumRotor],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Hell Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:13>);
recipes.addShaped(<gendustry:ApiaryUpgrade:13>, [
[SSteelGear, GlassPane, SSteelGear],
[Netherrack, UpgradeFrame, Netherrack],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Pollen Scrubber Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:22>);
recipes.addShaped( <gendustry:ApiaryUpgrade:22>, [
[SSteelGear, GlassPane, SSteelGear],
[WovenSilk, UpgradeFrame, WovenSilk],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Desert Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:16>);
recipes.addShaped( <gendustry:ApiaryUpgrade:16>, [
[SSteelGear, GlassPane, SSteelGear],
[Sand, UpgradeFrame, Sand],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Cooler Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:7>);
recipes.addShaped( <gendustry:ApiaryUpgrade:7>, [
[SSteelGear, GlassPane, SSteelGear],
[IceCell, UpgradeFrame, AluminiumRotor],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Lifespan Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:1>);
recipes.addShaped( <gendustry:ApiaryUpgrade:1>, [
[SSteelGear, GlassPane, SSteelGear],
[FermentedEye, UpgradeFrame, FermentedEye],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Seal Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:10>);
recipes.addShaped(<gendustry:ApiaryUpgrade:10>, [
[SSteelGear, GlassPane, SSteelGear],
[Beeswax, UpgradeFrame, Beeswax],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Genetic Stabilizer Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:19>);
recipes.addShaped(<gendustry:ApiaryUpgrade:19>, [
[SSteelGear, GlassPane, SSteelGear],
[GeneticsProcessor, UpgradeFrame, GeneticsProcessor],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Jungle Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:18>);
recipes.addShaped(<gendustry:ApiaryUpgrade:18>, [
[SSteelGear, GlassPane, SSteelGear],
[Fern, UpgradeFrame, Fern],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Ocean Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:21>);
recipes.addShaped(<gendustry:ApiaryUpgrade:21>, [
[SSteelGear, GlassPane, SSteelGear],
[SteelWaterCell, UpgradeFrame, SteelWaterCell],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Sky Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:12>);
recipes.addShaped(<gendustry:ApiaryUpgrade:12>, [
[SSteelGear, GlassPane, SSteelGear],
[DyeBlue, UpgradeFrame, Glass],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Heater Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:6>);
recipes.addShaped(<gendustry:ApiaryUpgrade:6>, [
[SSteelGear, GlassPane, SSteelGear],
[LavaCell, UpgradeFrame, LavaCell],
[SSteelGear, AdvCircuit, SSteelGear]]);

//Production Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:0>);
recipes.addShaped(<gendustry:ApiaryUpgrade:0>, [
[SSteelGear, GlassPane, SSteelGear],
[RoyalJelly, UpgradeFrame, SugarCell],
[SSteelGear, AdvCircuit, SSteelGear]]);



//Sieve Upgrade
recipes.remove(<gendustry:ApiaryUpgrade:15>);
recipes.addShaped(<gendustry:ApiaryUpgrade:15>, [
[WovenSilk, GlassPane, WovenSilk],
[SSteelGear, UpgradeFrame, SSteelGear],
[WovenSilk, AdvCircuit, WovenSilk]]);

recipes.remove(<gendustry:EjectCover>);
recipes.remove(<gendustry:ImportCover>);
recipes.remove(<gendustry:ErrorSensorCover>);
recipes.addShapeless(<gendustry:EjectCover>,[<IC2:upgradeModule:3>, BronzePlate]);
recipes.addShapeless(<gendustry:ImportCover>,[<IC2:upgradeModule:6>, BronzePlate]);
recipes.addShapeless(<gendustry:ErrorSensorCover>,[<gregtech:gt.metaitem.01:32748>]);

NEI.hide(<gendustry:HoneyComb:*>);
NEI.hide(<gendustry:HoneyDrop:*>);
NEI.hide(<gendustry:MutagenTank>);
NEI.hide(<gendustry:BeeReceptacle>);
NEI.hide(<gendustry:PowerModule>);
NEI.hide(<gendustry:ClimateModule>);



