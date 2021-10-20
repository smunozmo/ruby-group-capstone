require_relative './colorize'

def thankyou
  puts
  line1 = ' _______ _    _          _   _ _  __ __     ______  _    _ '.blue
  line2 = '|__   __| |  | |   /\\   | \\ | | |/ / \\ \\   / / __ \\| |  | |'.blue
  line3 = "   | |  | |__| |  /  \\  |  \\| | ' /   \\ \\_/ / |  | | |  | |".light_blue
  line4 = '   | |  |  __  | / /\\ \\ | . ` |  <     \\   /| |  | | |  | |'.pink
  line5 = '   | |  | |  | |/ ____ \\| |\\  | . \\     | | | |__| | |__| |'.pink
  line6 = '   |_|  |_|  |_/_/    \\_\\_| \\_|_|\\_\\    |_|  \\____/ \\____/ '.red

  lines = [line1, line2, line3, line4, line5, line6]
  lines.each do |line|
    chars = line.chars
    chars.each do |e|
      print e
      sleep(0.008)
    end
    puts
  end

  puts

  puts '-------------------- Ruby Catalog v0.1 --------------------'.pink
  puts
  puts 'Created by'.blue + ' @hunter4466'.pink + ' @sevinchek'.pink + ' @smunozmo'.pink + ' @the-catalystmc'.pink
  puts
end
