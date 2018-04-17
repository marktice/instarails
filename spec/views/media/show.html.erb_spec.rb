require 'rails_helper'

RSpec.describe "media/show", type: :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :image_data => "MyText",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
