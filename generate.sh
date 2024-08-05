#!/usr/bin/env bash

# generated from sitemap.xml at 2024-08-05
links=(
    "posts"
    "tags/story"
    "tags"
    "posts/the-inevitable-doom"
    "posts/item-patterns-and-struct-else"
    "tags/language-design"
    "tags/rust"
    "posts/box-is-a-unique-type"
    "tags/unsafe-code"
    "categories"
)

for link in "${links[@]}"; do
    mkdir -p "$link"
    url="https://noratrieb.dev/blog/$link/"
    cat > "$link/index.html" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>noratrieb.dev</title>
    <meta http-equiv="refresh" content="0; url=$url" />
</head>
<body>
    <h1>redirecting to noratrieb.dev/blog...</h1>
    <p>if this doesn't happen automatically, click on the link below</p>
    <a href="$url">$url</a>
</body>
</html>
EOF
done
