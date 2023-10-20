class Task
    attr_accessor :description

    def initialize(description, done=false)
        @description = description
        @done = done
    end

    def done?
        @done
    end

    def done!
        @done = true
    end
end