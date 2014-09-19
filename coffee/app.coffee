React = require "react"

{div, h1, p, input} = React.DOM


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
      "Hello, you have been here for
      #{ rounded_sec_on_site } seconds,
      #{ @props.name}"


HelloWorldComponent = React.createClass

  getInitialState: ->
    name: ''

  handleChange: () ->
    name = @refs.name.getDOMNode().value
    @setState {name}

  render: ->
    div {
      className: 'well'
    },
      h1 {},
        TimerComponent {
          name: @state.name
        }
      p {},
        'What is your name?'
      input {
        type: 'text'
        placeholder: 'Yacintha Johnson'
        ref: 'name'
        onChange: @handleChange
      }

React.renderComponent(
  HelloWorldComponent()
  document.querySelector('.main')
)
