module GlueHelper
  def central_time(time)
     zone = ActiveSupport::TimeZone.new("Central Time (US & Canada)")
     time.in_time_zone(zone)
  end
end
