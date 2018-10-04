require "rails_helper"

describe "oranges/show.html.erb" do
  let(:tree)   { Tree.create(id: 'tree_id') }
  let(:orange) { Orange.create(name: 'Navel',  tree: tree) }

  it "displays the orange" do
    assign(:orange, orange)

    render

    expect(rendered).to include "Orange title: #{orange.name}"
    expect(rendered).to include "Orange tree id: #{tree.id.to_s}"
  end
end
