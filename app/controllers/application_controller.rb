class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    locale = get_locale_from_header
    I18n.locale = locale.blank? ? I18n.default_locale : locale
    logger.debug "* Locale set to '#{I18n.locale}'"
  end

  private

  def get_locale_from_header
    if request.env['HTTP_ACCEPT_LANGUAGE'].nil?
      nil
    else
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
  end
end
