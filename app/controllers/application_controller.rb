class ApplicationController < ActionController::Base
  def hello
    render html:  "
                    aaaaaaaa
                    takeutiです
                    hello, world!
                  "
  end
end
