import mods.gregtech.ChemicalReactor;


val PumpCoverHV = <gregtech:gt.metaitem.01:32612>;
val EmitterHV = <gregtech:gt.metaitem.01:32682>;
val SensorHV = <gregtech:gt.metaitem.01:32692>;
val TitaniumPipe = <ore:pipeMediumTitanium>;
val BrassPipe = <ore:pipeMediumBrass>;
val ElectrumPipe = <ore:pipeMediumElectrum>;
val MachineHullEV = <gregtech:gt.blockmachines:14>;
val MachineHullHV = <gregtech:gt.blockmachines:12>;
val MachineHullLV = <gregtech:gt.blockmachines:11>;
val FluidExtractorHV = <gregtech:gt.blockmachines:513>;
val ScannerHV = <gregtech:gt.metaitem.01:343>;
val Tank = <extracells:certustank>;
val DNA = <liquid:liquiddna>;
val Plutonium = <IC2:itemPlutonium>;
val PlutoniumIngot = <gregtech:gt.metaitem.01:11100>;
val MOX = <IC2:itemMOX>;
val Mutagen = <liquid:mutagen>;

val ElectrumPlate = <gregtech:gt.metaitem.01:17303>;
val DiamondPlate = <ore:plateDiamond>;
val EnderEyePlate = <ore:plateEnderEye>;
val TitaniumPlate = <ore:plateTitanium>;
val DiamondPlate = <ore:plateDiamond>;
val NiobiumTitaniumPlate = <ore:plateNiobiumTitanium>;

val GoodCircuit = <ore:circuitGood>;
val DataCircuit = <ore:circuitData>;
val AdvCircuit = <ore:circuitAdvanced>;

val DataControlCircuit = <ore:circuitElite>;
val Alveary = <Forestry:alveary>;
val MachineController = <gregtech:gt.metaitem.01:32730>;
val PistonLV = <gregtech:gt.metaitem.01:32640>;
val GeneticsProcessor = <gendustry:GeneticsProcessor>;
val Mutatron = <gendustry:Mutatron>;
val SSteelRod = <ore:stickStainlessSteel>;
val DiamondRod = <ore:stickDiamond>;


//DNA Extractor
recipes.remove(<gendustry:Extractor>);
recipes.addShaped(<gendustry:Extractor>, [
	[TitaniumPipe, SensorHV, TitaniumPipe],
	[ScannerHV, MachineHullEV, FluidExtractorHV],
	[PumpCoverHV, Tank, PumpCoverHV]]);

//Mutagen
ChemicalReactor.addRecipe(null, Mutagen * 10, Plutonium, null, DNA * 1000, 60);
ChemicalReactor.addRecipe(null, Mutagen * 40, MOX, null, DNA * 1000, 80);
ChemicalReactor.addRecipe(null, Mutagen * 10, PlutoniumIngot, null, DNA * 1000, 60);

//Liquifier
recipes.remove(<gendustry:Liquifier>);
recipes.addShaped(<gendustry:Liquifier>, [
	[ElectrumPlate, GoodCircuit, ElectrumPlate],
	[BrassPipe, MachineHullLV, PistonLV],
	[ElectrumPlate, GoodCircuit, ElectrumPlate]]);

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
	
	
	
	
	
// --- Genetics Processor
recipes.addShaped(GeneticsProcessor, [
[DiamondPlate, DataCircuit, DiamondPlate],
[AdvCircuit, EnderEyePlate, AdvCircuit],
[DiamondPlate, DataCircuit, DiamondPlate]]);

// --- Genetics Labware
recipes.addShaped(Labware * 8, [
[DiamondRod, SSteelRod, DiamondRod],
[SSteelRod, DiamondPlate, SSteelRod],
[DiamondRod, SSteelRod, DiamondRod]]);

