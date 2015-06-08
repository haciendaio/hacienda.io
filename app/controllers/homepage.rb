require 'slim'

module Hacienda
  class Homepage

    def initialize(app)
      @app = app
    end

    def render_page
      @app.slim(:'homepage')
    end

  end
end
