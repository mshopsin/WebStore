module ApplicationHelper

  def app_name
    "Happy Tea Company"
  end

  def text_aux?(attr_name)
    ['created_at', 'updated_at', 'id'].include?(attr_name)
  end
end
