'use strict'

assert = require 'assert'
path = require 'path'

describe 'isNoN', ->

  this.timeout(10000);

  isNoN = require '../lib/isnon.js'

  it 'にゃんぱすー', (done) ->
    assert.equal isNoN('にゃんぱすー'), true
    done()

  it 'たん', (done) ->
    assert.equal isNoN('宿題いっぱい出てたん'), true
    assert.equal isNoN('姉ねぇなんでそれでゲームにしようっていったん'), true
    done()

  it 'るん', (done) ->
    assert.equal isNoN('なんかいるん！'), true
    done()

  it 'のん', (done) ->
    assert.equal isNoN('皆で勉強するのん'), true
    assert.equal isNoN('大丈夫なのん'), true
    done()
  
  it 'なん', (done) ->
    assert.equal isNoN('じゃ またあとでなーん'), true
    assert.equal isNoN('ひらたいらさんいっぱいなん！'), true
    assert.equal isNoN('ウチそんなんじゃダメだと思うん'), true
    done()

  it 'なー', (done) ->
    assert.equal isNoN('鉛筆なんな'), true
    assert.equal isNoN('しっかりしてほしいっていってるんにー！'), true
    assert.equal isNoN('明日からはちゃんとするのんなー？'), true
    done()

  it 'いん', (done) ->
    assert.equal isNoN('これちょっとおかしいん'), true
    assert.equal isNoN('ウチ窓の方座っていいん？'), true
    done()

###
  it 'ちくわ大明神 is not NoN', (done) ->

    NoN = 'ちくわ大明神'
    assert.equal isNoN(NoN), false
    done()

  it 'NoN is string', (done) ->

    NoN = 100
    assert.equal isNoN(NoN), false
    done()
###