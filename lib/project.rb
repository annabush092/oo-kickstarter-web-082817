class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(person_with_moneys)
    backers << person_with_moneys
    person_with_moneys.back_project(self) if !person_with_moneys.backed_projects.include?(self)
  end

end
