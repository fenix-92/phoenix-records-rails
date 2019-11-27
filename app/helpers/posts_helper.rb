module PostsHelper
  def secure_path_for(params, *excluded_params)
    url_for(params.except(*excluded_params).merge(only_path: true).to_enum.to_h)
  end
end
