10.times do |n|

  user = User.create! email: "#{n}@example.com"

  10.times do |i|
    item = user.items.create! name: "item #{n}-#{i}"

    4.times do |p|
      item.parts.create! name: "part #{p}-#{n}-#{i}"
    end
  end

end
