# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  request_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    hashkey "MyString"
  end
end
