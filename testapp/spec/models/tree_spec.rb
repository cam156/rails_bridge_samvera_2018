# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tree, type: :model do
  let(:orange1) { Orange.create }
  let(:orange2) { Orange.create }
  context 'ActiveRecord associations' do
    it 'has_many to oranges' do
      expect(Tree.reflect_on_association(:oranges).macro).to be :has_many
    end
    it 'can assign oranges' do
      tree = Tree.create(oranges: [orange1, orange2])
      expect(tree.oranges).to eq([orange1, orange2])
      expect(orange1.reload.tree).to eq(tree)
      expect(orange2.reload.tree).to eq(tree)
    end
  end
end
