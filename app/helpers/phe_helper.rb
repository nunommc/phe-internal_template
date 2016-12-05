module PheHelper
  def cookie_accepted?
    cookies[:cookie_eu_consented].present?
  end
end