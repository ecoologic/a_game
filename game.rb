class Game < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Gosu Tutorial Game"

    @background_image = Gosu::Image.new(self, "media/Space.png", true)

    @player = Player.new(self)
    @player.warp(320, 240)
  end

  def update
    if button_down?(Gosu::KbLeft) || button_down?(Gosu::GpLeft)
      @player.turn_left
    end
    if button_down?(Gosu::KbRight) || button_down?(Gosu::GpRight)
      @player.turn_right
    end
    if button_down?(Gosu::KbUp) || button_down?(Gosu::GpButton0)
      @player.accelerate
    end

    @player.move
  end

  def draw
    @player.draw
    @background_image.draw(0, 0, 0)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end
end
