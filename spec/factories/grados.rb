# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grado, :class => 'Grados' do
    nombre "MyString"
    descripcion "MyString"
  end
end
