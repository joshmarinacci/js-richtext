rm -rf build/canvas/bundle.js

browserify \
    -d \
    --verbose \
    -r ./document.js:rt-document \
    -r ./component.js:rt-component \
    -r ./cursor.js:rt-cursor \
    -r ./common.js:rt-common \
    -r ./layout.js:rt-layout \
    -r ./render.js:rt-render \
    -r ./keyboard.js:rt-keyboard \
    -o bundle.js
echo "built!"
