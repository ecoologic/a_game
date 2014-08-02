class CollisionDetector
  attr_reader :moving_element, :static_elements

  def initialize(moving_element:, static_elements:)
    @moving_element  = moving_element
    @static_elements = static_elements
  end

  def detect!
    close_elements = static_elements.reject! do |element|
      G::distance(
        moving_element.x, moving_element.y,
        element.x, element.y
      ) < 35
    end
    moving_element.collide if close_elements
  end
end
