React = require "react"

{div} = React.DOM

HelloWorldComponent = React.createClass
  render: ->
    div {},
      'Hello, I come from React!'

React.renderComponent(
  HelloWorldComponent()
  document.querySelector('.main')
)
