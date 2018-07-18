require 'date'
class SecretDiary

    def initialize(security_class = Security)
        @security = security_class.new
        @entries = []
    end
   
    def add_entry
        raise 'Cannot add entry: Diary locked' if locked?
        puts "Please add your entry"
        entry = gets.chomp
        @entries << {date: Date.today, text: entry}
    end

    def locked?
        @security.locked?
    end

    def unlocked?
        !@security.locked?
    end

    def unlock
        @security.unlock
    end

    def lock
        @security.lock
    end

    def get_entries
        raise 'Cannot get entries: Diary locked' if locked?
        puts 'Here are the entries'
        @entries
    end
end

class Security
    
    def initialize
        @locked = true
    end

    def locked?
        @locked
    end

    def unlock
        @locked = false
    end

    def lock
        @locked = true
    end
end



