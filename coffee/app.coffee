React = require "react"

{div, h1, p} = React.DOM


TimerComponent = React.createClass
  componentDidMount: ->
    setInterval =>
      @setState
        time: new Date()
    , 1000

  getInitialState: ->
    startTime: new Date()
    time: new Date()

  render: ->
    ms_on_site =  @state.time - @state.startTime
    sec_on_site = ms_on_site / 1000
    rounded_sec_on_site = Math.floor( sec_on_site )

    div {
      style:
        border: '1px solid black'
    },
      "Hello, you have been here for #{ rounded_sec_on_site } seconds"


HelloWorldComponent = React.createClass

  render: ->
    div {
      className: 'well'
      style:
        color: 'blue'
    },
      h1 {},
        TimerComponent()
      p {},
        'Im not a big boy...'

React.renderComponent(
  HelloWorldComponent()
  document.querySelector('.main')
)
