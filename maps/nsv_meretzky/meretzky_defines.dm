//ship defs
#define Z_LEVEL_DECK_THREE          1   //contrary to popular belief,
#define Z_LEVEL_DECK_TWO            2   //decks are actually numbered lowest to highest from top to bottom
#define Z_LEVEL_DECK_ONE            3   //crazy how that works, huh?

//centcom / marksman
#define Z_LEVEL_CENTCOM             4

//overmap and ships
#define Z_LEVEL_MISC				5
#define Z_LEVEL_SHIPS				6

//asteroid belt z-levels
#define Z_LEVEL_ROGUEMINE_1			7
#define Z_LEVEL_ROGUEMINE_2			8
#define Z_LEVEL_ROGUEMINE_3			9
#define Z_LEVEL_ROGUEMINE_4			10

//visitable overmap locations (todo: add more POI locations)
#define Z_LEVEL_DEBRISFIELD			11
#define Z_LEVEL_PIRATEBASE			12
#define Z_LEVEL_TRADEPORT           13
//#define Z_LEVEL_LAVALAND          14  //this kind of sucks and should honestly just be its own planet

//potentially actually make the gateway worth a damn to have for anything other than events
//#define Z_LEVEL_GATEWAY           15

/datum/map/meretzky
	name = "Meretzky"
	full_name = "NSV Meretzky"
	path = "meretzky"

    zlevel_datum_type = /datum/map_z_level/meretzky

	station_levels = list(Z_LEVEL_DECK_THREE,
		Z_LEVEL_DECK_TWO,
		Z_LEVEL_DECK_ONE)
    admin_levels = list()
	contact_levels = list(Z_LEVEL_DECK_THREE,
		Z_LEVEL_DECK_TWO,
		Z_LEVEL_DECK_ONE)
	player_levels = list(Z_LEVEL_DECK_THREE,
		Z_LEVEL_DECK_TWO,
		Z_LEVEL_DECK_ONE)
    sealed_levels = list()
    empty_levels = list()

    use_overmap = TRUE
	overmap_z = Z_LEVEL_MISC
	overmap_size = 60
	overmap_event_areas = 50
	usable_email_tlds = list("meretzky.nt")

    holomap_smoosh = list(list(
		Z_LEVEL_DECK_THREE,
		Z_LEVEL_DECK_TWO,
		Z_LEVEL_DECK_ONE))

    station_name	= "NSV Meretzky"
	station_short	= "Meretzky"
	dock_name		= "NDV Marksman"
	dock_type		= "space"
	boss_name		= "Central Command"
	boss_short		= "CentCom"
	company_name	= "NanoTrasen"
	company_short	= "NT"
	starsys_name	= "Witchhead Drifts"

    shuttle_docked_message = "The scheduled crew transfer shuttle has arrived at the escape dock. It will depart in approximately %ETD%."
	shuttle_leaving_dock = "The transfer shuttle has left the ship. Estimate %ETA% until the shuttle arrives at the %dock_name%."
	shuttle_called_message = "A scheduled crew transfer to the %dock_name% is occuring. The shuttle be arriving shortly. Those departing should proceed to the escape dock within %ETA%."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	shuttle_name = "Crew Hands Transfer"
	emergency_shuttle_docked_message = "The emergency shuttle has docked at the escape dock. You have approximately %ETD% to board the shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the station. Estimate %ETA% until the shuttle arrives at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive at the escape dock in approximately %ETA%."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled."

    // Networks that will show up as options in the camera monitor program
	station_networks = list(
							NETWORK_CARGO,
							NETWORK_CIRCUITS,
							NETWORK_CIVILIAN,
							NETWORK_COMMAND,
                            NETWORK_DECK_THREE,
                            NETWORK_DECK_TWO,
                            NETWORK_DECK_ONE,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_MEDICAL,
							NETWORK_RESEARCH,
							NETWORK_ROBOTS,
							NETWORK_PRISON,
							NETWORK_SECURITY,
							NETWORK_TELECOM
							)
	// Camera networks that exist, but don't show on regular camera monitors.
	secondary_networks = list(
							NETWORK_ERT,
							NETWORK_MERCENARY,
							NETWORK_THUNDER,
							NETWORK_COMMUNICATORS,
							NETWORK_ALARM_ATMOS,
							NETWORK_ALARM_POWER,
							NETWORK_ALARM_FIRE,
							NETWORK_SUPPLY
							)