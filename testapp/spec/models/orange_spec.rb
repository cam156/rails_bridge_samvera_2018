# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Orange, type: :model do
  context 'ActiveRecord associations' do
    let(:tree) { Tree.create }
    it 'belongs to tree' do
      expect(Orange.reflect_on_association(:tree).macro).to be :belongs_to
    end

    it 'can have a tree id' do
      orange = Orange.new(tree_id: '123')
      expect(orange.tree_id).to eq('123')
    end

    it 'can be assigend to a tree' do
      orange = Orange.new(tree: tree)
      expect(orange.tree_id).to eq(tree.id.to_s)
    end
  end
end
