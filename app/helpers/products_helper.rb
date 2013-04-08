module ProductsHelper
  def text_aux?(attr_name)
    ['created_at', 'updated_at', 'id'].include?(attr_name)
  end
end
