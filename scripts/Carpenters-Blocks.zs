#########################
#	Variables
#########################

	val CarpentersBlock = <CarpentersBlocks:blockCarpentersBlock>;
	val Slope = <CarpentersBlocks:blockCarpentersSlope>;
	val Torch = <minecraft:torch>;
	val Lever = <minecraft:lever>;
	
	val RedAllowWire = <ore:wireGt01RedAlloy>;
	val LapisPlate = <ore:plateLapis>;
	val IronPlate = <ore:plateIron>;
	
	
#########################
#	Deleting recipes
#########################

	#########################
	#	Blocks
	#########################
		
		//Torch
		recipes.remove(<CarpentersBlocks:blockCarpentersTorch>);
		//Daylight Detector
		recipes.remove(<CarpentersBlocks:blockCarpentersDaylightSensor>);
		//Garage Door
		recipes.remove(<CarpentersBlocks:blockCarpentersGarageDoor>);
		//Lever
		recipes.remove(<CarpentersBlocks:blockCarpentersLever>);
		//Barrier
		recipes.remove(<CarpentersBlocks:blockCarpentersBarrier>);
		//Ladder
		recipes.remove(<CarpentersBlocks:blockCarpentersLadder>);	
		
	#########################
	#	Items
	#########################
	
		//Chisel
		recipes.remove(<CarpentersBlocks:itemCarpentersChisel>);
		//Hammer
		recipes.remove(<CarpentersBlocks:itemCarpentersHammer>);
	

#########################
#	Adding recipes
#########################

	#########################
	#	Blocks
	#########################


		// Torch
		recipes.addShaped(<CarpentersBlocks:blockCarpentersTorch> * 8, [
		[Torch, Torch, Torch],
		[Torch, CarpentersBlock, Torch],
		[Torch, Torch, Torch]]);
		
		//Barrier
		recipes.addShaped(<CarpentersBlocks:blockCarpentersBarrier> * 4, [
		[CarpentersBlock, <ore:stickWood>, CarpentersBlock],
		[CarpentersBlock, <ore:stickWood>, CarpentersBlock],
		[CarpentersBlock, null, CarpentersBlock]]);
		
		//Ladder
		recipes.addShaped(<CarpentersBlocks:blockCarpentersLadder> * 2, [
		[CarpentersBlock, <ore:stickWood>, CarpentersBlock],
		[CarpentersBlock, CarpentersBlock, CarpentersBlock],
		[CarpentersBlock, <ore:stickWood>, CarpentersBlock]]);
		
		//Daylight Detector
		recipes.addShaped(<CarpentersBlocks:blockCarpentersDaylightSensor>, [
		[RedAllowWire, <minecraft:daylight_detector>, RedAllowWire],
		[RedAllowWire, LapisPlate, RedAllowWire],
		[CarpentersBlock, CarpentersBlock, CarpentersBlock]]);

		//Garage Door
		recipes.addShaped(<CarpentersBlocks:blockCarpentersGarageDoor> * 5, [
		[CarpentersBlock, IronPlate, CarpentersBlock],
		[IronPlate, CarpentersBlock, IronPlate],
		[CarpentersBlock, IronPlate, CarpentersBlock]]);

		//Lever
		recipes.addShapeless(<CarpentersBlocks:blockCarpentersLever>,
		[Lever, CarpentersBlock]);		

	#########################
	#	Items
	#########################

		//Chisel
		recipes.addShaped(<CarpentersBlocks:itemCarpentersChisel>, [
		[null, null, <ore:toolHeadUniversalSpadeIron>],
		[null, <ore:stickIron>, null],
		[CarpentersBlock,null, null]]);

		//Hammer
		recipes.addShaped(<CarpentersBlocks:itemCarpentersHammer>, [
		[null, null, <ore:toolHeadHammerIron>],
		[null, <ore:stickIron>, null],
		[CarpentersBlock, null, null]]);