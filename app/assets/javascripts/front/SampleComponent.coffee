class @SampleComponent

  @setup: (scope) ->
    if(container = scope.find("[data-role=sample]")).length || (container = scope).is("[data-role=sample]")
      @instance = new SampleComponent(container)

  constructor: (@container) ->
    @initUi()
    @bindEvents()

  initUi: ->
    @ui =
      element1: @container.find("[data-role=elemen1]")
      element2: @container.find("[data-role=elemen2]")

  bindEvents: ->
    @ui.element1.on "change", alert("Hello")