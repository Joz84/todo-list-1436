require_relative "view.rb"
require_relative "task.rb"

class Controller
    def initialize(repository)
        @repository = repository
        @view = View.new
    end

    def add_task
        puts "TODO: add_task"
        # Demander à view de demander la description et la stocker dans une variable
        # Demander au model de créer la task
        # Demander à repository d'ajouter la task au tableau tasks
        description = @view.ask_description
        task = Task.new(description)
        @repository.add(task)
    end

    def list_tasks
        puts "TODO: list_tasks"
        # Demander à repo la liste des tasks et les stocker dans une variable
        # Demander à la view d'afficher la liste
        tasks = @repository.all
        @view.display_list(tasks)
    end

    def done_task
        puts "TODO: done_task"
        # Demander à view l'index de la task cocher et la stocker dans une variable
        # Demander à repository de nous donner la task correspondant à l'index et la stocker dans une variable
        # Demander à la task de se mettre elle même à done!
        index = @view.ask_index
        task = @repository.find(index)
        task.done!
    end

    def delete_task
        puts "TODO: delete_task"
        # Demander à view l'index de la task à supprimée et la stocker dans une variable
        # Demander à repository de supprimer la task correspondant l'index donné
        index = @view.ask_index
        @repository.remove(index)
    end

end