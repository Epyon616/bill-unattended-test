module ViewHelpers
  def price_format(number)
    sprintf('%.2f',number)
  end

  def string_format(string)
    if string == 'tv'
      string.upcase
    else
      string.capitalize.gsub('hd', 'HD')
    end
  end
end
