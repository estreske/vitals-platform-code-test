class BlueDistinctionPlus < Normal

  def update_expires_in
  end

  def update_quality
    self.set_quality(@quality)
  end

  def set_quality(value)
    @quality = value
  end
end