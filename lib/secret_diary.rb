class SecretDiary
    attr_reader :security
    def initialize
        @security = 'locked'
    end
   
    def add_entry
        raise 'Cannot add entry: Diary locked' if locked?
    end
    
    def get_entries
        raise 'Cannot get entries: Diary locked' if locked?
    end
    
    def unlock
        @security = 'unlocked'
    end

    def lock
        @security = 'locked'
    end

    def locked?
        @security == 'locked'
    end

end