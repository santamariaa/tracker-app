website = Website.create!({website_url: "wsj.com"})



user = User.create!(email: "rob#{rand(10000)}@gmail.com", password: "foofoofoo")


relationship = Relationship.create!(
    user_id: user.id ,
    website_id: website.id ,
    productive: true
    )

Visit.create!(
    relationship_id: relationship.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    )