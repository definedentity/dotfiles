local utils = require("_utils")

local config = utils.merge_all(
    require("config.appearance"),
    require("config.keybinds"),
    require("config.colors.init"),
    {}
)

return config
