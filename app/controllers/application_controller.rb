class ApplicationController < ActionController::Base
  def hello
    render html:  "
                    aaaaaaaa
                    hello, world!
                  "
  end
end
