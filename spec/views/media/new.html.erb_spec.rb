require 'rails_helper'

RSpec.describe "media/new", type: :view do
  before(:each) do
    assign(:medium, Medium.new(
      :image_data => "MyText",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new medium form" do
    render

    assert_select "form[action=?][method=?]", media_path, "post" do

      assert_select "textarea[name=?]", "medium[image_data]"

      assert_select "textarea[name=?]", "medium[description]"

      assert_select "input[name=?]", "medium[user_id]"
    end
  end
end
