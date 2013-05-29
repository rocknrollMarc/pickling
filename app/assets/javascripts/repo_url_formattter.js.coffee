class RepoUrlFormatter
  constructor:(selector) ->
    @source = $(selector)

  update: ->
    tag_text = 'git clone git://github.com/user/repo.git'
    $('.server_description').text(tag_text)