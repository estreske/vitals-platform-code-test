class BlueStar < Normal

  def update_quality
    if @expires_in > 0
      return self.set_quality(@quality - 2)
    else 
      return self.set_quality(@quality - 4)
    end
  end
end