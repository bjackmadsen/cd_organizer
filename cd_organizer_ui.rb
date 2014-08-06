require './lib/album'
require './lib/artist'

@current_artist = nil

def main_menu
  loop do
    puts "***CD ORGANIZER***"
    puts "Press 'a' to add an artist, 'n' to add an album, 'l' to list artists"
    puts "Press 'x' to exit"
    main_choice = gets.chomp
    if main_choice == 'a'
      add_artist
    elsif main_choice == 'n'
      add_album
    elsif main_choice == 'l'
      list_artists
    elsif main_choice == 'x'
      puts "Kthanxbye"
      exit
    else
      puts "Not a valid entry"
    end
  end
end

def add_artist
  puts "Enter the name of an artist"
  input_name = gets.chomp
  Artist.new(input_name).save
  Artist.all.each do |artist|
    @current_artist = artist
  end
  puts "Artist added!\n\n"
end

def list_artists
  puts "Here is your list of artists: "
  Artist.all.each do |artist|
    puts artist.name
  end

  puts "Type an artist name to view their albums."
  list_artist = gets.chomp
  Artist.all.each do |artist|
    if list_artist == artist.name
      puts artist.album
    end
  end
end


main_menu
