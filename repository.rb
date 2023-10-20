require "csv.rb"

class Repository

    def initialize(csv_file)
        @tasks = []
        # Lire CSV et remplir le tableau tasks avec 
        @csv_file = csv_file
        load_csv
    end

    # CREATE (Ajout d'une task)
    def add(task)
        @tasks << task
        # Ecrire le csv
        write_csv
    end

    # READ
    def all
        @tasks
    end

    # FIND (UPDATE)
    def find(index)
        @tasks[index]
        # Ecrire dans le CSV
    end

    # DELETE
    def remove(index)
        @tasks.delete_at(index)
        # Ecrire dans le CSV
        write_csv
    end

    def write_csv
        CSV.open(@csv_file, "wb") do |csv|
            @tasks.each do |task|
                csv << [task.description, task.done?]
            end
        end
    end

    private

    def load_csv
        CSV.foreach(@csv_file) do |row|
            description = row[0]
            done = (row[1] == "true")
            task = Task.new(description, done)
            @tasks << task
        end
    end

end