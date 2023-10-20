class Repository

    def initialize
        @tasks = []
    end

    # CREATE (Ajout d'une task)
    def add(task)
        @tasks << task
    end

    # READ
    def all
        @tasks
    end

    # FIND (UPDATE)
    def find(index)
        @tasks[index]
    end

    # DELETE
    def remove(index)
        @tasks.delete_at(index)
    end

end