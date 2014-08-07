path = require 'path'
MeCab = new require 'mecab-async'

isNoN = (non) ->

  check = (nodes, section) ->
    for word, i in section
      console.log 'node：　', nodes[i]
      console.log 'word：　', word
      for w, j in word
        console.log 'w：　', w
        if not nodes[i][j].match w
          console.log 'false'
          return false
    console.log 'passed'
    return true

  test = (json) ->
    for section in json
      

  return false if typeof non != 'string'
  return true if non is 'にゃんぱすー'

  mecab = new MeCab()
  json = require './serifexps'

  nodes = mecab.parseSync non
  nodes = nodes.reverse()

  console.log nodes

  for section in json
    return true if check nodes, section
  return false

module.exports = isNoN
