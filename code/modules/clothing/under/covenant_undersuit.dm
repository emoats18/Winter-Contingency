//Halo//



/obj/item/clothing/under/sangheili
	name = "Sangheili undersuit"
	desc = "A hearty, strong, and elegant undersuit given to Sangheili warriors within the Covenant Empire."
	icon = 'icons/obj/clothing/covenant/sangheili.dmi'
	icon_state = "sangheili_suit"
	item_state = "sangheili_suit"
	sprite_sheet_id = 1
	flags_armor_protection = CHEST|GROIN|LEGS|ARMS
	flags_cold_protection = CHEST|GROIN|LEGS|ARMS
	flags_heat_protection = CHEST|GROIN|LEGS|ARMS
	permeability_coefficient = 0.90
	flags_equip_slot = ITEM_SLOT_ICLOTHING
	soft_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	w_class = WEIGHT_CLASS_NORMAL
	has_sensor = 1//For the crew computer 2 = unable to change mode
	sensor_mode = 1 //change this if we get team-based sensors
		/*
		1 = Report living/dead
		2 = Report detailed damages
		3 = Report location
		*/
	displays_id = 1
	rollable_sleeves = FALSE //can we roll the sleeves on this uniform?
	rolled_sleeves = FALSE //are the sleeves currently rolled?
	sprite_sheets = list("Sangheili" = 'icons/mob/species/sangheili/uniform.dmi')

//	var/list/species_allowed = list("Sangheili","Unggoy", "Kigyar")

/obj/item/clothing/under/kigyar
	name = "Kig-Yar undersuit"
	desc = "A basic undersuit, issued to Kig-Yar within the Covenat Empire."
	siemens_coefficient = 0.9
	icon_state = "kigyar_uniform"
	soft_armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 5, "rad" = 5, "fire" = 5, "acid" = 5)
	rollable_sleeves = TRUE

/obj/item/clothing/under/unggoy
	name = "Unggoy undersuit"
	desc = "A cheap undersuit, issued to Unggoy within the Covenat Empire."
	siemens_coefficient = 0.9
	icon_state = "unggoy_uniform"
	soft_armor = list("melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 5, "rad" = 5, "fire" = 5, "acid" = 5)
	rollable_sleeves = FALSE
