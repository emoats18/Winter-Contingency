/* First aid storage
* Contains:
*		First Aid Kits
* 		Pill Bottles
*/

/*
* First Aid Kits
*/
/obj/item/storage/firstaid
	name = "first-aid kit"
	desc = "It's an emergency medical kit for those serious boo-boos."
	icon_state = "firstaid"
	w_class = WEIGHT_CLASS_BULKY
	throw_speed = 2
	throw_range = 8
	cant_hold = list(
		/obj/item/ammo_magazine,
		/obj/item/explosive/grenade,
	)
	var/empty = FALSE //whether the kit starts empty
	var/icon_full //icon state to use when kit is full
	var/possible_icons_full

/obj/item/storage/firstaid/Initialize(mapload, ...)
	. = ..()
	if(possible_icons_full)
		icon_state = pick(possible_icons_full)
	icon_full = icon_state
	if(empty)
		icon_state = "kit_empty"
	else
		fill_firstaid_kit()


/obj/item/storage/firstaid/update_icon()
	if(!contents.len)
		icon_state = "kit_empty"
	else
		icon_state = icon_full


//to fill medkits with stuff when spawned
/obj/item/storage/firstaid/proc/fill_firstaid_kit()
	return


/obj/item/storage/firstaid/fire
	name = "fire first-aid kit"
	desc = "It's an emergency medical kit for when the toxins lab <i>-spontaneously-</i> burns down."
	icon_state = "ointment"
	item_state = "firstaid-ointment"
	possible_icons_full = list("ointment","firefirstaid")

/obj/item/storage/firstaid/fire/fill_firstaid_kit()
	new /obj/item/healthanalyzer(src)
	new /obj/item/storage/pill_bottle/kelotane(src)
	new /obj/item/storage/pill_bottle/tramadol(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/storage/pill_bottle/packet/leporazine(src)
	new /obj/item/storage/syringe_case/burn(src)


/obj/item/storage/firstaid/regular
	icon_state = "firstaid"

/obj/item/storage/firstaid/regular/fill_firstaid_kit()
	new /obj/item/healthanalyzer(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/tricordrazine(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/tramadol(src)
	new /obj/item/stack/medical/splint(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/biofoam/small(src)


/obj/item/storage/firstaid/toxin
	name = "toxin first aid"
	desc = "Used to treat when you have a high amount of toxins in your body."
	icon_state = "antitoxin"
	item_state = "firstaid-toxin"
	possible_icons_full = list("antitoxin","antitoxfirstaid","antitoxfirstaid2","antitoxfirstaid3")

/obj/item/storage/firstaid/toxin/fill_firstaid_kit()
	new /obj/item/healthanalyzer(src)
	new /obj/item/storage/pill_bottle/dylovene(src)
	new /obj/item/storage/pill_bottle/peridaxon(src)
	new /obj/item/storage/pill_bottle/packet/ryetalyn(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/hypervene(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/hypervene(src)
	new /obj/item/storage/syringe_case/tox(src)


/obj/item/storage/firstaid/o2
	name = "oxygen deprivation first aid"
	desc = "A box full of oxygen goodies."
	icon_state = "o2"
	item_state = "firstaid-o2"

/obj/item/storage/firstaid/o2/fill_firstaid_kit()
	new /obj/item/healthanalyzer(src)
	new /obj/item/storage/pill_bottle/dexalin(src)
	new /obj/item/storage/pill_bottle/inaprovaline(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/dexalinplus(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/dexalinplus(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/dexalinplus(src)
	new /obj/item/storage/syringe_case/oxy(src)


/obj/item/storage/firstaid/adv
	name = "advanced first-aid kit"
	desc = "Contains advanced medical treatments."
	icon_state = "advfirstaid"
	item_state = "firstaid-advanced"

/obj/item/storage/firstaid/adv/fill_firstaid_kit()
	new /obj/item/healthanalyzer(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/storage/pill_bottle/bicaridine(src)
	new /obj/item/storage/pill_bottle/kelotane(src)
	new /obj/item/storage/pill_bottle/tramadol(src)
	new /obj/item/stack/medical/splint(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/biofoam(src)


/obj/item/storage/firstaid/rad
	name = "radiation first-aid kit"
	desc = "Contains treatment for radiation exposure"
	icon_state = "purplefirstaid"
	item_state = "firstaid-rad"

/obj/item/storage/firstaid/rad/fill_firstaid_kit()
	new /obj/item/healthanalyzer(src)
	new /obj/item/storage/pill_bottle/russianRed(src)
	new /obj/item/storage/pill_bottle/dylovene(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/tricordrazine(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/tricordrazine(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/bicaridine(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/bicaridine(src)


	/*
* Syringe Case
*/


/obj/item/storage/syringe_case
	name = "syringe case"
	desc = "It's a medical case for storing syringes and bottles."
	icon_state = "syringe_case"
	throw_speed = 2
	throw_range = 8
	storage_slots = 3
	w_class = WEIGHT_CLASS_SMALL
	can_hold = list(
		/obj/item/reagent_containers/pill,
		/obj/item/reagent_containers/glass/bottle,
		/obj/item/paper,
		/obj/item/reagent_containers/syringe,
		/obj/item/reagent_containers/hypospray/autoinjector,
	)

/obj/item/storage/syringe_case/regular
	name = "basic syringe case"
	desc = "It's a medical case for storing syringes and bottles. This one contains basic meds."

/obj/item/storage/syringe_case/regular/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/inaprovaline(src)
	new /obj/item/reagent_containers/glass/bottle/tricordrazine(src)

/obj/item/storage/syringe_case/burn
	name = "burn syringe case"
	desc = "It's a medical case for storing syringes and bottles. This one contains meds designed to treat burns."

/obj/item/storage/syringe_case/burn/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/kelotane(src)
	new /obj/item/reagent_containers/glass/bottle/oxycodone(src)

/obj/item/storage/syringe_case/tox
	name = "toxins syringe case"
	desc = "It's a medical case for storing syringes and bottles. This one contains meds designed to treat toxins."

/obj/item/storage/syringe_case/tox/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/dylovene(src)
	new /obj/item/reagent_containers/glass/bottle/hypervene(src)

/obj/item/storage/syringe_case/oxy
	name = "oxyloss syringe case"
	desc = "It's a medical case for storing syringes and bottles. This one contains meds designed to treat oxygen deprivation."

/obj/item/storage/syringe_case/oxy/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/inaprovaline(src)
	new /obj/item/reagent_containers/glass/bottle/dexalin(src)

/obj/item/storage/syringe_case/meralyne
	name = "syringe case (meralyne)"
	desc = "It's a medical case for storing syringes and bottles. This one contains Meralyne."

/obj/item/storage/syringe_case/meralyne/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/meralyne(src)
	new /obj/item/reagent_containers/glass/bottle/meralyne(src)

/obj/item/storage/syringe_case/dermaline
	name = "syringe case (dermaline)"
	desc = "It's a medical case for storing syringes and bottles. This one contains Dermaline."

/obj/item/storage/syringe_case/dermaline/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/dermaline(src)
	new /obj/item/reagent_containers/glass/bottle/dermaline(src)

/obj/item/storage/syringe_case/meraderm
	name = "syringe case (meraderm)"
	desc = "It's a medical case for storing syringes and bottles. This one contains Meraderm."

/obj/item/storage/syringe_case/meraderm/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/meraderm(src)
	new /obj/item/reagent_containers/glass/bottle/meraderm(src)

/obj/item/storage/syringe_case/ironsugar
	name = "syringe case (ironsugar)"
	desc = "It's a medical case for storing syringes and bottles. This one contains Ironsugar."

/obj/item/storage/syringe_case/ironsugar/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/syringe(src)
	new /obj/item/reagent_containers/glass/bottle/ironsugar(src)
	new /obj/item/reagent_containers/glass/bottle/ironsugar(src)

/obj/item/storage/syringe_case/combat
	name = "syringe case (combat)"
	desc = "It's a medical case for storing syringes and bottles. This one contains combat autoinjectors."

/obj/item/storage/syringe_case/combat/PopulateContents()
	. = ..()
	new /obj/item/reagent_containers/hypospray/autoinjector/combat(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/combat(src)
	new /obj/item/reagent_containers/hypospray/autoinjector/combat(src)


/*
* Pill Bottles
*/


/obj/item/storage/pill_bottle
	name = "pill bottle"
	desc = "It's an airtight container for storing medication."
	icon_state = "pill_canister1"
	icon = 'icons/obj/items/chemistry.dmi'
	item_state = "contsolid"
	w_class = WEIGHT_CLASS_SMALL
	can_hold = list(
		/obj/item/reagent_containers/pill,
		/obj/item/toy/dice,
		/obj/item/paper,
	)
	allow_quick_gather = 1
	use_to_pickup = 1
	storage_slots = null
	use_sound = 'sound/items/pillbottle.ogg'
	max_storage_space = 16
	var/pill_type_to_fill //type of pill to use to fill in the bottle in New()

/obj/item/storage/pill_bottle/Initialize(mapload, ...)
	. = ..()
	if(pill_type_to_fill)
		for(var/i in 1 to max_storage_space)
			new pill_type_to_fill(src)

/obj/item/storage/pill_bottle/attack_self(mob/living/user)
	if(user.get_inactive_held_item())
		to_chat(user, "<span class='warning'>You need an empty hand to take out a pill.</span>")
		return
	if(contents.len)
		var/obj/item/I = contents[1]
		if(!remove_from_storage(I,user))
			return
		if(user.put_in_inactive_hand(I))
			to_chat(user, "<span class='notice'>You take a pill out of \the [src].</span>")
			playsound(user, 'sound/items/pills.ogg', 15, 1)
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.swap_hand()
		else
			user.dropItemToGround(I)
			to_chat(user, "<span class='notice'>You fumble around with \the [src] and drop a pill on the floor.</span>")
		return
	else
		to_chat(user, "<span class='warning'>\The [src] is empty.</span>")
		return


/obj/item/storage/pill_bottle/kelotane
	name = "kelotane pill bottle"
	desc = "Contains pills that heal burns, but cause slight pain. Take two to heal faster, but have slightly more pain."
	icon_state = "pill_canister2"
	pill_type_to_fill = /obj/item/reagent_containers/pill/kelotane

/obj/item/storage/pill_bottle/dylovene
	name = "dylovene pill bottle"
	desc = "Contains pills that heal toxic damage and purge toxins and neurotoxins of all kinds."
	icon_state = "pill_canister6"
	pill_type_to_fill = /obj/item/reagent_containers/pill/dylovene

/obj/item/storage/pill_bottle/inaprovaline
	name = "inaprovaline pill bottle"
	desc = "Contains pills that prevent wounds from getting worse on their own."
	icon_state = "pill_canister3"
	pill_type_to_fill = /obj/item/reagent_containers/pill/inaprovaline

/obj/item/storage/pill_bottle/tramadol
	name = "tramadol pill bottle"
	desc = "Contains pills that numb pain. Take two for a stronger effect at the cost of a toxic effect."
	icon_state = "pill_canister5"
	pill_type_to_fill = /obj/item/reagent_containers/pill/tramadol

/obj/item/storage/pill_bottle/paracetamol
	name = "paracetamol pill bottle"
	desc = "Contains pills that mildly numb pain. Take two for a slightly stronger effect."
	icon_state = "pill_canister5"
	pill_type_to_fill = /obj/item/reagent_containers/pill/paracetamol

/obj/item/storage/pill_bottle/spaceacillin
	name = "spaceacillin pill bottle"
	desc = "Contains pills that handle low-level viral and bacterial infections. Effect increases with dosage."
	icon_state = "pill_canister4"
	pill_type_to_fill = /obj/item/reagent_containers/pill/spaceacillin

/obj/item/storage/pill_bottle/bicaridine
	name = "bicaridine pill bottle"
	desc = "Contains pills that heal cuts and bruises, but cause slight pain. Take two to heal faster, but have slightly more pain."
	icon_state = "pill_canister11"
	pill_type_to_fill = /obj/item/reagent_containers/pill/bicaridine

/obj/item/storage/pill_bottle/dexalin
	name = "dexalin pill bottle"
	desc = "Contains pills that heal oxygen damage. They can suppress bloodloss symptoms as well."
	icon_state = "pill_canister12"
	pill_type_to_fill = /obj/item/reagent_containers/pill/dexalin

/obj/item/storage/pill_bottle/alkysine
	name = "alkysine pill bottle"
	desc = "Contains pills that heal brain damage."
	icon_state = "pill_canister7"
	pill_type_to_fill = /obj/item/reagent_containers/pill/alkysine

/obj/item/storage/pill_bottle/imidazoline
	name = "imidazoline pill bottle"
	desc = "Contains pills that heal eye damage."
	icon_state = "pill_canister9"
	pill_type_to_fill = /obj/item/reagent_containers/pill/imidazoline

/obj/item/storage/pill_bottle/peridaxon
	name = "peridaxon pill bottle"
	desc = "Contains pills that suppress organ damage while waiting for a full treatment."
	icon_state = "pill_canister10"
	pill_type_to_fill = /obj/item/reagent_containers/pill/peridaxon

/obj/item/storage/pill_bottle/russianRed
	name = "\improper Russian Red pill bottle"
	desc = "Contains pills that heal all damage rapidly at the cost of small amounts of unhealable damage."
	icon_state = "pill_canister1"
	pill_type_to_fill = /obj/item/reagent_containers/pill/russian_red

/obj/item/storage/pill_bottle/quickclot
	name = "quick-clot pill bottle"
	desc = "Contains pills that suppress internal bleeding while waiting for full treatment."
	icon_state = "pill_canister8"
	pill_type_to_fill = /obj/item/reagent_containers/pill/quickclot

/obj/item/storage/pill_bottle/hypervene
	name = "hypervene pill bottle"
	desc = "A purge medication used to treat overdoses and rapidly remove toxins. Causes pain and vomiting."
	icon_state = "pill_canister7"
	pill_type_to_fill = /obj/item/reagent_containers/pill/hypervene

/obj/item/storage/pill_bottle/tricordrazine
	name = "tricordrazine pill bottle"
	desc = "Contains pills commonly used by untrained Squad Marines to avoid seeing their Squad Medic."
	icon_state = "pill_canister9"
	pill_type_to_fill = /obj/item/reagent_containers/pill/tricordrazine

/obj/item/storage/pill_bottle/happy
	name = "happy pill bottle"
	desc = "Contains highly illegal drugs. When you want to see the rainbow."
	max_storage_space = 7
	pill_type_to_fill = /obj/item/reagent_containers/pill/happy

/obj/item/storage/pill_bottle/zoom
	name = "zoom pill bottle"
	desc = "Containts highly illegal drugs. Trade heart for speed."
	max_storage_space = 7
	pill_type_to_fill = /obj/item/reagent_containers/pill/zoom

//Pill bottles with identification locks.

/obj/item/storage/pill_bottle/restricted
	var/req_id_role
	var/scan_name = FALSE
	var/req_role

/obj/item/storage/pill_bottle/restricted/proc/scan(mob/living/L)

	if(L.status_flags & GODMODE) //Let it be
		return TRUE

	if(!allowed(L))
		to_chat(L, "<span class='notice'>It seems to have some kind of ID lock...</span>")
		return FALSE

	if(req_id_role || scan_name)
		var/obj/item/card/id/I = L.get_idcard()
		if(!I)
			to_chat(L, "<span class='notice'>It seems to have some kind of ID lock...</span>")
			return FALSE

		if(scan_name && (I.registered_name != L.real_name))
			to_chat(L, "<span class='warning'>it seems to have some kind of ID lock...</span>")
			return FALSE

		if(req_id_role && (I.rank != req_id_role))
			to_chat(L, "<span class='notice'>It must have some kind of ID lock...</span>")
			return FALSE

	if(req_role && (!L.job || L.job.title != req_role))
		to_chat(L, "<span class='notice'>It must have some kind of special lock...</span>")
		return FALSE

	return TRUE

/obj/item/storage/pill_bottle/restricted/attack_self(mob/living/user)
	if(scan(user))
		return ..()

/obj/item/storage/pill_bottle/restricted/open(mob/user)
	if(scan(user))
		return ..()

/obj/item/storage/pill_bottle/restricted/ultrazine
	icon_state = "pill_canister11"
	max_storage_space = 5
	pill_type_to_fill = /obj/item/reagent_containers/pill/ultrazine

	req_access = list(ACCESS_NT_CORPORATE)
	req_id_role = CORPORATE_LIAISON
	scan_name = TRUE
