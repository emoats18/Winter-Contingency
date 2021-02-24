//Halo//

/obj/item/clothing/shoes/covenant/


//	var/list/species_allowed = list("Sangheili","Unggoy", "Kigyar")

/obj/item/clothing/shoes/covenant/sangheili
	icon = 'icons/obj/clothing/covenant/sangheili.dmi'
	soft_armor = list("melee" = 45, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 10, "rad" = 0, "fire" = 10, "acid" = 25)
	sprite_sheets = list("Sangheili" = 'icons/mob/species/sangheili/shoes.dmi')
//	species_allowed = "Sangheili"

/obj/item/clothing/shoes/covenant/sangheili/minor
	name = "Minor Greaves"
	desc = "A pair of greaves for Sangheili Minors."
	icon_state = "minor_legs"
	item_state = "minor_legs"

/obj/item/clothing/shoes/covenant/sangheili/ranger
	name = "Ranger Greaves"
	desc = "A pair of greaves for Sangheili Rangers."
	icon_state = "ranger_legs"
	item_state = "ranger_legs"

/obj/item/clothing/shoes/covenant/sangheili/officer
	name = "Officer Greaves"
	desc = "A pair of greaves for Sangheili Officers."
	icon_state = "officer_legs"
	item_state = "officer_legs"

/obj/item/clothing/shoes/covenant/sangheili/specops
	name = "Special Ops Greaves"
	desc = "A pair of greaves for Special Operations Sangheili."
	icon_state = "specops_legs"
	item_state = "specops_legs"

/obj/item/clothing/shoes/covenant/sangheili/ultra
	name = "Ultra Greaves"
	desc = "A pair of greaves for Sangheili Ultras."
	icon_state = "ultra_legs"
	item_state = "ultra_legs"

/obj/item/clothing/shoes/covenant/sangheili/general
	name = "General Greaves"
	desc = "A pair of greaves for Sangheili Generals."
	icon_state = "general_legs"
	item_state = "general_legs"

/obj/item/clothing/shoes/covenant/kigyar
	name = "Kig-Yar greaves"
	desc = "A pair of greaves for Kig-Yar infantry.."
	icon_state = "kigyar"
	item_state = "kigyar"

/obj/item/clothing/shoes/covenant/unggoy //need to make this unremovable
	name = "Armored Feet"
	desc = "Coming from the harsh world of Balaho, Unggoy naturally developed tougher skin that is more resistant to the elements than other species."
	icon_state = "unggoy"
	item_state = "unggoy"

/obj/item/clothing/shoes/covenant/unggoy/dropped(mob/user as mob)
	. = ..()
	if(isnull(src.gc_destroyed))
		qdel(src)

