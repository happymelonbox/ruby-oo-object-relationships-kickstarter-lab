class Backer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        this_backer = ProjectBacker.all.select{|project| project.backer == self}
        this_backer.map do |backer| backer.project end
    end
end