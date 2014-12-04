module Jobs
  module Remotely
    class Job
      attr_accessor :title, :description, :source_url, :posted_on, :location

      def initialize(entry)
        @title       = entry.title
        @description = entry.summary
        @source_url  = entry.url
        @posted_on   = entry.published.to_date
        if entry.location
          @location = entry.location
        end
      end
    end
  end
end
