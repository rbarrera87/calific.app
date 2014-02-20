# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :encuestum, :class => 'Encuesta' do
    pregunta "MyString"
    respuesta "MyString"
  end
end
