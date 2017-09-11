class Parcel
  def initialize(length,width,depth)
    @length = length.to_i
    @width = width.to_i
    @depth = depth.to_i
    # @weight = weight.to_i

  end

  def volume
    volume = @length * @width * @depth
    return volume
  end

  def cost_to_ship(distance,speed)
    distance = distance.to_i
    cost = volume/3

    if distance < 20
      if speed.downcase.to_s === "air"
        cost += volume/4
      end

      if speed.downcase === "ground"
        cost += volume/6
      end
    end

    if distance >= 20
      if speed.downcase.to_s === "air"
        cost += (volume/4 * distance/4)
      end

      if speed.downcase === "ground"
        cost += (volume/6 * distance/4)
      end
    end


    return cost

  end

  def parcel_calculator

  end
end
