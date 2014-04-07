module PagesHelper

  def param_hash(post)
    result = JSON.parse(post.params)
    ::Rqbin::EXCLUDE_PARAMS.each do |p|
      result.delete(p)
    end
    result
  end

  def header_hash(post)
    result = JSON.parse(post.headers)
    ::Rqbin::EXCLUDE_HEADERS.each do |h|
      result.delete(h)
    end
    result.each_key do |key|
      result.delete(key) if key.start_with?("ROUTES_")
    end
    result
  end
end
