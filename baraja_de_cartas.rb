
require_relative 'carta'

class Baraja 
   attr_accessor :cartas
  
   def initialize(cartas = []) 
     @cartas = cartas    
       ['C','D','E','T'].each do |pinta| 
            13.times do |i|  
             @cartas.push(Carta.new(i+1, pinta))  
             end
         end  
         @cartas  
     end
    def barajar
     @cartas.shuffle!
     
    end   

    def sacar
     @cartas.pop
    end

    def repartir_mano
        mano = []
    
        5.times do
            mano.push( self.sacar )
        end
        mano
    end


end

def imprimir_baraja(baraja)
    cont = 0
    baraja.cartas.each do |carta|
        cont += 1
        print "#{carta.numero}-#{carta.pinta} \t"
        if cont == 13
            print "\n"
            cont = 0  
        end
     
    end



  
end


baraja = Baraja.new
print "\n"
print "****************************************************************************************************"
print ("\n"+ "Combinaciones de Cartas ordenadas: "+"\n")
print "\n"
imprimir_baraja(baraja)

print "\n"
print "****************************************************************************************************"
puts "\nBaraja Aleatoria"
print "\n"
baraja.barajar
imprimir_baraja(baraja)

print "\n"
print "****************************************************************************************************"
puts "\nPrimera carta de los naipes barajados en aleatorio (parte superior de la pila)"
carta1 = baraja.sacar
puts "#{carta1.numero}-#{carta1.pinta}"


print "\n"
print "****************************************************************************************************"
puts "\nLas 5 Primeras Cartas de la baraja aleatoria"
mano_obj = baraja.repartir_mano
mano_obj.each {|carta| puts "#{carta.numero}-#{carta.pinta}"}



