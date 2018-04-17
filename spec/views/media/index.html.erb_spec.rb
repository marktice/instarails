require 'rails_helper'

RSpec.describe "media/index", type: :view do
  before(:each) do
    assign(:media, [
      Medium.create!(
        :image_data => "MyText",
        :description => "MyText",
        :user => nil
      ),
      Medium.create!(
        :image_data => "MyText",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of media" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
