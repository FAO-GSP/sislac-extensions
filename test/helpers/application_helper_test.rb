require 'test_helper'

class Sislac::ApplicationHelperTest < ActionView::TestCase
  test 'it returns a logo' do
    assert self.respond_to? :brand_logo
  end

  test 'it provides the logo asset' do
    assert File.exists? Rails.application.assets.resolve(brand_logo)
  end

  test 'it marks the logo for precompiling' do
    assert Rails.application.config.assets.precompile.include? brand_logo
  end
end
