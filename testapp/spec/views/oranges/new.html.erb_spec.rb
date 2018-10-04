require 'rails_helper'

RSpec.describe "oranges/new", type: :view do
  before(:each) do
    assign(:orange, Orange.new(
      :name => "MyString",
      :tree => nil
    ))
  end

  it "renders new orange form" do
    render

    assert_select "form[action=?][method=?]", oranges_path, "post" do

      assert_select "input[name=?]", "orange[name]"

      assert_select "input[name=?]", "orange[tree_id]"
    end
  end
end
