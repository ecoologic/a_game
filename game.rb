class Game < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Gosu Tutorial Game"

    @background_image = Gosu::Image.new(self, "media/Space.png", true)

    @player = Player.new(self)
    @player.warp(320, 240)
  end

  def update
    @player.turn_left  if left?
    @player.turn_right if right?
    @player.accelerate if up?
    @player.move
  end

  def draw
    @player.draw
    @background_image.draw(0, 0, 0)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  private
  def left?
    button_down?(Gosu::KbLeft) || button_down?(Gosu::GpLeft)
  end

  def right?
    button_down?(Gosu::KbRight) || button_down?(Gosu::GpRight)
  end

  def up?
    button_down?(Gosu::KbUp) || button_down?(Gosu::GpButton0)
  end
end
