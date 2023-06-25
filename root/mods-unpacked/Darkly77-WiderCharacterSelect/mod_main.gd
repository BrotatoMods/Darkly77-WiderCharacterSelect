extends Node

const WIDEGUI_LOG = "Darkly77-WiderCharacterSelect"
var dir = ""


# Boilerplate
# =============================================================================

func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", WIDEGUI_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + "Darkly77-WiderCharacterSelect/"

	_install_extensions(modLoader)


func _ready():
	ModLoaderLog.info("Done", WIDEGUI_LOG)


# Custom
# =============================================================================

func _install_extensions(modLoader):
	# GUI - Character select columns
	ModLoaderMod.install_script_extension(dir + "extensions/ui/menus/run/character_selection.gd")
