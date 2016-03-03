module Localizer
  private

  def set_locale
    preferred_locale = PreferredLocaleRetriever.preferred_locale_from(env)
    LocaleSetter.try_set_locale(params[:locale], session[:locale], preferred_locale)
    session[:locale] = I18n.locale
  end
end
