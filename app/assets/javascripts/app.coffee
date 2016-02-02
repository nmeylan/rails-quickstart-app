# Override default bootstrap tooltip position
$.fn.tooltip.Constructor.DEFAULTS.placement = "bottom"

window.App =
  setup: (scope = null, namespace = null) ->
    @scope = $(scope)
    @namespace = namespace if namespace
    @_setup_common()
    if window.App["_setup_#{@namespace}"]
      window.App["_setup_#{@namespace}"]()
    else
      throw "App.setup: setup for namespace '#{namespace}' not found!"

  _setup_front: ->
    # bind front components
    # SampleComponent.setup(@scope)

  _setup_common: ->
    $(document).ready =>
      # bind common components
      # MyComponent.setup(@scope)