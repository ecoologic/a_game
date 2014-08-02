module ZOrdered
  def self.included(base)
    # background
    order = %w(
      Space
      Star
      Player
      UI
    )
    # foreground

    base.send(:const_set, 'Z_ORDER', order.index(base.name))
  end
end
