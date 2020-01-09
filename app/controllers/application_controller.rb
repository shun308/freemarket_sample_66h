class ApplicationController < ActionController::Base
  def hello
    render html:  "
                    aaaaaaaa
                    takeutiです
                    kamataです
                    oginoです、からの
                    髙橋です。
                    hello, world!
                  "
  end
end
