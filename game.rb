class Game < Gosu::Window
  G = Gosu

  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "~Flash Back~"
  end

  def button_down(id)
    close if id == G::KbEscape
  end

  def update
  end

  def draw
  end
end
