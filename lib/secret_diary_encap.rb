class SecretDiary
    attr_reader :security
    def initialize
        @security = Security.new
    end
   
    def add_entry
        raise 'Cannot add entry: Diary locked' if locked?
        puts "Please add your entry"
    end

    def locked?
        @security == 'locked'
    end
end

class Security
    attr_reader :security
    def initialize
        @security = 'locked'
    end
    def unlock
        @security = 'unlocked'
    end
    def lock
        @security = 'locked'
    end
end

class DiaryEntries
    def get_entries
        raise 'Cannot get entries: Diary locked' if locked?
        puts 'Here are the entries'
    end
end

