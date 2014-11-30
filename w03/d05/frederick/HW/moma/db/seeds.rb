davida = Artist.create({
  first_name: "Davida",
  last_name: "Allen",
  period: "PO-POMO",
  nationality: "Australian",
  date_of_birth: "20/10/1953",
  image: "http://upload.wikimedia.org/wikipedia/commons/c/c6/David_Self_Portrait.jpg"
})

davida.paintings.create({
  title: "Lorem ipsum",
  year: "1970",
  medium: "Oil on board",
  style: "Cubist",
  image: "http://upload.wikimedia.org/wikipedia/commons/6/6b/Napoleonpic.jpg"
})

davida.paintings.create({
  title: "Amet",
  year: "1970",
  medium: "Oil on board",
  style: "Cubist",
  image: "http://upload.wikimedia.org/wikipedia/commons/6/6b/Napoleonpic.jpg"
})

davida.paintings.create({
  title: "Crank",
  year: "1970",
  medium: "Oil on board",
  style: "Cubist",
  image: "http://upload.wikimedia.org/wikipedia/commons/6/6b/Napoleonpic.jpg"
})