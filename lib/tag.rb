def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]

  attr_name = attributes.nil? ? nil : attributes.first
  attr_value = attributes.nil? ? nil : attributes.last

  tag_type = attributes.nil? ? tag_name : "#{tag_name} #{attr_name}=\"#{attr_value}\""
  text = yield
  "<#{tag_type}>#{text}</#{tag_name}>"

end
