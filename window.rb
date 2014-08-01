class Window < G::Window
  def initialize
    super(*Settings.game[:params])
    self.caption = Settings.game[:caption]
  end

  def button_down(id)
    close if id == G::KbEscape
  end

  def center
    @center ||= [width_center, height_center]
  end

  def width_center
    @width_center ||= width / 2
  end

  def height_center
    @height_center ||= height / 2
  end

  private
  def left?
    button_down?(G::KbLeft) || button_down?(G::GpLeft)
  end

  def right?
    button_down?(G::KbRight) || button_down?(G::GpRight)
  end

  def up?
    button_down?(G::KbUp) || button_down?(G::GpButton0)
  end
end
