class DeadlinePriorityStrategy < BasePriorityStrategy
  # Order assignments by due_date: soonest first, nils last
  def ordered
    @relation.sort_by do |assignment|
      assignment.due_date || Date.new(9999, 12, 31)
    end
  end

  # Label based on how close the deadline is
  def priority_for(assignment)
    return "No due date" if assignment.due_date.nil?

    days_left = (assignment.due_date - Date.current).to_i

    case days_left
    when ..0
      "Overdue"
    when 1..2
      "High"
    when 3..7
      "Medium"
    else
      "Low"
    end
  end
end
