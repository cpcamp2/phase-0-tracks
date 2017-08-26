# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#Release 0

#I. Add a /contact route that displays an address
get '/contact' do
  "114 Monte Vista Ave <br> Charlottesville, VA 22903"
end

#II. Add a /great_job route that can take a person's name as a query parameter and say "Good job, (name)" and if the query parameter is not present have it just say "Good job!"
get '/great_job/:person' do
  person = params[:person]
  if person
     "Good job, #{person}!"
  else
     "Good job!"
  end
end

#III. A route that uses route parameters to add two numbers and respond with the result. Note: data types are tricky when will the data need to arrive as a string?
get '/add/:number_1/:number_2' do
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
  number_3 = number_1 + number_2
  "#{number_1} + #{number_2} = #{number_3}"
end

#Release 1
#I. Sinatra definitely isn't the only ruby framework. Examples of ruby frameworks are: Rails, Padrino, Camping, Remaze, NYNY, Nancy, and so many more!
#II. There are plenty of other options for using a database with Sinatra. Pretty much any database gem availabe to Ruby should work with sinatra.
#III. A "web stack" is the collection of software required for Web development. E.g. components, technologies, languages, OS(s), that are used to build a website.