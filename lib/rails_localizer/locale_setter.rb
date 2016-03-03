class LocaleSetter
  def self.try_set_locale(locale, locale_from_session, preferred_language)
    new_locale = locale if locale_available?(locale)
    I18n.locale = new_locale || locale_from_session || preferred_language || I18n.default_locale
  end

  def self.locale_available?(locale)
    I18n.available_locales.map(&:to_s).include?(locale)
  end
end
