require 'rails_helper'

RSpec.describe "oranges/index", type: :view do
  let(:tree) { Tree.create }

  before(:each) do
    assign(:oranges, [
      Orange.create!(
        :name => "Name",
        :tree => tree
      ),
      Orange.create!(
        :name => "Name",
        :tree => tree
      )
    ])
  end

  it "renders a list of oranges" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => tree.to_s, :count => 2
  end
end
