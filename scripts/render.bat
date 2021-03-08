@echo off

echo "Rendering HTML"

emacs -q -nw --batch --load "./scripts/render.el"
