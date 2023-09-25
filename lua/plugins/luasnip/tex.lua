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
  s({ trig = ",p", name = "pi", snippetType = "autosnippet" }, {
    t("\\pi"),
  }),
  s({ trig = ",ph", name = "phi", snippetType = "autosnippet" }, {
    t("\\varphi"),
  }),
  s({ trig = ",ps", name = "psi", snippetType = "autosnippet" }, {
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
  s(
    { trig = "dm", name = "big mathenv", snippetType = "autosnippet" },
    fmta(
      [[
        $$
        <>
        $$
      ]],
      { i(1) }
    )
  ),
  s({ trig = "mk", name = "mathenv", snippetType = "autosnippet" }, fmt("$<>$", { i(1) }, { delimiters = "<>" })),

  -- Operations
  s(
    { trig = "tt", name = "Math text", snippetType = "autosnippet" },
    fmt("\\text{<>}", { i(1) }, { delimiters = "<>" })
  ),
  s(
    { trig = "bb", name = "mathbb", snippetType = "autosnippet" },
    fmt("\\mathbb{<>}", { i(1) }, { delimiters = "<>" })
  ),
  s({ trig = "rd", name = "power", snippetType = "autosnippet" }, fmt("^{<>}", { i(1) }, { delimiters = "<>" })),
  s(
    { trig = "bf", name = "mathbf", snippetType = "autosnippet" },
    fmt("\\mathbf{<>}", { i(1) }, { delimiters = "<>" })
  ),
  s(
    { trig = "ff", name = "frac", snippetType = "autosnippet" },
    fmt("\\frac{<>}{<>}", {
      i(1),
      i(2),
    }, { delimiters = "<>" })
  ),
}
