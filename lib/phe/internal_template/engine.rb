require 'rails'

module Phe
  module InternalTemplate

    class Engine < ::Rails::Engine
      # isolate_namespace InternalTemplate

  		initializer "phe-internal_template.assets.precompile" do |app|
        app.config.assets.precompile += [
	        /phe-internal_template.scss$/
	      ]
      end

  	end
  end
end
