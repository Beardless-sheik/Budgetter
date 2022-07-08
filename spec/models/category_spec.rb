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

  describe 'check model method - "check_payment_total" ' do
    before(:each) do
      @user = User.new(
        :Name                  => "Alick Nyirenda",
        :email                 => "test@test.com",
        :password              => "123Alick",
        :password_confirmation => "123Alick",
        :confirmed_at => DateTime.now
      )
      @category4 = Category.create(Name: "Food", Icon: "https://img.icons8.com/material-outlined/96/1A1A1A/no-image.png",
        user: @user)
    end
    
    it 'should return zero if no payments are present' do
      expect(@category4.check_payment_total).to eq(0)
    end

    it 'should return total of all payments if payments are present' do
      payment1_category1 = Payment.create(Name: "Mc Donalds", Amount: 50 , user: @user, category_id: @category4.id)
      payment1_category2 = Payment.create(Name: "Hungry Lion", Amount: 50 , user: @user, category_id: @category4.id)
      expect(@category4.check_payment_total).to eq(100)
    end
  end
end
