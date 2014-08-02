module ZOrdered
  def self.z_order
    # background
    %w(
      Space
      Star
      Player
      Ui
    )
    # foreground
  end

  def self.included(base)
    base.send(:const_set, 'Z_ORDER', z_order.index(base.name))
  end
end
