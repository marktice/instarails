require 'rails_helper'

RSpec.describe "media/edit", type: :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :image_data => "MyText",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit medium form" do
    render

    assert_select "form[action=?][method=?]", medium_path(@medium), "post" do

      assert_select "textarea[name=?]", "medium[image_data]"

      assert_select "textarea[name=?]", "medium[description]"

      assert_select "input[name=?]", "medium[user_id]"
    end
  end
end
