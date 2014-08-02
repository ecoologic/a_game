class Game < Window
  include Singleton

  def prepare
    @space  = Space.new
    @player = Player.new(position: center)
    @stars  = []
    @ui     = Ui.new
  end

  def update
    update_player
    update_stars
  end

  def draw
    @space.draw
    @player.draw
    @stars.each(&:draw)
    @ui.draw_score(@player.score)
  end

  private
  def update_player
    @player.turn_left  if left?
    @player.turn_right if right?
    @player.accelerate if up?
    detect_collision
    @player.move
  end

  def detect_collision
    CollisionDetector.new(
      moving_element:  @player,
      static_elements: @stars
    ).detect!
  end

  def update_stars
    @stars.push(Star.new) if rand(100) < 4 && @stars.size < 25
  end
end
