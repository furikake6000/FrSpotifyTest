require 'rspotify/oauth'

# Spotify API
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, Rails.application.credentials.spotify[:id], Rails.application.credentials.spotify[:secret], scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end