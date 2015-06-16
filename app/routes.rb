require_relative 'controllers/homepage'
require_relative 'controllers/wikipage'

module Hacienda
  class Website < Sinatra::Base

    get '/' do
      home_page.render_page
    end

    get '/wiki/:id' do
      Wikipage.new(self, params[:id]).render_page
    end

    def home_page
      Homepage.new(self)
    end


  end
end
