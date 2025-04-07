---@meta

---@type "zh" | "zhr" | "zht" | "en" | "fr" | "es" |"de" |"it" | "pt" | "pl" | "ru" | "ko"
locale = "en"

---@type string
name = ""
---@type string
author = ""
---@type string
description = ""
---@type string
forumthread = ""

---@type string
version = ""
---@type string | nil
version_compatible = nil

---@type number
api_version = 10
---@type number
api_version_dst = 10
---@type boolean
dst_compatible = true

---@type number
priority = 0
---@type boolean
client_only_mod = false
---@type boolean
all_clients_require_mod = true

---@type string
icon = ""
---@type string
icon_atlas = ""

---@class game_mode
---@field name string
---@field label string
---@field description string | nil
---@field settings table | nil

---@type game_mode[]
game_modes = {}

---@type { [string]: boolean, workshop: string | nil }[]
mod_dependencies = {}

---@type string[]
server_filter_tags = {}

---@class mod_configuration_option
---@field description string
---@field data any

---@class mod_configuration
---@field name string
---@field label string | nil
---@field hover string | nil
---@field options mod_configuration_option[]
---@field default any

---@type mod_configuration[]
configuration_options = {}
