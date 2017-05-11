class SecondCalculator
  SECONDS_IN_MINUTES = 60
  MINUTES_IN_HOURS = 60

  def seconds_in_minutes(minutes)
    SECONDS_IN_MINUTES * minutes
  end

  def seconds_in_hours(hours)
    seconds_in_minutes(MINUTES_IN_HOURS) * hours
  end
end
