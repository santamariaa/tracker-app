website1 = Website.create!({website_url: "wsj.com"})
website2 = Website.create!({website_url: "google.com"})
website3 = Website.create!({website_url: "yahoo.com"})



user = User.create!(email: "andre@gmail.com", password: "password")


relationship1 = Relationship.create!(
    user_id: user.id ,
    website_id: website1.id ,
    productive: true
    )

relationship2 = Relationship.create!(
    user_id: user.id ,
    website_id: website2.id ,
    productive: true
    )

relationship3 = Relationship.create!(
    user_id: user.id ,
    website_id: website3.id ,
    productive: true
    )

Visit.create!([
    {
    relationship_id: relationship1.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship1.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship1.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship1.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship2.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship2.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship2.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship3.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    },
    {
    relationship_id: relationship3.id,
    checked_in: Time.gm(2016, "feb", 14, 4, 30, 30, 50),
    checked_out: Time.gm(2016, "feb", 14, 5, 30, 30, 50) 
    }]
    )