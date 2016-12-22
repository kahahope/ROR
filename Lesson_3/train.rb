class Train

  TYPES = { cargo: 'Грузовой', passenger: 'Пассажирский' }

  attr_accessor :speed
  attr_reader :number, :type, :wagons, :curent_station, :next_station, :prev_station

  def initialize(number, type, wagons, speed = 0)
    @number = number
    @type = type
    @wagons = wagons
    @speed = speed
  end

  def type_text
    TYPES[@type]
  end

  def show_speed
    puts "Текущая скорость поезда №#{number} - #{@speed}"
  end

  def down_speed
    @speed = 0
    puts "Скорость поезда №#{number} снижена до #{@speed}"
  end

  def show_wagons_count
    puts "У поезда №#{number} #{@wagons} вагонов"
  end

  def add_wagon
    if @speed == 0
      @wagons +=1
      puts "К поезду №#{number} добавлени 1 вагон"
    else
      puts "Вагоны добавить невозможно. Требуется остановка поезда"
    end
  end

  def del_wagon
    if @speed == 0 && @wagons > 0
      @wagons -=1
      puts "От поезда №#{number} отцеплен 1 вагон"
    elsif @wagons == 0
      puts "В составе поезда №#{number} нет вагонов"
    else
      puts "Вагон отцепить невозможно. Требуется остановка поезда"
    end
  end

  def route(route)
    @route = route.list_stations
    @curent_station = @route.first
  end

  def next_station
    if @curent_station == @route.last
      "Станция #{@curent_station} является конечной"
    else
      @next_index = @route.index(@curent_station).next
      "Следующая станция #{@route.fetch(@next_index)}"
    end
  end

  def show_next_station
    puts next_station
  end

  def move_next_station
    if @curent_station = @route.fetch(@next_index)
      "Следующая станция #{@curent_station}"
    else 
      @next_index = @route.index(@curent_station).next
      "Следующая станция #{@route.fetch(@next_index)}"
    end
  end

  def prev_station
    if @curent_station == @route.first
      "Станция #{@curent_station} является начальной"
    else
      @pred_index = @route.index(@curent_station).pred
      "Предыдущая станция #{@route.fetch(@pred_index)}"
    end
  end

  def show_prev_station
    puts prev_station
  end

  def move_prev_station
    @curent_station = @route.fetch(@pred_index)
  end
end
