class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(proj_obj)
    backed_projects << proj_obj
    proj_obj.add_backer(self)
  end

end
