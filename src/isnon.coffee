path = require 'path'

isNoN = (non) ->
  return false if typeof non != 'string'

  json = require './serifexps'

  for serif in json
    re = new RegExp serif
    return true if non.match re
  return false

module.exports = isNoN
