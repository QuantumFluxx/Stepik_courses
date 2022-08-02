# Task 1

puts 'Ruby это весело'


# Task 2

my_var = 42


# Task 3

puts 'Привет, #{name}'


# Task 4

x, y = y, x


# Task 5


text = 'It\`s my ten course.\nI like Ruby'


# Task 6


res = 'The result is #{a/b}'


# Task 7


name = gets.chomp
puts 'Привет, #{name}!'


# Task 8


=begin
This is some 
text that spans 
multiple lines
=end


# Task 9


puts gets.to_i ** 2


# Task 10


puts gets.to_i / 10 % 10



# Task 11


if age > 18
    puts 'Добро пожаловать!'
end


# Task 12


if grade >= 70
    puts 'Отлично!'
else
    puts 'Все плохо!'
end


# Task 13


n = gets.to_i
if n  >= 5 && n <= 10
    puts 'Да'
else
    puts 'Нет'
end


# Task 14


case weight
when 1,2,3
    puts 'Low'
when 4,5,6
    puts 'High'
else
    puts 'Invalid'
end


# Task 15


x, y = gets.to_i, gets.to_i
while x < y+1
    puts x
    x+=1
end


# Task 16


for i in ('b'...'o')
    puts i
end


# Task 17


n = gets.to_i
for i in (0...99)
    break if i >= n
    puts i
end


# Task 18


n = gets.to_i
for i in (0...n+1)
    next if i %2 == 0
    puts i
end


# Task 19


a = gets.to_i

if a == 3
    puts "Треугольник"
elsif a == 4
    puts "Четырехугольник"
elsif a == 5
    puts "Пятиугольник"
elsif a == 6
    puts "Шестиугольник"
else
    puts "Ошибка"
end


# Task 20

n = gets.to_i

if n > 0
    puts '1'
elsif n == 0
    puts '0'
elsif n < 0
    puts '-1'
end


# Task 21


x, y, z = gets.to_i, gets.to_i, gets.to_i
puts [x,y,z].max


# Task 22


n = gets.chomp

puts n[0]


# Task 23


n = gets.to_i
c = 1

for i in (1..n)
    c = i
    c **= 2
    puts c
end


# Task 24


n = gets.chomp

puts n[0].to_i+n[1].to_i+n[2].to_i



# Task 25


a,b,c,d = gets.to_i,gets.to_i,gets.to_i,gets.chomp
arr = [d,a,b,c]
puts arr[1]
print arr


# Task 26


ar.delete_at(2)
ar.pop
puts ar


# Task 27


arr = arr1 & arr2
arr = arr | arr3
puts arr


# Task 28

arr1 = arr1.uniq
arr1 = arr1.sort
puts arr1[3]
puts arr1.size
puts arr1.include?(7)
puts arr1.max
print arr1


# Task 29


dict = {"Январь"=>31, "Февраль"=>28, "Март"=>31}
print dict


# Task 30


puts course[:age]


# Task 31


c = 1
arr1.each do |x|
    c*=x
end
puts c


# Task 32


c = 0
hash.each do |x, y|
    c+=y
end
puts c


# Task 33


print arr1[-1]


# Task 34


c = 0
hash.each do |x, y|
    if y%2!=0
        c +=y
    end
end
puts c


# Task 35


def a(x,y,z)
    puts x*y*z
end

a(x,y,z)


# Task 36


def a(x, y=10)
    puts x+y
end

a(x)


# Task 37

def temp(a,b)
    return a/b
end


# Task 38


def multi(a,b)
    return a+b, a*b
end


# Task 39


def square *args
    c = 0
    for i in args
        c = i**2
        puts c
    end
end


# Task 40


class Car
end


# Task 41


class Box
    def initialize
        puts "Box created"
    end
end


# Task 42


class Animal
    def initialize
        puts 'Grrr!'
    end
end

dog = Animal.new


# Task 43


class Animal
    def initialize(age)
        @age = age
    end
end


# Task 44


class Soldier
    def fight
        puts 'Urrra!'
    end
    def defence
        puts 'We loose, go home!'
    end
end

s1 = Soldier.new
s2 = Soldier.new

s1.fight
s2.defence


# Task 45


class Star
    def get_distance
        @distance
    end
    def set_distance=(distance)
        @distance = distance
    end
end


# Task 46


class Star
    def distance
        @distance
    end
    def distance=(distance)
        @distance = distance
    end
end


# Task 47


class Car
    attr_accessor :name    
    def initialize(name)
        @name=name
    end
end


# Task 48


class Calc
    def self.sqr(x)
        puts x**2
    end
end


# Task 49


class Car
    WHEELS=4
end

puts Car::WHEELS


# Task 50


class Custom
    def to_s
    "Пользовательский вывод"
    end
end


# Task 51


class Car < Vehicle
  #some code
end


# Task 52


class Vehicle
    def make_sound
        puts 'Boo'
    end
end
class Car < Vehicle
end
    
d = Vehicle.new
d.make_sound


# Task 53


class Cost
    attr_accessor :rub, :cop
    def initialize(rub, cop)
        self.rub = rub 
        self.cop = cop
      end
    def *(other)
        Cost.new(self.rub*other.rub, self.cop*other.cop)
    end
end


# Task 54


class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)      
    show_info(p1, p2)
  end

  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

#initialize Players
puts "PLAYERS INFO"
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)


# Task 55


class Dog
    @@legs = 4
    @@voice = 'Rrr'
    def self.legs
        @@legs
    end
    def self.voice
        @@voice
    end
end


# Task 56 


class Custom
  def initialize(x)
    @x = x
  end
  def to_s
    @x
  end
end
x = gets.chomp
p = Custom.new(x)
puts p.to_s


# Task 57


module Fire
    def firearms
        puts 'It is firearm weapon!'
    end
end
module Cold
    def cold_steel
        puts 'It is cold steel weapon!'
    end
end
class Weapon
    def define
        puts 'It is a weapon!'
    end
end

class Knife < Weapon
    include Cold
end

class Bow < Weapon
    include Cold
end

class Gun < Weapon
    include Fire
end

class Rifle < Weapon
    include Fire
end

# Task 58

module Car
    class Volvo
        @@wheels=4
        def how_many_wheels
            puts @@wheels
        end
    end
end

module Truck
    class Volvo
        @@wheels=6
        def how_many_wheels
            puts @@wheels
        end
    end
end

c = Car::Volvo.new
t = Truck::Volvo.new

c.how_many_wheels
t.how_many_wheels

# Task 59

Cat = Struct.new(:x, :y, :z)


# Task 60


# текущее время
t = Time.now
puts t

# год, месяц, день
puts t.year
puts t.month
puts t.day

# произвольная дата
t = Time.new(1988, 6, 15)
puts t

# день недели: 0 это воскресенье
puts t.wday

# день года
puts t.yday


# Task 61

sum = Proc.new do |x,y,z|
  puts x+y+z
end


# Task 62


square = lambda{|x, y| puts x**y}


# Task 63

if File.file?("demo.txt")
    f = File.open("demo.txt")
    puts f.file
    f.close
else
    puts "File does not exist"
end