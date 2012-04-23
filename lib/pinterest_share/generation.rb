module PinterestShare
  class Generation
    def initialize(options)
      @options = options
      @url = url_for
    end

    def to_s
      @url
    end

    private
    def url_for
      filter!
      validate
      generate
    end

    def generate
      BASE_PATH + URI.encode_www_form(@options)
    end

    def filter!
      @options.select! do |key|
        ALLOWED_FIELDS.include? key
      end
    end

    def validate
      validate_required
      validate_format
    end

    def validate_required
      required_fields_missing = REQUIRED_FIELDS - @options.keys
      if required_fields_missing.size > 0
        raise ArgumentError, "Required fields not specified: #{required_fields_missing.join(', ')}"
      end
    end

    def validate_format
      REQUIRED_FIELDS.each do |field|
        raise InvalidHttpUrl unless @options[field] =~ URI.regexp(['http'])
      end
    end

  end
end
