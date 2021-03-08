@echo off

echo "Rendering HTML"

emacs -nw --batch --load "./scripts/render.el"
