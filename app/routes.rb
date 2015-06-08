require_relative 'controllers/homepage'

module Hacienda
  class Website < Sinatra::Base

    get '/' do
      home_page.render_page
    end

    def home_page
      Homepage.new(self)
    end

  end
end
