
pcall(require, "impatient")

-- require "jed.profile"

--[[ 
if require "jed.first_load"() then
    return
end
]]--

-- Leader key ','

vim.g.mapleader = ","

require "jed.plugins"
require "jed.settings"
require "jed.mappings"
require "jed.themes"


