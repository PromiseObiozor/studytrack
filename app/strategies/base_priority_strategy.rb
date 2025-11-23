class BasePriorityStrategy
  def initialize(relation)
    @relation = relation
  end

  # Returns assignments ordered according to this strategy
  def ordered
    raise NotImplementedError, "Subclasses must implement #ordered"
  end

  # Returns a human-readable label for one assignment
  def priority_for(_assignment)
    raise NotImplementedError, "Subclasses must implement #priority_for"
  end
end
