React = require "react"

{div, h1, p} = React.DOM

HelloWorldComponent = React.createClass
  getInitialState: ->
    time: new Date()

  render: ->
    div {
      className: 'well'
      style:
        color: 'blue'
    },
      h1 {},
        "Hello, it is now #{ @state.time }"
      p {},
        'Im not a big boy...'

React.renderComponent(
  HelloWorldComponent()
  document.querySelector('.main')
)
