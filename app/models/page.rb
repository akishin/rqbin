# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  request_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base
  has_many :posts, -> { order("created_at DESC") }
  validates :request_id, uniqueness: true
  before_create :generate_request_id

  def post_url
    "#{Settings.host}/#{self.request_id}"
  end

  private

  def generate_request_id
    self.request_id = Digest::HMAC.hexdigest(Time.now.to_s, Settings.site_key, Digest::SHA2)[0...Settings.key_length]
  rescue ActiveRecord::RecordNotUnique => e
    logger.error(e)
    retry
  end
end
