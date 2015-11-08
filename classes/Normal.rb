class Normal
  attr_accessor :expires_in, :quality

  def initialize(expires_in, quality)
    @expires_in = expires_in
    @quality = quality
  end

  def update_expires_in
    @expires_in -= 1
  end

  def set_quality(value)
    if value > 0
      @quality = [50, value].min
    else 
      @quality = 0
    end
  end

  def update_quality
    if @expires_in > 0
      self.set_quality(@quality - 1)
    else 
      self.set_quality(@quality - 2)
    end
  end
end