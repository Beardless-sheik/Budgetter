# frozen_string_literal: true

require 'rails_helper'

describe Category, type: :model do
  describe 'Check relation of Category models' do
    it { should belong_to :user }
    it { should have_many :payment }
  end

  describe 'field validation of Category models' do
    it { should validate_presence_of :Name }
    it { should validate_presence_of :Icon }
  end
end
