# Rails Localizer
A simple gem to handle the initialization of the I18n locale.

Instructions:
Add these lines to your ApplicationController:
- `include Localizer` 
- and `before_action: set_locale`:

```
class ApplicationController < ActionController::Base
  include Localizer
  before_action :set_locale
end
```

Then, you can manually change the locale wherever in your application using the `locale` parameter. 
For instance, you can put this in the view responsible to change the language (in haml):
```
%ul.dropdown-menu{role: 'menu'}
      %li=link_to 'Deutsch', :locale=>'de'
      %li=link_to 'Français', :locale=>'fr'
      %li=link_to 'English', :locale=>'en'
```
to change the locale using a bootstrap dropdown menu.

The default behaviour of the gem is the following:
- If no locale is present within the locale parameter or within the locale session, i18n default locale is used.
- If a locale is present within the locale session, it'll be used instead of the default.
- If a locale is present within the locale parameter and is defined in i18n available locales, it'll be used

Pull requests really welcome !

