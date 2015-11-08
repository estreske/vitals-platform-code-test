class Award

  attr_reader :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    @expires_in = expires_in
    @quality = quality
    @name = name

    case name 
    when "NORMAL ITEM"
      @award = Normal.new(expires_in, quality)
    when "Blue First"
      @award = BlueFirst.new(expires_in, quality)
    when "Blue Compare"
      @award = BlueCompare.new(expires_in, quality)
    when "Blue Distinction Plus"
      @award = BlueDistinctionPlus.new(expires_in, quality)
    when "Blue Star"
      @award = BlueStar.new(expires_in, quality)
    end
  end

  def expires_in
    @award.expires_in
  end

  def quality
    @award.quality
  end

  def update
    @award.update_expires_in
    @award.update_quality
  end
end
