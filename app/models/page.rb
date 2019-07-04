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

  def self.create_page!(retry_count = 5)
    page = new
    page.save!
    page
  rescue ActiveRecord::RecordNotUnique => e
    logger.debug("#{e.class}:#{e.message}")
    retry_count -= 1
    retry if retry_count >= 0
    raise
  end

  private

  def generate_request_id
    self.request_id = OpenSSL::HMAC.hexdigest("SHA256", Settings.site_key, Time.now.to_s)[0...Settings.key_length]
  end
end
