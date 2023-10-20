class Router
    def initialize(controller)
        @controller = controller
    end

    def run
        puts "-------------------"
        puts "----- Welcome -----"
        puts "-------------------"

        loop do
            puts "add task"
            puts "list all tasks"
            puts "done one task"
            puts "delete one task"

            puts "Your action [add|list|done|delete|quit]?"
            print "> "

            action = gets.chomp

            case action
            when "add" then @controller.add_task
            when "list" then @controller.list_tasks
            when "done" then @controller.done_task
            when "delete" then @controller.delete_task
            when "quit"
                puts "Tks, Bye dude!!!"
                break
            end
            puts "-------------------"
        end
    end

end