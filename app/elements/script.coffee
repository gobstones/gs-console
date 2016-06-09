Polymer
  is: '#GRUNT_COMPONENT_NAME'
  
  properties:
    _types:
      type: []
      value: ["success", "error", "warning", "info"]
    _msgs:
      type: []
      value: []

  log: (message)->
    message = message or {}
    if message.text and message.text.length
      if (this._types.indexOf(message.type)) is -1
        message.type = "default"
      message.text = "-> " + message.text
      this._powerfulLog(message)
    else
      console.log {error: 'Me acaban de pasar un mensaje desconocido'
                    ,msg: message}

  _powerfulLog:(message) ->
    this.push('_msgs', message)