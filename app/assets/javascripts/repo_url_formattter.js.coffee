class window.GitUrlBuilder
  constructor:(selector) ->
    @source = $(selector)

  update: ->
    server = $('.server_name').val()
    protocol = $('.protocol').val()
    clone_url = "git clone " + protocol + "://" + server + "/"
    @source.text(clone_url)