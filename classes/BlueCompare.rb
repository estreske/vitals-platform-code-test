class BlueCompare < Normal

  def update_quality
    if @expires_in < 0
      self.set_quality(0)
    elsif @expires_in < 5
      self.set_quality(@quality + 3)
    elsif @expires_in < 10 
      self.set_quality(@quality + 2)
    else 
      self.set_quality(@quality + 1)
    end
  end
end