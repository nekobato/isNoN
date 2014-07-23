'use strict'

assert = require 'assert'
path = require 'path'

describe 'isNoN', ->

  isNoN = require '../lib/isnon.js'
  
  it 'NoN is NoN', (done) ->

    NoN = 'なのん'
    assert.equal isNoN(NoN), true
    done()

  it 'ちくわ大明神 is not NoN', (done) ->

    NoN = 'ちくわ大明神'
    assert.equal isNoN(NoN), false
    done()

  it 'NoN is string', (done) ->

    NoN = 100
    assert.equal isNoN(NoN), false
    done()
