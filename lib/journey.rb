class Journey

  attr_reader :entry, :exit

  def initialize(entry)
    @entry = entry
    @fare = 0
  end

  def finish(exit)
    @exit = exit
    fare
  end

  def complete?
    return false if @entry.nil?
    true
  end

  def fare
    return 6 if (@entry.nil? or @exit.nil?)
    1
  end

end
