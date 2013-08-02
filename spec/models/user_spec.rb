# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)
#  admin                  :boolean
#  total_score            :integer
#

require 'spec_helper'

describe User do
  subject(:user) {User.new(name: 'alex', email: '123@abc.com', password: '12345678', password_confirmation: '12345678',admin: true, total_score: nil)}

  describe 'validation' do
    # validation tests not accounting for integer in total_score or admin boolean
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:total_score)}
  end

  describe 'assocation' do
    it { should have_many(:identities)}
    it { should have_many(:cupcakes)}
    it { should have_one(:shopping_cart)}
  end
end
