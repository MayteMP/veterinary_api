FactoryBot.define do
  factory :pet do
    name { "Valkiria" }
    birthday { "2015-08-21" }
    genre { "female" }
    specie { "dog" }
    color { "Orange" }
    brees { "dalmata" }
    microchip_number { "abc-def-0001" }
    particular_sings { "Left black eye" }
  end
end
