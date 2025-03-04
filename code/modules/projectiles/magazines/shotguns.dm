//-------------------------------------------------------
//Generic shotgun magazines. Only three of them, since all shotguns can use the same ammo unless we add other gauges.

/*
Shotguns don't really use unique "ammo" like other guns. They just load from a pool of ammo and generate the projectile
on the go. There's also buffering involved. But, we do need the ammo to check handfuls type, and it's nice to have when
you're looking back on the different shotgun projectiles available. In short of it, it's not needed to have more than
one type of shotgun ammo, but I think it helps in referencing it. ~N
*/
/obj/item/ammo_magazine/shotgun
	name = "box of 12 gauge shotgun slugs"
	desc = "A box filled with heavy shotgun shells. A timeless classic. 12 Gauge."
	icon_state = "slugs"
	default_ammo = /datum/ammo/bullet/shotgun/slug
	caliber = "12g" //All shotgun rounds are 12g right now.
	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 25 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.
	w_class = WEIGHT_CLASS_BULKY // Can't throw it in your pocket, friend.

/obj/item/ammo_magazine/shotgun/incendiary
	name = "box of 12 gauge incendiary slugs"
	desc = "A box filled with self-detonating incendiary shotgun rounds. 12 Gauge."
	icon_state = "incendiary"
	default_ammo = /datum/ammo/bullet/shotgun/incendiary

/obj/item/ammo_magazine/shotgun/buckshot
	name = "box of 12 gauge buckshot shells"
	desc = "A box filled with buckshot spread shotgun shells. 12 Gauge."
	icon_state = "buckshot"
	default_ammo = /datum/ammo/bullet/shotgun/buckshot

/obj/item/ammo_magazine/shotgun/flechette
	name = "box of 12 gauge flechette shells"
	desc = "A box filled with flechette shotgun shells. 12 Gauge."
	icon_state = "flechette"
	default_ammo = /datum/ammo/bullet/shotgun/flechette

/obj/item/ammo_magazine/shotgun/beanbag
	name = "box of 12 gauge beanbag slugs"
	desc = "A box filled with beanbag shotgun shells used for non-lethal crowd control. 12 Gauge."
	icon_state = "beanbag"
	default_ammo = /datum/ammo/bullet/shotgun/beanbag

/obj/item/ammo_magazine/rifle/bolt
	name = "box of 7.62x54mmR rifle rounds"
	desc = "A box filled with rifle bullets."
	icon_state = "7.62" //Thank you Alterist
	default_ammo = /datum/ammo/bullet/sniper/svd
	caliber = "7.62x54mmR" //Cyka Blyat
	gun_type = /obj/item/weapon/gun/shotgun/pump/bolt
	max_rounds = 20 // Real rifle boxes are usually 20 rounds. This works with the new system, four handfuls.
	w_class = WEIGHT_CLASS_SMALL // CAN throw it in your pocket, friend.

/obj/item/ammo_magazine/shotgun/mbx900
	name = "box of .410 sabot shells"
	desc = "A box filled with .410 sabot rounds."
	icon_state = "mbx900_sabot"
	default_ammo = /datum/ammo/bullet/shotgun/mbx900_sabot
	caliber = ".410"
	gun_type = /obj/item/weapon/gun/shotgun/pump/lever/mbx900
	max_rounds = 25
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_magazine/shotgun/mbx900/buckshot
	name = "box of .410 buckshot shells"
	desc = "A box filled with .410 buckshot rounds."
	icon_state = "mbx900_buckshot"
	default_ammo = /datum/ammo/bullet/shotgun/mbx900_buckshot

/obj/item/ammo_magazine/shotgun/mbx900/tracking
	name = "box of .410 tracker shells"
	desc = "A box filled with .410 tracker rounds."
	icon_state = "mbx900_tracker"
	default_ammo = /datum/ammo/bullet/shotgun/mbx900_tracker

/obj/item/ammo_magazine/shotgun/eightGauge
	name = "box of 8 gauge buckshot shells"
	desc = "A box of UNSC standard 8 gauge shells. These are buckshot."
	icon_state = "8gaugebuckbox"
	default_ammo = /datum/ammo/bullet/shotgun/halo/buckshot
	caliber = "8g" //Halo shotguns are 8 gauge
	gun_type = /obj/item/weapon/gun/shotgun/pump
	max_rounds = 40 // 5 handfuls

/obj/item/ammo_magazine/shotgun/eightGauge/slug
	name = "box of 8 gauge slugs"
	desc = "A box of UNSC standard 8 gauge shells. These are slugs."
	icon_state = "8gaugeslugbox"
	default_ammo = /datum/ammo/bullet/shotgun/halo/slug

//-------------------------------------------------------

/*
Generic internal magazine. All shotguns will use this or a variation with different ammo number.
Since all shotguns share ammo types, the gun path is going to be the same for all of them. And it
also doesn't really matter. You can only reload them with handfuls.
*/
/obj/item/ammo_magazine/internal/shotgun
	name = "shotgun tube"
	desc = "An internal magazine. It is not supposed to be seen or removed."
	default_ammo = /datum/ammo/bullet/shotgun/slug
	caliber = "12g"
	max_rounds = 8
	chamber_closed = 0
//halo

/obj/item/ammo_magazine/internal/shotgun/pump/halo
	name = "shotgun tube"
	default_ammo = /datum/ammo/bullet/shotgun/halo
	caliber = "8g"
	max_rounds = 8

/obj/item/ammo_magazine/internal/shotgun/pump

/obj/item/ammo_magazine/internal/shotgun/pump/buckshot
	default_ammo = /datum/ammo/bullet/shotgun/buckshot

/obj/item/ammo_magazine/internal/shotgun/pump/CMB
	max_rounds = 8

/obj/item/ammo_magazine/internal/shotgun/pump/bolt
	name = "internal magazine"
	default_ammo = /datum/ammo/bullet/sniper/svd
	caliber = "7.62x54mmR"
	max_rounds = 5

/obj/item/ammo_magazine/internal/shotgun/pump/lever
	name = "tubular magazine"
	default_ammo = /datum/ammo/bullet/revolver
	caliber = ".44"
	max_rounds = 10

/obj/item/ammo_magazine/internal/shotgun/pump/lever/mbx900
	default_ammo = /datum/ammo/bullet/shotgun/mbx900_buckshot
	caliber = ".410"
	current_rounds = 0

/obj/item/ammo_magazine/internal/shotgun/double
	default_ammo = /datum/ammo/bullet/shotgun/buckshot
	max_rounds = 2
	chamber_closed = 1 //Starts out with a closed tube.

/obj/item/ammo_magazine/internal/shotgun/combat
	max_rounds = 9

/obj/item/ammo_magazine/internal/shotgun/merc
	max_rounds = 5

/obj/item/ammo_magazine/internal/shotgun/scout
	max_rounds = 9
	current_rounds = 0
