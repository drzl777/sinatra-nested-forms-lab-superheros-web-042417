class Team
  attr_reader :name, :motto, :members

  def initialize(name,motto)
    @name, @motto = name, motto
    @members = []
  end

  def addMembers(*members)
    members.each {|member| @members << member}
  end
end
