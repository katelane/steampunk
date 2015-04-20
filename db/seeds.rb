class Seed
  def initialize
    generate_authors
    generate_beginnings
    generate_middles
    generate_endings
  end

  def generate_authors
    Author.create!(username:   'brassbright',
                 email:      'user@example.com',
                 password:   'password'
                )
    puts 'Authors generated!'
  end

  def generate_beginnings
    ba = Beginning.create!(body: "By the first gear,")
    ba.save!

    bb = Beginning.create!(body: "I swear upon my favorite bowler,")
    bb.save!

    bc = Beginning.create!(body: "As cog is my witness,")
    bc.save!

    bd = Beginning.create!(body: "By Tesla's own sparks, I swear,")
    bd.save!

    be = Beginning.create!(body: "By the first gear,")
    be.save!

    puts 'Beginnings generated!'
  end

  def generate_middles
    ma = Middle.create!(body: "I will send street urchins to descend on your front lawn en masse and ruin")
    ma.save!

    mb = Middle.create!(body: "the green absinthe fairy will sober up and mangle")
    mb.save!

    mc = Middle.create!(body: "I will make sure that copious amounts of rust will be applied to")
    mc.save!

    md = Middle.create!(body: "I will cause you to regret not buying that insurance policy for")
    md.save!

    me = Middle.create!(body: "I will take a ninepenny nail to various coordinates in your knickers and then go rabid on")
    me.save!

    puts 'Middles generated!'
  end

  def generate_endings
    ea = Ending.create!(body: "your grandmother's best clock.")
    ea.save!

    eb = Ending.create!(body: "that priceless bottle of absinthe.")
    eb.save!

    ec = Ending.create!(body: "your Sunday goggles.")
    ec.save!

    ed = Ending.create!(body: "every glued-on gear on the continent.")
    ed.save!

    ee = Ending.create!(body: "the airship you rode in on.")
    ee.save!

    puts 'Endings generated!'
  end
end
Seed.new
