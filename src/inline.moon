import hash32 from require "murmurhash3"

class Inline
  @styles = ""
  @classNames = {}

  -- Registers a classname and returns it
  css: (str) =>
    name = @getUniqueClassName str
    @@styles = @@styles .. " .#{name} {#{str}}"
    name

  -- Outputs a rendered style object
  stylesheet: =>
    @@styles
  
  -- Returns a unique hash value from the css string
  getUniqueClassName: (str) =>
    h = @hash str
    while @@classNames[h] ~= nil
      h = h + 1
    @@classNames.h = 1
    "inline-css-#{h}"

  -- Encodes css string using murmurhash3
  hash: (str) =>
    hash32 str