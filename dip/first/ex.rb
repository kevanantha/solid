class Roster
  def initialize
    @participants = []
  end

  def <<(new_participant)
    @participants << new_participant
  end

  def participant_names
    @participants.map { |e| e.full_name }
  end

  def to_s
    RosterPrinter.new(participant_names).to_s # RosterPrinter dan Roster ga perlu di gabungin
  end
end

class RosterPrinter
  def initialize(participant_names)
    @participant_names = participant_names
  end

  def to_s
    "Participants:\n" +
    @participant_names.map { |e| "* #{e}" }.join("\n")
  end
end

# ===
class Roster
  # other methods same as before

  def to_s(printer=RosterPrinter)
    printer.new(participant_names).to_s
  end
end

# usage
roster.to_s

# misalnya mau nambah roster printer
class HTMLRosterPrinter
  def initialize(participant_names)
    @participant_names = participant_names
  end

  def to_s
    "<h3>Participants</h3><ul>"+
    @participant_names.map { |e| "<li>#{e}</li>" } +
    "</ul>"
  end
end

# usage
roster.to_s(HTMLRosterPrinter)
