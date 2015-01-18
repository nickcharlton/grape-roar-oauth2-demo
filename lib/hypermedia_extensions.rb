module HypermediaExtensions
  def to_link
    type = "#{self.class}".downcase.pluralize
    "/#{type}/#{self.id}"
  end
end
