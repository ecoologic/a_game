class Ui
  include ZOrdered

  FONT = G::Font.new(
    Game.instance,
    G::default_font_name,
    Settings.window[:font_size]
  )

  def initialize
  end

  def draw_score(score)
    @font.draw("Score: #{score}",
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
