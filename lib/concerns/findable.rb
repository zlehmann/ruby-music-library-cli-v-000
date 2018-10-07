module Concerns::Findable
  def find_by_name(name)
    results = self.all.select { |song| song.name == name}
    results[0]
  end
end
