require 'openid/consumer'
require 'gapps_openid'

module OpenID
  # Because gapps_openid changes the discovery order
  # (looking first for Google Apps, then anything else),
  # we need to monkeypatch it to make it play nicely
  # with others.
  def self.discover(uri)
    raise OpenID::DiscoveryFailure.new("No URL Provided", 422) if uri.nil?

    begin
      discovered = self.default_discover(uri)

      if discovered.last.empty?
        info = discover_google_apps(uri)
        return info if info
      end

      return discovered
    rescue OpenID::DiscoveryFailure => e
      info = discover_google_apps(uri)

      if info.nil?
        raise e
      else
        return info
      end
    end
  end

  def self.discover_google_apps(uri)
    discovery = GoogleDiscovery.new
    discovery.perform_discovery(uri)
  end
end
