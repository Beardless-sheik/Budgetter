# frozen_string_literal: true

require 'rails_helper'

describe Payment, type: :model do
  describe 'Check model relation of Payment models' do
    it { should belong_to :user }
    it { should belong_to :category }
  end

  describe 'field validation of Payment model' do
    it { should validate_presence_of :Name }
    it { should validate_presence_of :Amount }
  end
end
