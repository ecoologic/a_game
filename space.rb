class Space
  include ZOrdered

  IMAGE = G::Image.new(Game.instance, "media/Space.png", true)

  def draw
    IMAGE.draw(0, 0, Z_ORDER)
  end
end
