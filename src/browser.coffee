# @jsx h

do ->
  'use strict'
  document = require 'global/document'
  window = require 'global/window'
  hg = require 'mercury/index.js'
  h = hg.h
  Event = require "geval"
  Screen = require "./scroll.coffee"
  scr =  new Screen
  App = -> hg.state
    screen: hg.state
      scrollY: scr.scrollY
      lastScrollUp: scr.lastScrollUp
    channels: {}
  
  #incrementCounter = (state) ->
  #  state.value.set(state.value() + 1)
  #  return

  style =
    height: "2000px"
    width: "100%"
    marginTop: "0px"
    top: "0px"
    position: "relative"
  
  render = (state) ->
    if state.screen.scrollY > 200 and not state.screen.lastScrollUp
      top_bar_class = "header_hidden"
    else
      top_bar_class = "header"
    `<div style={style} >
        <div className={top_bar_class}>
          <p>{state.screen.scrollY.toString()}</p>
        </div>
    </div>`
  
  hg.app document.body, App(), render

 