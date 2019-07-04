class PostsController < ApplicationController
  skip_before_filter :verify_authenticity_token ,:only => [:create]

  # POST /posts
  # POST /posts.json
  def create
    page = Page.where(:request_id => params[:request_id]).first
    page.posts << create_post

    if page.save
      render :text => "OK\r\n", :status => 200
    else
      render :text => "NG\r\n", :status => 500
    end
  end

  private

  def create_post
    post = Post.new
    post.params = params.to_json
    h = {}
    request.env.each do |k, v|
      if v.class == String
        v.force_encoding(Encoding::UTF_8) if v.encoding == Encoding::ASCII_8BIT
        h[k] = v
      end
    end
    post.headers = h.to_json
    post.http_method = request.request_method
    post.raw_post = request.raw_post
    post
  end
end
