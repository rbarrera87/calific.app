# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grupo, :class => 'Grupos' do
    nombre "MyString"
    descripcion "MyString"
  end
end
