React = require "react"

{div, h1, p} = React.DOM

HelloWorldComponent = React.createClass
  render: ->
    div {},
      h1 {},
        'Hello, I come from React!'
      p {},
        'Im not a big boy...'

React.renderComponent(
  HelloWorldComponent()
  document.querySelector('.main')
)
