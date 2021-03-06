require 'rails_helper'

RSpec.describe 'layouts/application.html.erb', type: :view do
  before :each do
    @admin = FactoryGirl.create :admin_user
    sign_in @admin
  end

  describe 'renders' do
    specify 'header' do
      render and expect(view).to render_template /layouts\/_header/
    end

    specify 'navigation' do
      render and expect(view).to render_template /layouts\/_navigation/
    end

    specify 'flashes' do
      render and expect(view).to render_template /layouts\/_flashes/
    end

    specify 'footer' do
      render and expect(view).to render_template /layouts\/_footer/
    end
  end
end
