module Concerns::Findable
  def find_by_name(name)
    results = class.all.select { |song| song.name == name}
    results[0]
  end
end
