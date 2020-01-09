class ApplicationController < ActionController::Base
  def hello
    render html:  "
                    aaaaaaaa
                    takeutiです
                    kamataです
                    oginoです、からの
                    hello, world!
                  "
  end
end
