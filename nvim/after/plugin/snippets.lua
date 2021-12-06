local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node

ls.filetype_extend("lua", { "c" })
ls.filetype_set("cpp", { "c" })

ls.snippets = {

  all = {
  },
  c = {
    s("cout", {
      t("std::cout << \""),
      i(1),
      t("\" << std::endl"),
    })
  },
}

