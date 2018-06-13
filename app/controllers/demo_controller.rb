class DemoController < ApplicationController

  layout false

  def index
    # render(:template => 'demo/index')
    # render('demo/index')
    render('index')
  end

  def hello
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
