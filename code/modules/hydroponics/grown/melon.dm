// Watermelon
/obj/item/seeds/watermelon
	name = "pack of watermelon seeds"
	desc = "These seeds grow into watermelon plants."
	icon_state = "seed-watermelon"
	species = "watermelon"
	plantname = "Watermelon Vines"
	product = /obj/item/reagent_containers/food/snacks/grown/watermelon
	lifespan = 50
	endurance = 40
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_dead = "watermelon-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list(/obj/item/seeds/watermelon/holy,/obj/item/seeds/watermelon/mutagen)
	reagents_add = list("water" = 0.2, "vitamin" = 0.04, "plantmatter" = 0.2)

/obj/item/reagent_containers/food/snacks/grown/watermelon
	seed = /obj/item/seeds/watermelon
	name = "watermelon"
	desc = "It's full of watery goodness."
	icon_state = "watermelon"
	slice_path = /obj/item/reagent_containers/food/snacks/watermelonslice
	slices_num = 5
	dried_type = null
	w_class = WEIGHT_CLASS_NORMAL
	filling_color = "#008000"
	bitesize_mod = 3

// Holymelon
/obj/item/seeds/watermelon/holy
	name = "pack of holymelon seeds"
	desc = "These seeds grow into holymelon plants."
	icon_state = "seed-holymelon"
	species = "holymelon"
	plantname = "Holy Melon Vines"
	product = /obj/item/reagent_containers/food/snacks/grown/holymelon
	mutatelist = list()
	reagents_add = list("holywater" = 0.2, "vitamin" = 0.04, "nutriment" = 0.1)
	rarity = 20

/obj/item/reagent_containers/food/snacks/grown/holymelon
	seed = /obj/item/seeds/watermelon/holy
	name = "holymelon"
	desc = "The water within this melon has been blessed by some deity that's particularly fond of watermelon."
	icon_state = "holymelon"
	filling_color = "#FFD700"
	dried_type = null

// Mutamelon
/obj/item/seeds/watermelon/mutagen
	name = "pack of muterwelon seeds"
	desc = "These seeds grow into muterwelon plants."
	icon_state = "seed-watermelon"
	plantname = "Muterwelon Vines"
	product = /obj/item/reagent_containers/food/snacks/grown/watermelon/mutagen
	lifespan = 30
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list()
	reagents_add = list("mutagen" = 0.2, "vitamin" = 0.04, "plantmatter" = 0.15)

/obj/item/reagent_containers/food/snacks/grown/watermelon/mutagen
	seed = /obj/item/seeds/watermelon/mutagen
	name = "muterwelon"
	desc = "It twitches every so often."
	icon_state = "watermelon"
	//slice_path = none
	//slices_num = 5
	filling_color = "#00f000"
	bitesize_mod = 2