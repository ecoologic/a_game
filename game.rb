class Game < Gosu::Window
  def initialize(width=640, height=480, fullscreen=false)
    super
    self.caption = "Gosu Tutorial Game"

    @background_image = Gosu::Image.new(self, "media/Space.png", true)

    @player = Player.new(self)
    @player.warp(320, 240)


    @star_anim = Gosu::Image::load_tiles(self, "media/Star.png", 25, 25, false)
    @stars = Array.new
  end

  def update
    @player.turn_left  if left?
    @player.turn_right if right?
    @player.accelerate if up?
    @player.collect_stars(@stars)
    @player.move

    if rand(100) < 4 and @stars.size < 25 then
      @stars.push(Star.new(@star_anim))
    end
  end

  def draw
    @background_image.draw(0, 0, ZOrder::Background)
    @player.draw
    @stars.each(&:draw)
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
