local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

local function snake_to_camel(str)
  return str:gsub("-(%w)", function(c)
    return c:upper()
  end)
end

local function get_file_name_without_extension_cc()
  local file_name = vim.fn.expand("%:t:r")
  return snake_to_camel(file_name):gsub("^.", string.upper)
end

local function get_file_name_without_extension_scc()
  local file_name = vim.fn.expand("%:t:r")
  return snake_to_camel(file_name)
end

ls.add_snippets("all", {
  s("co", {
    t("export const "),
    f(get_file_name_without_extension, {}),
    t({" = () => {", "\t"}),
    i(0, ""),
    t({"", "}"}),
  })
})

ls.add_snippets("all", {
  s("cp", {
    t({"type TProps = {", "\t", "};", ""}),
    t("export const "),
    f(get_file_name_without_extension_cc, {}),
    t({" = ({}: TProps) => {", "\t"}),
    i(0, ""),
    t({"", "}"}),
  })
})

ls.add_snippets("all", {
  s("ho", {
    t("export const "),
    f(get_file_name_without_extension_scc, {}),
    t({" = () => {", "\t"}),
    i(0, ""),
    t({"", "}"}),
  })
})
