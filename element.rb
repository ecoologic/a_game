class Element
  attr_accessor :x, :y

  def draw
    raise NotImplementedError
  end

  def collide_with(objects)
    raise NotImplementedError
  end
end
