pcall(require, "impatient")

-- require "jed.profile"

-- Download packer if not existing 
if require "jed.first_load"() then
    return
end


-- Leader key ','

vim.g.mapleader = ","

require "jed.plugins"
require "jed.settings"
require "jed.mappings"

-- Load telescope setup and mappings
require "jed.telescope_setup"
require "jed.telescope_mappings"
