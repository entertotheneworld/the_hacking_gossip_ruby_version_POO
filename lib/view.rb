class View 

  def create_gossip
    puts "Quelle est l'autheur ?"
    author = gets.chomp 
    puts "Contenu"
    content = gets.chomp 

    return params = {"content": content, "author": author}
  end

  def index_gossips(gossips)
    gossips.each_with_index {|row,i|
      puts "#{i + 1}. Autheur : #{row.author}"
      puts "\tContent : #{row.content}"
    }
  end
end