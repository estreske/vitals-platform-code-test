class BlueFirst < Normal

  def update_quality
    if @expires_in <= 0
      self.set_quality(@quality + 2)
    else
      self.set_quality(@quality + 1)
    end
  end
end