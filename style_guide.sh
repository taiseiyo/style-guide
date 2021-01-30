#!/usr/bin/env bash


declare -A urls=(["ShellScript"]="https://google.github.io/styleguide/shellguide.html"
		 ["Python"]="https://pep8-ja.readthedocs.io/ja/latest/"
		 ["JavaScript"]="https://developer.mozilla.org/ja/docs/Mozilla/JavaScript_style_guide"
		)

for key in ${!urls[@]};do
    echo ${key}
done | fzf | { read v; firefox ${urls[${v}]}; }
