React = require "react"


HelloWorldComponent = React.createClass
  render: ->
    React.DOM.div {},
      'Hello, I come from React!'

React.renderComponent(
  HelloWorldComponent()
  document.querySelector('.main')
)
