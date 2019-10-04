class Array
  def sum
    self.reduce { |sum, n| sum + (n.is_a?(Numeric) ? n : 0) }
  end
end