require 'pry'
class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        this_project = ProjectBacker.all.select{|project| project.project == self}
        this_project.map do |backer| backer.backer end
    end
end