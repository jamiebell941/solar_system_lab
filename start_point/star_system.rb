class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
   @planets.map{ |planet| planet.name}
  end

  def get_planet_by_name(planet_name)
    @planets.find {|planet| planet.name == planet_name}
  end

  def get_largest_planet
  sorted_planets =  @planets.max_by {|planet| planet.diameter}
  end

  def get_smallest_planet
    sorted_planets = @planets.min_by {|planet| planet.diameter}
  end

  def get_planets_with_no_moons()
    @planets.select {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(num_of_moons)
  # moony_planets =(@planets.select {|planet| planet.number_of_moons > num_of_moons})
    (@planets.select {|planet| planet.number_of_moons > num_of_moons}).map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    @planets.select {|planet| planet.distance_from_sun < distance}.count
  end

  def get_total_number_of_moons
    @planets.reduce(0) {|total, planet| planet.number_of_moons + total}
  end

def get_planet_names_sorted_by_increasing_distance_from_sun
  # sorted_planets = @planets.sort_by {|planet| planet.distance_from_sun}
(@planets.sort_by {|planet| planet.distance_from_sun}).map {|planet| planet.name}
end

def get_planet_names_sorted_by_size_decreasing
  # sorted_planets = @planets.sort_by {|planet| planet.diameter}
  return ((@planets.sort_by {|planet| planet.diameter}).map {|planet| planet.name}).reverse
# more_sorted_planets.reverse
end


end
