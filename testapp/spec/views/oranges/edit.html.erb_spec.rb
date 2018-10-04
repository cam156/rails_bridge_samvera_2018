require 'rails_helper'

RSpec.describe "oranges/edit", type: :view do
  before(:each) do
    @orange = assign(:orange, Orange.create!(
      :name => "MyString",
      :tree => Tree.create
    ))
  end

  it "renders the edit orange form" do
    render

    assert_select "form[action=?][method=?]", orange_path(@orange), "post" do

      assert_select "input[name=?]", "orange[name]"

      assert_select "input[name=?]", "orange[tree_id]"
    end
  end
end
