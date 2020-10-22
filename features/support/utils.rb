# frozen_string_literal: false

def width
  window_size.width
end

def height
  window_size.height
end

def half_height
  height / 2
end

def half_width
  width / 2
end

def swipe_left
  Appium::TouchAction.new.swipe(start_x: width - 50,
                                start_y: half_height,
                                end_x: half_width,
                                end_y: half_height,
                                offset_x: half_width,
                                offset_y: half_height,
                                duration: 500).perform
end

def swipe_right
  Appium::TouchAction.new.swipe(start_x: 10,
                                start_y: half_height,
                                end_x: half_width,
                                end_y: half_height,
                                offset_x: half_width,
                                offset_y: half_height,
                                duration: 500).perform
end

def element_with_text(txt)
  find_element(xpath: "//*[@text='#{txt}']")
end

def element_with_partial_text(txt)
  find_element(xpath: "//*[contains(@text, '#{txt}')]")
end
