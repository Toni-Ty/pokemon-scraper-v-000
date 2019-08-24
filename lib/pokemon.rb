class Pokemon

  attr_accessor :id, :name, :type, :db

<<<<<<< HEAD
  def initialize(keywords)

  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id_num, db)
     pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [id_num])
     pokemon_new = self.new(pokemon)
     pokemon_new.id = pokemon[0][0]
     pokemon_new.name = pokemon[0][1]
     pokemon_new.type = pokemon[0][2]
     return pokemon_new
    end
=======
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
end

def self.find(id_row, db)
   pokemon = db.execute("SELECT * FROM pokemon WHERE id =?", [id_row])
   pokemon_new = self.new(pokemon)
   id = pokemon_new[0],
   name = pokemon_new[1],
   type = pokemon_new[2]
   return pokemon_new
  end
>>>>>>> a6ef46649fd9c140d5db75e456ebe9c461c4b9d8
end
