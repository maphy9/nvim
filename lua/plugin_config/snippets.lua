local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("php", {
	s("php", {
		t({'<?php', ''}),
		i(1),
		t({'', '?>'})
	}),
	s("echo", {
		t("echo \""),
		i(1),
		t("\";"),
	})
})
