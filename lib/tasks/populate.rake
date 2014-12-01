namespace :db do
  desc 'Fill database with issues'
  task :populate => :environment do
    require 'populator'

    [Issue].each(&:delete_all)

    Issue.populate 20 do |issue|
      issue.title = Populator.words(1..7)
      issue.description = Populator.paragraphs(1..3)

    end
  end
end