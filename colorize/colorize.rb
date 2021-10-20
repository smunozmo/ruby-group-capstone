class String
  # colorization
  def colorize(color_code, bg_color)
    "\e[#{color_code}m#{self}\e[#{bg_color}m"
  end

  def red
    colorize(31, 1)
  end

  def green
    colorize(32, 1)
  end

  def yellow
    colorize(33, 1)
  end

  def blue
    colorize(34, 1)
  end

  def pink
    colorize(35, 1)
  end

  def light_blue
    colorize(36, 1)
  end

  def pink_bg
    colorize(34, 1)
  end
end
