extends Node

const SCENE_PATHS: Dictionary = {
	"province": "uid://dup7b0ola83fb",
	"filter_menu": "uid://c171lltpippur",
	"hex_cell": "uid://cagdsf1mx04u7",
	"cell_label": "uid://cq7lki5xujwcf"
}

enum resourceType {
	NONE,
	RAW,
	INTERMEDIATE,
	FOOD_AND_DRINK,
	CLOTHING_AND_TEXTILES,
	CRAFTED,
	TOOLS,
	WEAPONS
}

enum resourceSubType {
	NONE,
	FLORA,
	FAUNA,
	MINERALS,
	BAKED_GOODS,
	MEAT,
	PREPARED_MEALS,
	SWEETS,
	DAIRY,
	DRINKS,
	CLOTHING,
	KNOWLEDGE,
	MUSIC_AND_ART,
	HOUSEHOLD,
	SCIENCE,
	GAMES
}
