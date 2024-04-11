class PagesController < ApplicationController
  def about
    # no code to describe the view to render the about page because it is the default behavior of Rails to render the view with the same name as the action name
    # in this case, the view is app/views/pages/about.html.erb
    # if you want to render a different view, you can use the render method
    # render 'pages/other'
  end

  def contact
  end

  def home
  end
end
