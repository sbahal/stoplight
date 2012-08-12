[$, _, Backbone, Stoplight, Models, Collections, Views, App] = [@jQuery, @_, @Backbone, @Stoplight, @Stoplight.Models, @Stoplight.Collections, @Stoplight.Views, @Stoplight.App]

$(document).ready( ->
  App.projects = new Collections.Projects

  App.projects.fetch()

  new Views.ProjectsBoard({collection: App.projects, el: $('#projects-board')})
  new Views.ProjectsList({collection: App.projects, el: $('#projects-list')})
)
