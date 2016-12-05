module Phe
  module InternalTemplate
    module CookiesConcern
      extend ActiveSupport::Concern

      included do
        after_action :cookie_accepted?

        def cookie_accepted?
          return true if cookies[:cookie_eu_consented]
          cookies[:cookie_eu_consented] = { value: true }
          false
        end

      end

    end
  end
end