local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

--[[
---------  INFO: Snippets for C
--]]

-- TODO: Checkout how to activate this only for .c flies

ls.add_snippets("c", {
    s("bp", {
        t({"#include <stdio.h>", ""}),
        t("int main() {"),
        t({"", "\t"}),
        i(1),
        t({"", "\tprintf(\"Hello, World!\\n\");"}),
        t({"", "\treturn 0;"}),
        t({"", "}"})
    }),
})

