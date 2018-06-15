class DemoController < ApplicationController

  layout false

  def index
    # render(:template => 'demo/index')
    # render('demo/index')
    @array = [1,2,3,4,5]
    render('index')
  end

  def hello
    @page = params['page']
    @id = params[:id] # works the same
    render('hello')
  end

  def other_hello
    # redirect_to(:controller => 'demo', :action 'index')
    redirect_to(:action => 'hello')
  end

  def google
    redirect_to('https://google.com')
  end
end
