//Infamous faction capturepoint code. Took over a month to make work after saying it could be ported in a day from modern TG code, after it was already ported from ancient tg code.

var/list/obj/machinery/capbeacon/cps = list()

/obj/machinery/capbeacon
	name = "UNSC Navigational Beacon"
	desc = "A beacon used by the UNSC Navigational Beacon for navigational purposes. Hacking it with your tablet would benefit your team."
	icon = 'icons/obj/machines/comm_tower.dmi'
	icon_state = "comm_tower"
	density = TRUE
	anchored = TRUE
	var/time_to_hack = 200 // How much attackby() delay beacon will get//
	var/capture_points = 5 // How much point faction will get upon capturing//
	var/ppm = 8 // Points per minute, This can be less than 1 if you want less tickets//
	var/controlled_by
	resistance_flags = RESIST_ALL

/obj/machinery/capbeacon/New()
	..()
	name = "UNSC Navigational Beacon ([get_area(loc)])"
	cps.Add(src)
	update_desc()

/obj/machinery/capbeacon/Destroy()
	cps.Remove(src)
	..()

/obj/machinery/capbeacon/proc/update_desc()
	if(controlled_by)

		desc = "A beacon used by the UNSC Navigational Beacon for navigational purposes. Hacking it with your tablet would benefit your team. This one is under [controlled_by]'s control."
	else
		desc = "A beacon used by the UNSC Navigational Beacon for navigational purposes. Hacking it with your tablet would benefit your team. This one is not under anyone's control."

/obj/machinery/capbeacon/attack_hand(mob/living/user)
	. = ..()
	if(!ishuman(user))
		to_chat(user, "<span class = 'warning'>You are not a human.</span>")
		return
	var/mob/living/carbon/human/H = user
	if(controlled_by == H.faction)
		to_chat(H, "<span class = 'notice'>[get_area(loc)] is already captured by your faction!</span>")
		return

	priority_announce("[H.faction] has began capturing the UNSC Navigational Beacon at [get_area(loc)].","UNSC Navigation System")
	audible_message("<b>[H.faction] has began capturing the UNSC Navigational Beacon [get_area(loc)]!<b>")
	if(do_after(H, time_to_hack, 1, src))
		controlled_by = H.faction
		priority_announce("[H.faction] has captured the UNSC Navigational Beacon at [get_area(loc)].","UNSC Navigation System")
		audible_message("<b>[H.faction] has captured the UNSC Navigational Beacon at [get_area(loc)]!<b>")
		update_desc()
		var/datum/game_mode/liberation/W = SSticker.mode
		if(istype(W))
			W.cap_tickets(controlled_by, capture_points)
