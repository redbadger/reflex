require! <[ react path ]>
require! './dom'

unless typeof window is 'undefined'
  global.React = react

create-component = (spec) ->
  dom react.create-class spec

# Core framework namespace bundling together individual modules
module.exports =
  application: require './application'
  routes: require './routes'
  cursor: require './cursor'
  dom: dom
  pure-render-mixin: require './mixins/pure-render'

  # move to util?
  create-component: create-component