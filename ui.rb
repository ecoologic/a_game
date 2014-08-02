class Ui
  include ZOrdered

  def initialize
    @font = G::Font.new(
      Game.instance,
      G::default_font_name,
      Settings.window[:font_size]
    )
  end

  def draw_score(score)
    @font.draw("Score: #{score}",
      10,
      10,
      Z_ORDER,
      1.0,
      1.0,
      0xffffff00
    )
  end
end
