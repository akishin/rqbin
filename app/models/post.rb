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

class Post < ActiveRecord::Base
  belongs_to :page
end
