# @jsx h

do ->
  'use strict'
  window = require 'global/window'
  hg = require 'mercury/index.js'
  animFrame = window.requestAnimationFrame or
  window.webkitRequestAnimationFrame or
  window.mozRequestAnimationFrame or
  window.msRequestAnimationFrame or
  window.oRequestAnimationFrame or
  (callback) ->
    window.setTimeout(callback, 1000/60)

  class Screen
    lastPosition: -1
    scrollY: hg.value window.pageYOffset
    lastScrollUp: hg.value false
    
    constructor: ->
      # take window or html element as an arg?
      @scrollLoop()
              
    scrollLoop: =>
      if @lastPosition == window.pageYOffset 
        animFrame @scrollLoop
        return
          
      if window.pageYOffset < @lastPosition
        @lastScrollUp.set(true)
      else
        @lastScrollUp.set(false)
      
      @lastPosition = window.pageYOffset
      
      @scrollY.set(window.pageYOffset)
      # rate limit?
      animFrame @scrollLoop

    # onresize?
    #Use 3d css? https://gist.github.com/Warry/4254579
    # scroll -- router integration -- in page and
  module.exports = Screen
