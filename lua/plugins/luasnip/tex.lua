local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {

  -- Greek letters
  s({ trig = ",a", name = "alpha", snippetType = "autosnippet" }, {
    t("\\alpha"),
  }),
  s({ trig = ",b", name = "beta", snippetType = "autosnippet" }, {
    t("\\beta"),
  }),
  s({ trig = ",g", name = "gamma", snippetType = "autosnippet" }, {
    t("\\gamma"),
  }),
  s({ trig = ",p", name = "psi", snippetType = "autosnippet" }, {
    t("\\psi"),
  }),
  s({ trig = ",o", name = "omega", snippetType = "autosnippet" }, {
    t("\\omega"),
  }),
  s({ trig = ",t", name = "theta", snippetType = "autosnippet" }, {
    t("\\theta"),
  }),

  -- Math
  s(
    { trig = "ff", name = "frac", snippetType = "autosnippet" },
    fmt("\\frac{<>}{<>}", {
      i(1),
      i(2),
    }, { delimiters = "<>" })
  ),

  s(
    { trig = "eq", name = "equation" },
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(1) }
    )
  ),

  -- General
  s(
    { trig = "env", name = "Environment", snippetType = "autosnippet" },
    fmta(
      [[
      \begin{<>}
          <>
      \end{<>}
    ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    )
  ),
}
