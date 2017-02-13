require 'rails_helper'

describe "A visitor visits the links index page" do
  it "And sees the top ten links in descending order" do
    a = Link.create(url: "http://www.a.com", read_count: 2)
    b = Link.create(url: "http://www.b.com", read_count: 5)
    c = Link.create(url: "http://www.c.com", read_count: 1)
    d = Link.create(url: "http://www.d.com", read_count: 6)
    e = Link.create(url: "http://www.e.com", read_count: 3)
    f = Link.create(url: "http://www.f.com", read_count: 9)
    g = Link.create(url: "http://www.g.com", read_count: 21)
    h = Link.create(url: "http://www.h.com", read_count: 4)
    i = Link.create(url: "http://www.i.com", read_count: 32)
    j = Link.create(url: "http://www.j.com", read_count: 56)
    k = Link.create(url: "http://www.k.com", read_count: 7)
    l = Link.create(url: "http://www.l.com", read_count: 8)

    visit root_path

    expect(page).to have_content("http://www.j.com 56, http://www.i.com 32, http://www.g.com 21, http://www.f.com 9, http://www.l.com 8, http://www.k.com 7, http://www.d.com 6, http://www.b.com 5, http://www.h.com 4, http://www.e.com 3,")
  end
end
