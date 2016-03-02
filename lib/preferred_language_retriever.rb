class PreferredLanguageRetriever
  def self.preferred_language_from(env)
    env.http_accept_language.compatible_language_from(I18n.available_locales)
  end
end
