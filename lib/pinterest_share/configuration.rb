module PinterestShare

  ALLOWED_FIELDS = %w[
    description
    media
    url
  ].map(&:to_sym)

  REQUIRED_FIELDS = %w[
    media
    url
  ].map(&:to_sym)

  BASE_PATH = 'http://pinterest.com/pin/create/button/?'

end
