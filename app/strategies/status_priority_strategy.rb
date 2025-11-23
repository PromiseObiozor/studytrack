class StatusPriorityStrategy < BasePriorityStrategy
  STATUS_ORDER = {
    "pending"     => 0,
    "in_progress" => 1,
    "done"        => 2
  }.freeze

  def ordered
    @relation.sort_by do |assignment|
      STATUS_ORDER[assignment.status] || 99
    end
  end

  def priority_for(assignment)
    case assignment.status
    when "pending"
      "High"
    when "in_progress"
      "Medium"
    when "done"
      "Low"
    else
      "Unknown"
    end
  end
end
