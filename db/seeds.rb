# 20 contatos fake para melhorar o código:
Contact.destroy_all

contacts = []
# 10 Contatos faker
10.times do |i|
    new_contact = {
        id: i,
        name: Faker::Name.name,
        email:Faker::Internet.email,
        company: Faker::Company.name,
        address: "#{Faker::Address.street_name} #{Faker::Address.zip} #{Faker::Address.city}",
        phone: Faker::PhoneNumber.cell_phone
    }
    contacts.push(new_contact)
end

Contact.create(contacts)