class ApplicationController < ActionController::Base
  def hello
    render html:  "
                    aaaaaaaa
                    takeutiです
                    kamataです
                    hello, world!
                  "
  end
end
