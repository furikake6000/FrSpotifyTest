module SpotifyHelper
  def spotify_authenticate
    # Spotify APIのセットアップ
    RSpotify.authenticate(Rails.application.credentials.spotify[:id], Rails.application.credentials.spotify[:secret])
  end
end