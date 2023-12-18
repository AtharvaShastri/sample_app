class ApplicationController < ActionController::Base
  def hello
    render html: "Hello Shastri!!"
  end
end
