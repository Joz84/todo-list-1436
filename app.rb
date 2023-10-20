require_relative "task.rb"
require_relative "repository.rb"
require_relative "router.rb"
require_relative "controller.rb"

repo = Repository.new("tasks.csv")
controller = Controller.new(repo)
router = Router.new(controller)

router.run