class Ui
  include ZOrdered

  FONT = G::Font.new(
    Game.instance,
    G::default_font_name,
    Settings.window[:font_size]
  )

  def initialize
    @start_time = Time.now
  end

  def draw_status(score:)
    draw("Score: #{score} | Time: #{'%.2f' % time_lapse}")
  end

  def time_lapse
    Time.now - @start_time
  end

  private
  def draw(message)
    FONT.draw(message,
      10,
      10,
      Z_ORDER,
      1.0,
      1.0,
      0xffffff00
    )
  end
end
