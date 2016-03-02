module Localizer
  private

  def set_locale
    preferred_language = PreferredLanguageRetriever.preferred_language_from(env)
    LocaleSetter.try_set_locale(params[:locale], session[:locale], preferred_language)
    session[:locale] = I18n.locale
  end
end
