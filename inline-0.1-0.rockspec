package = "Inline"
version = "0.1-0"
source = {
   url = "https://github.com/AricHasting/inline.git"
}
description = {
   summary = "Inline CSS for Lapis",
   homepage = "https://github.com/AricHasting/inline",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4",
    "murmurhash3 >= 1.3-0"
}
build = {
   type = "builtin",
   modules = {
       inline = "src/inline.lua"
   }
}
