extends Node

const WIDEGUI_LOG = "Darkly77-ContentLoader"
var dir = ""


# Boilerplate
# =============================================================================

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", WIDEGUI_LOG)
	dir = modLoader.UNPACKED_DIR + "Darkly77-WiderCharacterSelect/"

	_install_extensions(modLoader)


func _ready():
	ModLoaderUtils.log_info("Done", WIDEGUI_LOG)


# Custom
# =============================================================================

func _install_extensions(modLoader):
	# GUI - Character select columns
	modLoader.install_script_extension(dir + "extensions/ui/menus/run/character_selection.gd")
