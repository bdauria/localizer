require 'rails_localizer/locale_setter'
require 'i18n'

RSpec.describe LocaleSetter do
  before(:each) do
    I18n.available_locales = [:en, :de]
  end
  describe '.try_set_locale' do
    before(:each) { allow(I18n).to receive(:available_locales).and_return([:en, :de]) }
    context 'with valid locale parameter' do
      it 'sets the locale parameter to I18n' do
        LocaleSetter.try_set_locale('de', nil, nil)
        expect(I18n.locale).to be(:de)
      end
    end
    context 'with invalid locale parameter but session parameter existing' do
      it 'sets the session parameter to I18n' do
        LocaleSetter.try_set_locale('nl', 'de', nil)
        expect(I18n.locale).to be(:de)
      end
    end
    context 'with invalid locale parameter, session parameter but preferred language existing' do
      it 'sets the preferred language to I18n' do
        LocaleSetter.try_set_locale('nl', nil, 'de')
        expect(I18n.locale).to be(:de)
      end
    end
    context 'without any valid parameter' do
      it 'sets I18n default locale' do
        allow(I18n).to receive(:default_locale).and_return(:en)
        LocaleSetter.try_set_locale(nil, nil, nil)
        expect(I18n.locale).to be(:en)
      end
    end
  end
end
