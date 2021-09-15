def notacion_entera(color_rgb)
  color_rgb[0] + color_rgb[1] * 256 + color_rgb[2] * 256 * 256
end

def notacion_hexadecimal(color_rgb)
  "#"+color_rgb.collect {|x| x.to_s(16).rjust(2,"0").gsub(/[a-z]/){|y| y.upcase}}.join
end

#puts notacion_entera([0,128,255])
#puts notacion_hexadecimal([0,128,255])