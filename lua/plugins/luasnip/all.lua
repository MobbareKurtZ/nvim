local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node

return {
  s({ trig = "greek", snippetType = "autosnippet" }, {
    t({ "s({ trig = '", i(1), "', snippetType='autosnippet' }," }, { "{t(\\", i(2), ")}," }, { ")," }),
  }),
}
