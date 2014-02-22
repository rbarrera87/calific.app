# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    
    nombre "MyString"
    apellido_paterno "MyString"
    apellido_materno "MyString"
    fotografia_url "MyString"
    numero_control 1
    contrasena "MyString"
    fecha_nacimiento "2014-01-29"
    estado_civil "MyString"
    sexo "MyString"
    cp "MyString"
    curp "MyString"
    nss "MyString"
    telefono 1
    celular 1
    correo_electronico "MyString"
    calle "MyString"
    numero_exterior "MyString"
    numero_inteior "MyString"
    numero_departamento "MyString"
    referencias "MyString"
    comentarios "MyText"
    poblacion "MyString"
    estado "MyString"
    situacion "MyText"
  end
end
