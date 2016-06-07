Polymer

  is: '#GRUNT_COMPONENT_NAME'

  attached: ->
    this.gsConsole = this.$.console
    this.snMsg = this.$.sendMsg
    this.msg = this.$.msg
    this.msgStyle = this.$.msgStyle

    this.gsConsole.log({text:"Hello I'am Gobstones Console and this a success msg", type: "success"})
    this.gsConsole.log({text:"You can send error msgs,", type: "error"})
    this.gsConsole.log({text:"warning msgs,", type: "warning"})
    this.gsConsole.log({text:"info msg,", type: "info"})
    this.gsConsole.log({text:"and default msg.", type: "default"})
    this.gsConsole.log({text:"-", type: "default"})
    this.gsConsole.log({text:"Also you may send big msgs. This for example, if i put asdasdasdasdasd become a big msg.", type: "default"})

    this.listen(this.$.sendMsg, 'tap', 'onTap');

  onTap: (event)->
    this.gsConsole.log(
      text: this.msg.value
      type: this.msgStyle.selected
    )