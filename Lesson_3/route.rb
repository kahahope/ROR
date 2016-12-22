class Route  
  attr_reader :first_station, :station, :last_station

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
    @first_station = first_station
    @last_station = last_station
  end

  def add_station(station)
    if @route.include?(station)
      puts "Станция #{station} уже есть в списке"
    else @route.insert(-2, station)
    puts "Станция #{station} добавлена в список"
    end
  end

  def remove_station(station)
    if station == @first_station
      puts "Станция #{station} является начальной, ее удаление невозможно"
    elsif station == @last_station
      puts "Станция #{station} является конечной, ее удаление невозможно"
    else @route.delete(station)
      puts "Станция #{station} удалена из списка"
    end
  end

  def show_list_stations
    puts "Полный список станций #{@route}"
  end
end
