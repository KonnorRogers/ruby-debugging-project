class Timer

    attr_accessor :seconds

    def initialize
      @seconds = 0
    end

    def time_string
      hours = (@seconds / 3600) #finds intial hour value
      minutes = (@seconds % 3600) / 60 #checks whats left after hours have been divided
      seconds = (@seconds % 3600) % 60 #checks second left

      # CHECKS FOR DOUBLE DIGITS
      if (hours < 10)
        hours = "0" + hours.to_s
      end

      if (minutes < 10)
        minutes = "0" + minutes.to_s
      end

      if (seconds < 10)
        seconds = "0" + seconds.to_s
      end


      time_string = [hours, minutes, seconds]
      time_string.join(":")
    end

end