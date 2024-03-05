local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("php", {
	s("!html5", {
		t({
			"<!DOCTYPE html>",
			"<html lang=\"en\">",
			"\t<head>",
			"\t\t<meta charset=\"UTF-8\">",
			"\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">",
		}),
		t({
			"",
			"\t\t<title>"
		}),
		i(1, "Document"),
		t({
			"</title>",
			"\t\t<link href=\"css/style.css\" rel=\"stylesheet\">",
			"\t</head>",
			"\t<body>",
			"",
		}),
		i(2),
		t({"", "\t</body>", "</html>"}),
	}),

	s("php", {
		t({"<?php", ""}),
		i(1),
		t({"", "?>"}),
	})
})
