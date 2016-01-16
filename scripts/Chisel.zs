import mods.gregtech.BlastFurnace;
import mods.gregtech.AlloySmelter;
import minetweaker.item.IItemStack;

//Concrete
	val Concrete = <ore:concrete>;
	Concrete.addAll(<ore:stoneConcrete>);
	Concrete.add(<Railcraft:cube:1>);
	for item in Concrete.items {
		recipes.remove(item);
	}
	furnace.remove(<chisel:concrete>);


//Asphalt
	mods.chisel.Groups.removeVariation(<chisel:concrete:10>);
	val Asphalt = <chisel:concrete:10>;
	/*
	val Oilsands = [
	<gregtech:gt.blockores:878>,
	<gregtech:gt.blockores:1878>,
	<gregtech:gt.blockores:2878>,
	<gregtech:gt.blockores:3878>,
	<gregtech:gt.blockores:4878>] as IItemStack[];
	*/
	val AsphaltMaterial =[
	<minecraft:sand:0>, 
	<minecraft:sand:1>, 
	<minecraft:gravel>] as IItemStack[];
	for Material in AsphaltMaterial{
		BlastFurnace.addRecipe([<chisel:concrete:10>], <liquid:lubricant> * 1000, [Material], 200, 120, 1000);
		BlastFurnace.addRecipe([<chisel:concrete:10>], <liquid:oil> * 100, [Material], 20, 120, 1000);
		AlloySmelter.addRecipe(<chisel:concrete:10> * 5, Material * 4, <gregtech:gt.blockores:878>, 100, 20);
		AlloySmelter.addRecipe(<chisel:concrete:10> * 5, Material * 4, <gregtech:gt.blockores:1878>, 100, 20);
		AlloySmelter.addRecipe(<chisel:concrete:10> * 5, Material * 4, <gregtech:gt.blockores:2878>, 100, 20);
		AlloySmelter.addRecipe(<chisel:concrete:10> * 5, Material * 4, <gregtech:gt.blockores:3878>, 100, 20);
		AlloySmelter.addRecipe(<chisel:concrete:10> * 5, Material * 4, <gregtech:gt.blockores:4878>, 100, 20);
		/*
		for Oilsand in Oilsands{
			AlloySmelter.addRecipe(<chisel:concrete:10> * 5, Material * 4, Oilsand, 100, 20);
		}	
		*/
	}
