// --- Importing

import mods.gregtech.AlloySmelter;
import mods.gregtech.Centrifuge;
import mods.gregtech.Assembler;
import mods.gregtech.Wiremill;
import mods.ic2.Compressor;
import mods.ic2.Macerator;
import mods.nei.NEI;

// --- Variables

val FluixBlock = <appliedenergistics2:tile.BlockFluix>;
val CertusQBlock = <appliedenergistics2:tile.BlockQuartz>;
val CCertusQBlock = <appliedenergistics2:tile.BlockQuartzChiseled>;
val EnergyCell = <appliedenergistics2:tile.BlockEnergyCell>;
val DEnergyCell = <appliedenergistics2:tile.BlockDenseEnergyCell>;
val MEChest = <appliedenergistics2:tile.BlockChest>;
val MEDrive = <appliedenergistics2:tile.BlockDrive>;
val MEController = <appliedenergistics2:tile.BlockController>;
val Interface = <appliedenergistics2:item.ItemMultiPart:440>;
val Compass = <appliedenergistics2:tile.BlockSkyCompass>;
val CraftingUnit = <appliedenergistics2:tile.BlockCraftingUnit>;
val CoCraftingUnit = <appliedenergistics2:tile.BlockCraftingUnit:1>;
 
val quartzglass = <ore:plateGlass>;
val CrystalAccelerator = <appliedenergistics2:tile.BlockQuartzGrowthAccelerator>;
val MolecularAssembler = <appliedenergistics2:tile.BlockMolecularAssembler>;
val Inscriber = <appliedenergistics2:tile.BlockInscriber>;
val FluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:7>;
val FluixDust = <appliedenergistics2:item.ItemMultiMaterial:8>;
val PureFluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:12>;
val CCertusQuartz = <appliedenergistics2:item.ItemMultiMaterial:1>;
val PureCertusQCrystal = <appliedenergistics2:item.ItemMultiMaterial:10>;
val FluixGlassCable = <appliedenergistics2:item.ItemMultiPart:16>;
val FluixCoveredC = <appliedenergistics2:item.ItemMultiPart:36>;
val FormationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val AnnihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
val WirelessReceiver = <appliedenergistics2:item.ItemMultiMaterial:41>;
val Quartzite = <ore:gemQuartzite>;
val FluixPearl = <appliedenergistics2:item.ItemMultiMaterial:9>;
val EnderEyeRod = <ore:stickEnderEye>;
val EnderEyePlate = <ore:plateEnderEye>;
val EnderPearl = <ore:gemEnderPearl>;
val QuartzFixture = <appliedenergistics2:tile.BlockQuartzTorch>;
val LightDetector = <appliedenergistics2:tile.BlockLightDetector>;
val TinyTNT = <appliedenergistics2:tile.BlockTinyTNT>;
val ITNT = <IC2:blockITNT>;

val HVMachineHull = <gregtech:gt.blockmachines:12>;
val AdvElectrolyzer = <gregtech:gt.blockmachines:372>;
val AlCable = <ore:cableGt08Aluminium>;
val CopperCable = <ore:cableGt01Copper>;
val PlatinumCable = <ore:cableGt04Platinum>;
val AdvAssembler = <gregtech:gt.blockmachines:212>;

val NANDChip = <gregtech:gt.metaitem.01:32700>;
val BasicCircuit = <gregtech:gt.metaitem.01:32701>;
val GoodCircuit = <gregtech:gt.metaitem.01:32702>;
val AdvCircuit = <gregtech:gt.metaitem.01:32703>;
val DataCircuit = <gregtech:gt.metaitem.01:32704>;
val EFlow = <gregtech:gt.metaitem.01:32706>;

val StainlessPlate = <ore:plateStainlessSteel>;
val EVBatBuffer = <gregtech:gt.blockmachines:194>;

val Terminal = <appliedenergistics2:item.ItemMultiPart:380>;
val CraftingTerminal = <appliedenergistics2:item.ItemMultiPart:360>;
val InterfaceTerminal = <appliedenergistics2:item.ItemMultiPart:480>;
val PatternTerminal = <appliedenergistics2:item.ItemMultiPart:340>;
val WirelessTerminal = <appliedenergistics2:item.ToolWirelessTerminal>;

val QuartzFiber = <appliedenergistics2:item.ItemMultiPart:140>;
val Illuminated = <appliedenergistics2:item.ItemMultiPart:180>;
val QuartzGlass = <appliedenergistics2:tile.BlockQuartzGlass>;
val VibrantQGlass =<appliedenergistics2:tile.BlockQuartzLamp>;
val Pattern = <appliedenergistics2:item.ItemMultiMaterial:52>;
val GlowstonePlate = <ore:plateGlowstone>;
val GlowstoneDust = <ore:dustGlowstone>;

val Storage1K = <appliedenergistics2:item.ItemBasicStorageCell.1k>;
val Storage4K = <appliedenergistics2:item.ItemBasicStorageCell.4k>;
val Storage16K = <appliedenergistics2:item.ItemBasicStorageCell.16k>;
val Storage64K = <appliedenergistics2:item.ItemBasicStorageCell.64k>;
val Storage2C = <appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>;
val Storage16C = <appliedenergistics2:item.ItemSpatialStorageCell.16Cubed>;
val Storage128C = <appliedenergistics2:item.ItemSpatialStorageCell.128Cubed>;

val UStorageHousing = <appliedenergistics2:item.ItemMultiMaterial:39>;
val StorageComponent1K = <appliedenergistics2:item.ItemMultiMaterial:35>;
val StorageComponent4K = <appliedenergistics2:item.ItemMultiMaterial:36>;
val StorageComponent16K = <appliedenergistics2:item.ItemMultiMaterial:37>;
val StorageComponent64K = <appliedenergistics2:item.ItemMultiMaterial:38>;
val StorageComponent2C = <appliedenergistics2:item.ItemMultiMaterial:32>;
val StorageComponent16C = <appliedenergistics2:item.ItemMultiMaterial:33>;
val StorageComponent128C = <appliedenergistics2:item.ItemMultiMaterial:34>;

val Saw = <ore:craftingToolSaw>;
val Screwdriver = <ore:craftingToolScrewdriver>;
val SHammer = <ore:craftingToolSoftHammer>;
val HHammer = <ore:craftingToolHardHammer>;

val CalculationCircuit = <appliedenergistics2:item.ItemMultiMaterial:16>;
val GoldCircuit = <appliedenergistics2:item.ItemMultiMaterial:22>;
val CertusCircuit = <appliedenergistics2:item.ItemMultiMaterial:23>;
val DiamondCircuit = <appliedenergistics2:item.ItemMultiMaterial:24>;

val AdvancedCard = <appliedenergistics2:item.ItemMultiMaterial:28>;
val BasicCard = <appliedenergistics2:item.ItemMultiMaterial:25>;
val CapacityCard = <appliedenergistics2:item.ItemMultiMaterial:27>;
val CraftingCard = <appliedenergistics2:item.ItemMultiMaterial:53>;
val FuzzyCard = <appliedenergistics2:item.ItemMultiMaterial:29>;
val InverterCard = <appliedenergistics2:item.ItemMultiMaterial:31>;
val RedstoneCard = <appliedenergistics2:item.ItemMultiMaterial:26>;
val AccelerationCard = <appliedenergistics2:item.ItemMultiMaterial:30>;

val SteelPlate = <ore:plateSteel>;
val AlPlate = <ore:plateAluminium>;
val TitaniumPlate = <ore:plateTitanium>;
val RubberPlate = <ore:plateRubber>;
val CertusPlate = <gregtech:gt.metaitem.01:17516>;
val NQuartzPlate = <gregtech:gt.metaitem.01:17522>;
val QuartzitePlate = <gregtech:gt.metaitem.01:17523>;
val SiliconPlate = <gregtech:gt.metaitem.01:17020>;
val SiliconRod = <ore:stickSilicon>;
val CertusRod = <ore:stickCertusQuartz>;
val NQuartzRod = <ore:stickNetherQuartz>;
val QuartziteScrew = <ore:screwQuartzite>;
val NQuartzScrew = <ore:screwNetherQuartz>;
val CertusScrew = <ore:screwCertusQuartz>;
val MSteelRod = <ore:stickSteelMagnetic>;
val CertusQuartz = <ore:gemCertusQuartz>;
val ALRod = <ore:stickAluminium>;
val IronRod = <ore:stickIron>;

NEI.overrideName(UStorageHousing, "Universal Storage Housing");


//Deletion of recipes
	//CELLS
		recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:39>);
		recipes.remove(<appliedenergistics2:item.ItemViewCell>);
		recipes.remove(Storage1K);
		recipes.remove(Storage4K);
		recipes.remove(Storage16K);
		recipes.remove(Storage64K);
		recipes.remove(Storage2C);
		recipes.remove(Storage16C);
		recipes.remove(Storage128C);
		recipes.remove(Pattern);
		recipes.remove(UStorageHousing);

	//STORAGE COMPONENTS
		recipes.remove(StorageComponent2C);
		recipes.remove(StorageComponent16C);
		recipes.remove(StorageComponent128C);
		recipes.remove(StorageComponent1K);
		recipes.remove(StorageComponent4K);
		recipes.remove(StorageComponent16K);
		recipes.remove(StorageComponent64K);
		
	//CARDS
		recipes.remove(BasicCard);
		recipes.remove(AdvancedCard);
		recipes.remove(CapacityCard);
		recipes.remove(CraftingCard);
		recipes.remove(FuzzyCard);
		recipes.remove(InverterCard);
		recipes.remove(RedstoneCard);
		recipes.remove(AccelerationCard);
		
	//TOOLS
		recipes.remove(<appliedenergistics2:item.ToolMassCannon>);
		recipes.remove(<appliedenergistics2:item.ToolMemoryCard>);
		recipes.remove(<appliedenergistics2:item.ToolCertusQuartzAxe>);
		recipes.remove(<appliedenergistics2:item.ToolCertusQuartzHoe>);
		recipes.remove(<appliedenergistics2:item.ToolCertusQuartzSpade>);
		recipes.remove(<appliedenergistics2:item.ToolCertusQuartzPickaxe>);
		recipes.remove(<appliedenergistics2:item.ToolCertusQuartzSword>);
		recipes.remove(<appliedenergistics2:item.ToolNetherQuartzAxe>);
		recipes.remove(<appliedenergistics2:item.ToolNetherQuartzHoe>);
		recipes.remove(<appliedenergistics2:item.ToolNetherQuartzSpade>);
		recipes.remove(<appliedenergistics2:item.ToolNetherQuartzPickaxe>);
		recipes.remove(<appliedenergistics2:item.ToolNetherQuartzSword>);
		recipes.remove(<appliedenergistics2:item.ToolNetherQuartzWrench>);
		recipes.remove(<appliedenergistics2:item.ToolColorApplicator>);
		recipes.remove(<appliedenergistics2:item.ToolBiometricCard>);
		recipes.remove(WirelessTerminal);
		recipes.remove(Compass);

	//MISC OBJECTS
		recipes.remove(FluixCrystal);
		recipes.remove(PureFluixCrystal);
		recipes.remove(FluixPearl);
		recipes.remove(WirelessReceiver);
		recipes.remove(Terminal);
		recipes.remove(CraftingTerminal);
		recipes.remove(InterfaceTerminal);
		recipes.remove(PatternTerminal);
		recipes.remove(FormationCore);
		recipes.remove(AnnihilationCore);

	//WIRES&RELATED
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:80>);
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:180>);
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:240>);
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:260>);
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:300>);
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:320>);
		recipes.remove(<appliedenergistics2:item.ItemMultiPart:460>);
		recipes.remove(QuartzFiber);
		recipes.remove(FluixGlassCable);
		recipes.remove(FluixCoveredC);

		
	//MACHINES
		recipes.remove(<appliedenergistics2:tile.BlockCharger>);
		recipes.remove(MEDrive);
		recipes.remove(MEChest);
		recipes.remove(CrystalAccelerator);
		recipes.remove(Inscriber);
		recipes.remove(<appliedenergistics2:tile.BlockVibrationChamber>);
		recipes.remove(<appliedenergistics2:tile.BlockCondenser>);
		recipes.remove(<appliedenergistics2:tile.BlockCellWorkbench>);
		recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);
		recipes.remove(EnergyCell);
		recipes.remove(DEnergyCell);
		recipes.remove(CraftingUnit);
		recipes.remove(CoCraftingUnit);
		recipes.remove(MolecularAssembler);
		recipes.remove(<appliedenergistics2:tile.BlockSpatialPylon>);
		recipes.remove(<appliedenergistics2:tile.BlockIOPort>);
		recipes.remove(<appliedenergistics2:tile.BlockQuantumRing>);
		recipes.remove(<appliedenergistics2:tile.BlockQuantumLinkChamber>);
		recipes.remove(<appliedenergistics2:tile.BlockSpatialIOPort>);
		recipes.remove(<appliedenergistics2:tile.BlockEnergyAcceptor>);
		recipes.remove(<appliedenergistics2:tile.BlockInterface>);
		recipes.remove(MEController);

	//Blocks
		recipes.remove(FluixBlock);
		recipes.remove(CertusQBlock);
		recipes.remove(CCertusQBlock);
		recipes.remove(QuartzGlass);
		recipes.remove(VibrantQGlass);
		recipes.remove(TinyTNT);
		recipes.remove(QuartzFixture);
		recipes.remove(LightDetector);

// *======= Adding Recipes =======*

//Quartz Glass
AlloySmelter.addRecipe(<appliedenergistics2:tile.BlockQuartzGlass> * 4, <minecraft:glass> * 4, <gregtech:gt.metaitem.01:2516> * 4, 400, 16);

//Quartz Fiber

Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23516> * 2, 200, 128);
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23517> * 1, 200, 128);
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23522> * 8, 200, 128);
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140>, <gregtech:gt.metaitem.01:23523>  * 4, 200, 128);

<ore:certusQuartzPure>.add(<appliedenergistics2:item.ItemMultiMaterial:1>);
<ore:certusQuartzPure>.add(<appliedenergistics2:item.ItemMultiMaterial:10>);
<ore:certusQuartzPure>.add(<gregtech:gt.metaitem.01:8516>);


	// ||||| Blocks |||||


		// --- Fluix Block --- This one conflicts with itself for some reason.
		Compressor.addRecipe(FluixBlock, PureFluixCrystal * 9);
		Compressor.addRecipe(FluixBlock, FluixCrystal * 4);
		Compressor.addRecipe(CertusQBlock, PureCertusQCrystal * 9);

		//Fluix Dust
		Macerator.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:8> * 4, FluixBlock);

		// --- ME Controller
		recipes.addShaped(MEController, [
		[<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>],
		[DiamondCircuit, FluixBlock, DiamondCircuit],
		[<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]]);

		// --- Energy Cell
		recipes.addShaped(EnergyCell, [
		[CertusPlate, FluixDust, CertusPlate],
		[AdvCircuit, FluixBlock, AdvCircuit],
		[CertusPlate, AlCable, CertusPlate]]);

		// --- Dense Energy Cell
		recipes.addShaped(DEnergyCell, [
		[EnergyCell, EnergyCell, EnergyCell],
		[EFlow, DiamondCircuit, EFlow],
		[EnergyCell, EVBatBuffer, EnergyCell]]);

		// --- ME Drive
		//recipes.addShaped(MEDrive, [
		//[<gregtech:gt.metaitem.01:17028>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateTitanium>], 
		//[<appliedenergistics2:item.ItemMultiPart:16>, MEChest, <appliedenergistics2:item.ItemMultiPart:16>], 
		//[<ore:plateTitanium>, <IC2:itemPartCircuitAdv>, <ore:plateTitanium>]]);


		// --- Crystal Growth Accelerator ---- Gregtech do that in the Autoclave
		//recipes.addShaped(CrystalAccelerator, [
		//[SiliconPlate, FluixGlassCable, SiliconPlate],
		//[FluixBlock, DiamondCircuit, FluixBlock],
		//[SiliconPlate, FluixGlassCable, SiliconPlate]]);

		// --- CraftingUnit
		recipes.addShaped(CraftingUnit, [
		[AlPlate, GoldCircuit, AlPlate],
		[BasicCircuit, DiamondCircuit, BasicCircuit],
		[AlPlate, CertusCircuit, AlPlate]]);

		// --- CoCraftingUnit
		recipes.addShapeless(CoCraftingUnit, [CraftingUnit, CertusCircuit, GoldCircuit, DiamondCircuit]);

		// --- Molecular Assembler
		recipes.addShaped(MolecularAssembler, [
		[AlPlate, QuartzGlass, AlPlate],
		[AnnihilationCore, AdvAssembler, FormationCore],
		[AlPlate, QuartzGlass, AlPlate]]);

		// --- Sky Stone Stairs
		recipes.addShaped(<appliedenergistics2:tile.SkyStoneStairBlock> * 4, [
		[null, null, <appliedenergistics2:tile.BlockSkyStone>],
		[null, <appliedenergistics2:tile.BlockSkyStone>, <appliedenergistics2:tile.BlockSkyStone>],
		[<appliedenergistics2:tile.BlockSkyStone>, <appliedenergistics2:tile.BlockSkyStone>, <appliedenergistics2:tile.BlockSkyStone>]]);

		// --- Skytone Block Stairs
		recipes.addShaped(<appliedenergistics2:tile.SkyStoneBlockStairBlock> * 4, [
		[null, null, <appliedenergistics2:tile.BlockSkyStone:1>],
		[null, <appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockSkyStone:1>],
		[<appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockSkyStone:1>]]);

		// --- Skystone Brick Stairs
		recipes.addShaped(<appliedenergistics2:tile.SkyStoneBrickStairBlock> * 4, [
		[null, null, <appliedenergistics2:tile.BlockSkyStone:2>],
		[null, <appliedenergistics2:tile.BlockSkyStone:2>, <appliedenergistics2:tile.BlockSkyStone:2>],
		[<appliedenergistics2:tile.BlockSkyStone:2>, <appliedenergistics2:tile.BlockSkyStone:2>, <appliedenergistics2:tile.BlockSkyStone:2>]]);

		// --- Skystone small Brick Stairs
		recipes.addShaped(<appliedenergistics2:tile.SkyStoneSmallBrickStairBlock> * 4, [
		[null, null, <appliedenergistics2:tile.BlockSkyStone:3>],
		[null, <appliedenergistics2:tile.BlockSkyStone:3>, <appliedenergistics2:tile.BlockSkyStone:3>],
		[<appliedenergistics2:tile.BlockSkyStone:3>, <appliedenergistics2:tile.BlockSkyStone:3>, <appliedenergistics2:tile.BlockSkyStone:3>]]);

		// --- Fluix Staris
		recipes.addShaped(<appliedenergistics2:tile.FluixStairBlock> * 4, [
		[null, null, FluixBlock],
		[null, FluixBlock, FluixBlock],
		[FluixBlock, FluixBlock, FluixBlock]]);

		// --- Certus Quartz Stairs
		recipes.addShaped(<appliedenergistics2:tile.QuartzStairBlock> * 4, [
		[null, null, CertusQBlock],
		[null, CertusQBlock, CertusQBlock],
		[CertusQBlock, CertusQBlock, CertusQBlock]]);

		// --- Chiseled Certus Quartz Stairs
		recipes.addShaped(<appliedenergistics2:tile.ChiseledQuartzStairBlock> * 4, [
		[null, null, CCertusQBlock],
		[null, CCertusQBlock, CCertusQBlock],
		[CCertusQBlock, CCertusQBlock, CCertusQBlock]]);

		// --- Certus Quartz Pillar Stairs
		recipes.addShaped(<appliedenergistics2:tile.QuartzPillarStairBlock> * 4, [
		[null, null, <appliedenergistics2:tile.BlockQuartzPillar>],
		[null, <appliedenergistics2:tile.BlockQuartzPillar>, <appliedenergistics2:tile.BlockQuartzPillar>],
		[<appliedenergistics2:tile.BlockQuartzPillar>, <appliedenergistics2:tile.BlockQuartzPillar>, <appliedenergistics2:tile.BlockQuartzPillar>]]);


	// ||||| Items |||||


		// --- Fluix Glass Cable
		recipes.addShaped(FluixGlassCable * 2, [
		[CertusRod, FluixDust, CertusRod],
		[QuartzFiber, QuartzFiber, QuartzFiber],
		[CertusRod, FluixDust, CertusRod]]);

		// --- Fluix Covered Cable
		recipes.addShaped(FluixCoveredC * 2, [
		[RubberPlate, Saw, RubberPlate],
		[QuartzFiber, QuartzFiber, QuartzFiber],
		[RubberPlate, null, RubberPlate]]);
		// - Alternate Recipe
		recipes.addShaped(FluixCoveredC * 2, [
		[RubberPlate, null, RubberPlate],
		[QuartzFiber, QuartzFiber, QuartzFiber],
		[RubberPlate, Saw, RubberPlate]]);

		// --- Annihilation Core
		recipes.addShaped(AnnihilationCore, [
		[NQuartzRod, GoldCircuit, NQuartzRod],
		[GoldCircuit, PureFluixCrystal, GoldCircuit],
		[NQuartzRod, GoldCircuit, NQuartzRod]]);

		// --- Formation Core
		recipes.addShaped(FormationCore, [
		[CertusRod, GoldCircuit, CertusRod],
		[GoldCircuit, PureFluixCrystal, GoldCircuit],
		[CertusRod, GoldCircuit, CertusRod]]);

		// --- Fluix Pearl
		recipes.addShaped(FluixPearl, [
		[PureFluixCrystal, EnderEyePlate, PureFluixCrystal],
		[EnderEyePlate, EnderPearl, EnderEyePlate],
		[PureFluixCrystal, EnderEyePlate, PureFluixCrystal]]);
		// - Alternate Recipe
		recipes.addShaped(FluixPearl, [
		[FluixCrystal, EnderEyePlate, FluixCrystal],
		[EnderEyePlate, EnderPearl, EnderEyePlate],
		[FluixCrystal, EnderEyePlate, FluixCrystal]]);

		// --- Wireless Receiver
		recipes.addShaped(WirelessReceiver, [
		[QuartzFiber, FluixPearl, QuartzFiber],
		[null, EnderEyeRod, null],
		[CertusPlate, AdvCircuit, CertusPlate]]);

		// --- Terminal
		recipes.addShaped(Terminal, [
		[NQuartzRod, QuartziteScrew, NQuartzRod],
		[Illuminated, GoodCircuit, CertusPlate],
		[NQuartzRod, Screwdriver, NQuartzRod]]);
		// - Alternate Recipe
		recipes.addShaped(Terminal, [
		[NQuartzRod, Screwdriver, NQuartzRod],
		[Illuminated, GoodCircuit, CertusPlate],
		[NQuartzRod, QuartziteScrew, NQuartzRod]]);

		// --- Crafting Terminal
		recipes.addShaped(CraftingTerminal, [
		[Screwdriver, Terminal, SHammer],
		[CertusScrew, <minecraft:crafting_table>, CertusScrew],
		[NQuartzPlate, DiamondCircuit, NQuartzPlate]]);

		// --- Interface Terminal
		recipes.addShaped(InterfaceTerminal, [
		[Screwdriver, Terminal, SHammer],
		[CertusScrew, Interface, CertusScrew],
		[NQuartzPlate, DiamondCircuit, NQuartzPlate]]);

		// --- Pattern Terminal
		recipes.addShaped(PatternTerminal, [
		[Screwdriver, Terminal, SHammer],
		[CertusScrew, Pattern, CertusScrew],
		[NQuartzPlate, DiamondCircuit, NQuartzPlate]]);

		// --- Wireless Terminal
		recipes.addShaped(WirelessTerminal, [
		[WirelessReceiver, Terminal, WirelessReceiver],
		[NQuartzPlate, DiamondCircuit, NQuartzPlate],
		[NQuartzPlate, DEnergyCell, NQuartzPlate]]);

		// --- Vibrant Quartz Glass
		recipes.addShaped(VibrantQGlass, [
		[GlowstoneDust, GlowstonePlate, GlowstoneDust],
		[GlowstonePlate, QuartzGlass, GlowstonePlate],
		[GlowstoneDust, GlowstonePlate, GlowstoneDust]]);

		// --- Charged Quartz Fixture
		recipes.addShapeless(QuartzFixture, [CertusQuartz, ALRod]);

		// --- Light Detecting Fixture
		recipes.addShapeless(LightDetector, [CCertusQuartz, IronRod]); 

		// --- Tiny TNT
		Centrifuge.addRecipe([TinyTNT, TinyTNT], ITNT, 0, 600);


	// ||||| Cells |||||

		// --- Storage Cell Component - 1K
		recipes.addShaped(StorageComponent1K, [
		[NANDChip, FluixDust, NANDChip],
		[FluixDust, GoldCircuit, FluixDust],
		[NANDChip, FluixDust, NANDChip]]);

		// --- Storage Cell Component - 4K
		recipes.addShaped(StorageComponent4K, [
		[BasicCircuit, StorageComponent1K, BasicCircuit],
		[StorageComponent1K, GoldCircuit, StorageComponent1K],
		[BasicCircuit, StorageComponent1K, BasicCircuit]]);

		// --- Storage Cell Component - 16K
		recipes.addShaped(StorageComponent16K, [
		[GoodCircuit, StorageComponent4K, GoodCircuit],
		[StorageComponent4K, CertusCircuit, StorageComponent4K],
		[GoodCircuit, StorageComponent4K, GoodCircuit]]);

		// --- Storage Cell Component - 64K
		recipes.addShaped(StorageComponent64K, [
		[AdvCircuit, StorageComponent16K, AdvCircuit],
		[StorageComponent16K, CertusCircuit, StorageComponent16K],
		[AdvCircuit, StorageComponent16K, AdvCircuit]]);


//ME Security Terminal
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [
[<ore:plateAluminium>, MEChest, <ore:plateAluminium>],
[<appliedenergistics2:item.ItemMultiPart:16>, StorageComponent16K, <appliedenergistics2:item.ItemMultiPart:16>],
[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateAluminium>]]);

//ME Quantum Ring
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumRing>, [
[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:22>, <ore:plateAluminium>],
[<appliedenergistics2:item.ItemMultiMaterial:24>, EnergyCell, <appliedenergistics2:item.ItemMultiPart:16>],
[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:22>, <ore:plateAluminium>]]);

//ME Quantum Link Chamber
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumLinkChamber>, [
[<ore:plateGlass>, <appliedenergistics2:item.ItemMultiMaterial:9>, <ore:plateGlass>],
[<appliedenergistics2:item.ItemMultiMaterial:9>, <ore:gemFluix>, <appliedenergistics2:item.ItemMultiMaterial:9>],
[<ore:plateGlass>, <appliedenergistics2:item.ItemMultiMaterial:9>, <ore:plateGlass>]]);
  
//Spatial Pylon
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialPylon>, [
[<ore:plateGlass>, <appliedenergistics2:item.ItemMultiPart:16>, <ore:plateGlass>],
[<appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:7>, <appliedenergistics2:item.ItemMultiMaterial:8>],
[<ore:plateGlass>, <appliedenergistics2:item.ItemMultiPart:16>, <ore:plateGlass>]]);
  
//Spatial IO Port
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialIOPort>, [
[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
[<appliedenergistics2:item.ItemMultiPart:16>, <appliedenergistics2:tile.BlockIOPort>, <appliedenergistics2:item.ItemMultiPart:16>],
[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateAluminium>]]);

//ME Interface
recipes.addShaped(<appliedenergistics2:tile.BlockInterface>, [
[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>],
[AnnihilationCore, <gregtech:gt.blockcasings:2>, FormationCore],
[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>]]);

//ME IO Port
recipes.addShaped(<appliedenergistics2:tile.BlockIOPort>, [
[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
[MEDrive, <appliedenergistics2:item.ItemMultiPart:16>, MEDrive],
[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:22>, <ore:plateAluminium>]]);

//Advanced Card
recipes.addShaped(AdvancedCard, [
[<ore:platePlatinum>, <ore:plateAluminium>, null],
[<ore:plateRedAlloy>, <appliedenergistics2:item.ItemMultiMaterial:23>, <ore:plateAluminium>],
[<ore:platePlatinum>, <ore:plateAluminium>, null]]);

//Basic Card
recipes.addShaped(BasicCard, [
[<ore:plateGold>, <ore:plateAluminium>, null],
[<ore:plateRedAlloy>, <appliedenergistics2:item.ItemMultiMaterial:23>, <ore:plateAluminium>],
[<ore:plateGold>, <ore:plateAluminium>, null]]);

//Blank Pattern
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:52>, [
[<appliedenergistics2:tile.BlockQuartzGlass>, <ore:plateGlowstone>, <appliedenergistics2:tile.BlockQuartzGlass>],
[<ore:plateGlowstone>, <ore:itemCertusQuartz>, <ore:plateGlowstone>],
[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
  
//Capacity Card
recipes.addShapeless(CapacityCard, [BasicCard, StorageComponent1K, StorageComponent1K, <appliedenergistics2:item.ItemMultiMaterial:1>]);

//Crafting Card
recipes.addShapeless(CraftingCard, [BasicCard, StorageComponent1K, StorageComponent1K, <ore:craftingWorkBench>]);

//Redstone Card
recipes.addShapeless(RedstoneCard, [BasicCard, <ore:craftingRedstoneTorch>, <ore:craftingRedstoneTorch>, <appliedenergistics2:item.ItemMultiMaterial:23>]);

//Fuzzy Card
recipes.addShapeless(FuzzyCard, [AdvancedCard, <appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ItemMultiMaterial:22>, <appliedenergistics2:item.ItemMultiMaterial:23>]);

//Inverter Card
recipes.addShapeless(InverterCard, [AdvancedCard, <IC2:upgradeModule:5>, <IC2:upgradeModule:5>, <appliedenergistics2:item.ItemMultiMaterial:23>]);

//Acceleration Card
recipes.addShapeless(AccelerationCard, [AdvancedCard, <appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ItemMultiMaterial:22>, <appliedenergistics2:item.ItemMultiMaterial:7>]);

//128 Spatial Component
recipes.addShaped(StorageComponent128C, [
[<ore:plateEnderEye>, StorageComponent16C, <ore:plateEnderEye>],
[StorageComponent16C, <appliedenergistics2:item.ItemMultiMaterial:24>, StorageComponent16C],
[<ore:plateEnderEye>, StorageComponent16C, <ore:plateEnderEye>]]);
 
//16 Spatial Component
recipes.addShaped(StorageComponent16C, [
[<ore:plateEnderPearl>, StorageComponent2C, <ore:plateEnderPearl>],
[StorageComponent2C, <appliedenergistics2:item.ItemMultiMaterial:24>, StorageComponent2C],
[<ore:plateEnderPearl>, StorageComponent2C, <ore:plateEnderPearl>]]);

//2 Spatial Component
recipes.addShaped(StorageComponent2C, [
[<ore:plateGlowstone>, <appliedenergistics2:item.ItemMultiMaterial:9>, <ore:plateGlowstone>],
[<appliedenergistics2:item.ItemMultiMaterial:9>, <appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ItemMultiMaterial:9>],
[<ore:plateGlowstone>, <appliedenergistics2:item.ItemMultiMaterial:9>, <ore:plateGlowstone>]]);

//Wireless Booster
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:42>, [
[<appliedenergistics2:item.ItemMultiMaterial:8>, <ore:gemCertusQuartz>, <ore:plateEnderPearl>],
[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
[null, null, null]]);

//ME Annihilation Plane
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:300>, [
[<appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:8>],
[<ore:plateAluminium>, AnnihilationCore, <ore:plateAluminium>],
[null, null, null]]);

//Cable Anchor
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotIron>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotCopper>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 3, [<ore:craftingToolKnife>, <ore:ingotBronze>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotTin>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotIron>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 4, [<ore:craftingToolKnife>, <ore:ingotSteel>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 4, [<ore:craftingToolKnife>, <ore:ingotAluminium>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotLead>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotNickel>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotSilver>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 3, [<ore:craftingToolKnife>, <ore:ingotBrass>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 3, [<ore:craftingToolKnife>, <ore:ingotInvar>]);

//ME Export Bus
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:260>, [
[<ore:plateAluminium>, FormationCore, <ore:plateAluminium>],
[null, <minecraft:piston>, null],
[null, null, null]]);

//ME Formation Plane
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:320>, [
[<appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:8>],
[<ore:plateAluminium>, FormationCore, <ore:plateAluminium>],
[null, null, null]]);

//ME Import Bus
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:240>, [
[null, AnnihilationCore, null],
[<ore:plateAluminium>, <minecraft:sticky_piston>, <ore:plateAluminium>],
[null, null, null]]);

//P2P Tunnel - ME
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:460>, [
[null, <ore:plateAluminium>, null],
[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateAluminium>],
[<appliedenergistics2:item.ItemMultiMaterial:7>, <appliedenergistics2:item.ItemMultiMaterial:7>, <appliedenergistics2:item.ItemMultiMaterial:7>]]);

//Illuminated Panel
recipes.addShaped(Illuminated, [
[null, <ore:plateGlowstone>, null],
[<ore:plateAluminium>, <ore:plateRedAlloy>, <gregtech:gt.metaitem.01:32740>],
[null, <ore:plateGlowstone>, null]]);

recipes.addShapeless(Illuminated, [<appliedenergistics2:item.ItemMultiPart:200>]);

//ME Toggle Bus
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:80>, [
[null, <ore:plateRedAlloy>, null],
[<appliedenergistics2:item.ItemMultiPart:16>, <minecraft:lever>, <appliedenergistics2:item.ItemMultiPart:16>],
[null, <ore:plateRedAlloy>, null]]);

recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:100>, [<appliedenergistics2:item.ItemMultiPart:80>]);

//ME Inverted Toggle Bus
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:80>, [<appliedenergistics2:item.ItemMultiPart:100>]);
 
//View Cell
recipes.addShaped(<appliedenergistics2:item.ItemViewCell>, [
[<ore:plateGlass>, <ore:plateRedAlloy>, <ore:plateGlass>],
[<ore:plateRedAlloy>, <ore:gemCertusQuartz>, <ore:plateRedAlloy>],
[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

recipes.addShapeless(<appliedenergistics2:item.ItemViewCell>, [<appliedenergistics2:item.ItemMultiMaterial:39>, <ore:gemCertusQuartz>]);

//Quartz Wrench
recipes.addShaped(<appliedenergistics2:item.ToolCertusQuartzWrench>, [
[<appliedenergistics2:item.ItemMultiMaterial:1>, <ore:craftingToolWrench>, <appliedenergistics2:item.ItemMultiMaterial:1>],
[<appliedenergistics2:item.ItemMultiMaterial:1>, <appliedenergistics2:item.ItemMultiMaterial:1>, <appliedenergistics2:item.ItemMultiMaterial:1>],
[null, <appliedenergistics2:item.ItemMultiMaterial:1>, null]]);

//Matter Cannon
recipes.addShaped(<appliedenergistics2:item.ToolMassCannon>, [
[<ore:plateAluminium>, <ore:plateAluminium>, FormationCore],
[StorageComponent64K, DEnergyCell, null],
[<ore:plateAluminium>, null, null]]);

//Charged Stuff
recipes.addShaped(<appliedenergistics2:item.ToolChargedStaff>, [
[<appliedenergistics2:item.ItemMultiMaterial:1>, <appliedenergistics2:item.ItemMultiMaterial:1>, null],
[<appliedenergistics2:item.ItemMultiMaterial:1>, IronRod, null],
[null, null, IronRod]]);

//Entropy Manipulator
recipes.addShaped(<appliedenergistics2:item.ToolEntropyManipulator>, [
[<appliedenergistics2:item.ItemMultiMaterial:7>, <appliedenergistics2:item.ItemMultiMaterial:22>, null],
[<appliedenergistics2:item.ItemMultiMaterial:24>, EnergyCell, null],
[null, null, <ore:stickThaumium>]]);

//Color Applicator
recipes.addShaped(<appliedenergistics2:item.ToolColorApplicator>, [
[<ore:wireGt01Aluminium>, FormationCore, <ore:wireGt01Aluminium>],
[StorageComponent4K, EnergyCell, StorageComponent4K],
[null, <ore:stickSteel>, null]]);


//Addition of recipes
 
//CELLS
 
//Empty Housing
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:39>,
 [[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, null, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
 

//Basic 1k
recipes.addShaped(Storage1K,
 [[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent1K, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
 
recipes.addShapeless(<appliedenergistics2:item.ItemBasicStorageCell.1k>, [<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent1K]);

//Basic 4k
recipes.addShaped(Storage4K,
[[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent4K, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

recipes.addShapeless(Storage4K, [<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent4K]);
 
//Basic 16k
recipes.addShaped(Storage16K,
[[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent16K, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

recipes.addShapeless(Storage16K, [<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent16K]);
 
  //Basic 64k
recipes.addShaped(Storage64K,
[[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent64K, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

recipes.addShapeless(Storage64K, [<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent64K]);
 
  //Spacial 2c
recipes.addShaped(<appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>,
[[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent2C, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

recipes.addShapeless(Storage2C, 
[<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent2C]);
 
//Spacial 16c
recipes.addShaped(Storage16C,
[[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent16C, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

recipes.addShapeless(Storage16C, 
[<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent16C]);
 
  //Spacial 128c
recipes.addShaped(Storage128C,
[[quartzglass, <ore:plateRedAlloy>, quartzglass],
  [<ore:plateRedAlloy>, StorageComponent128C, <ore:plateRedAlloy>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
 
recipes.addShapeless(Storage128C, 
[<appliedenergistics2:item.ItemMultiMaterial:39>, StorageComponent128C]);
 
//MISC OBJECTS

//Biometric Card
recipes.addShaped(<appliedenergistics2:item.ToolBiometricCard>,
 [[<appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateAluminium>, <ore:plateAluminium>],
  [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>]]);

//Quartz Fiber
Wiremill.addRecipe(<appliedenergistics2:item.ItemMultiPart:140> * 4, <appliedenergistics2:tile.BlockQuartzGlass>, 100, 2);
 
//MemoryCard
recipes.addShaped(<appliedenergistics2:item.ToolMemoryCard>,
 [[<appliedenergistics2:item.ItemMultiMaterial:23>, <ore:plateAluminium>, <ore:plateAluminium>],
  [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>]]);
 
//WIRES&RELATED

//Toggle Bus
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:80>,
 [[null, <ore:plateRedAlloy>, null],
  [<appliedenergistics2:item.ItemMultiPart:16>, <minecraft:lever>, <appliedenergistics2:item.ItemMultiPart:16>],
  [null, <ore:plateRedAlloy>, null]]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:800>, [<appliedenergistics2:item.ItemMultiPart:100>]);

//MACHINES

//ME Drive
recipes.addShaped(MEDrive,
 [[<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateAluminium>],
  [<appliedenergistics2:item.ItemMultiPart:16>, <gregtech:gt.blockmachines:12>, <appliedenergistics2:item.ItemMultiPart:16>],
  [<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateAluminium>]]);

//Matter Condenser
recipes.addShaped(<appliedenergistics2:tile.BlockCondenser>,
 [[<ore:plateAluminium>, <gregtech:gt.metaitem.01:32641>, <ore:plateAluminium>],
  [<gregtech:gt.metaitem.01:32641>, <gregtech:gt.blockmachines:12>, <gregtech:gt.metaitem.01:32641>],
  [<ore:plateAluminium>, <gregtech:gt.metaitem.01:32641>, <ore:plateAluminium>]]);
 
//Cell Workbench
recipes.addShaped(<appliedenergistics2:tile.BlockCellWorkbench>,
 [[<minecraft:wool>, <gregtech:gt.metaitem.01:32740>, <minecraft:wool>],
  [<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:23>, <ore:plateAluminium>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

//ME Chest
recipes.addShaped(MEChest,
 [[<ore:plateGlass>, <appliedenergistics2:item.ItemMultiPart:380>, <ore:plateGlass>],
  [<appliedenergistics2:item.ItemMultiPart:16>, <gregtech:gt.blockmachines:12>, <appliedenergistics2:item.ItemMultiPart:16>],
  [<ore:plateAluminium>, <appliedenergistics2:item.ItemMultiMaterial:7>, <ore:plateAluminium>]]);
 
//Energy Acceptor
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyAcceptor>,
 [[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>],
  [<ore:plateGlass>, <appliedenergistics2:item.ItemMultiMaterial:7>, <ore:plateGlass>],
  [<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>]]);
