# frozen_string_literal: true

require 'rails_helper'

describe User, type: :model do
  describe 'Check model relation of user models' do
    it { should have_many :category }
    it { should have_many :payment }
  end

  describe 'field validation of User Model' do
    it { should validate_presence_of :Name }
  end
end
