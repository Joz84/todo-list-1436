require_relative "task.rb"
require_relative "repository.rb"
require_relative "router.rb"
require_relative "controller.rb"

task1 = Task.new("Faire les flashcards")
task2 = Task.new("Faire la vaiselle")

p task1
p task2
p "------------------"

repo = Repository.new
p repo
p repo.all

repo.add(task1)
repo.add(task2)

p repo.all

controller = Controller.new(repo)
router = Router.new(controller)

router.run