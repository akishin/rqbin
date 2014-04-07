# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  page_id     :integer
#  http_method :string(255)
#  params      :text
#  headers     :text
#  raw_post    :text
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    page nil
  end
end
