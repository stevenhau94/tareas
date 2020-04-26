import pymysql
import abc
from abc import ABC

class Netflix(ABC):

    def __init__(self):
        __metaclass__ = ABCMeta

    def __init__(self,id,titulo,director):

        self.id=id

        self.titulo=titulo

        self.director=director #este debe ser un objeto, no un dato
    
    def __str__(self):

        return('{}, {}, {}'.format(self.id,self.titulo,self.director))

    #@abc.abstractmethod
    def getId(self):

        return self.id

    #@abc.abstractmethod 
    def getTitulo(self):

        return self.titulo


class Movie(Netflix):

    def __init__(self):
        pass

    def getId(self):

        return self.id
    
    def getTitulo(self):

        return self.titulo
    
    @classmethod
    def insertarNetflix(cls, id,titulo,director,cast,pais,fecha,anio,rating,duracion,categoria,descripcion):

        db = pymysql.connect("localhost","root","","netflix")

        cursor = db.cursor()

        sql="INSERT INTO `netflix`.`peliculas` (`id`, `titulo`, `director`, `cast`, `pais`, `fecha_agregado`, `anio`, `rating`, `duracion`, `categoria`, `descripcion`) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');".format(id,titulo,director,cast,pais,fecha,anio,rating,duracion,categoria,descripcion)

        try:

            # Execute the SQL command

            cursor.execute(sql)

            # Commit your changes in the database

            db.commit()

            # disconnect from server

            db.close()

            return 1

        except:

            # Rollback in case there is any error

            db.rollback()

            # disconnect from server

            db.close()

            return 0

class Tvshow(Netflix):

    def __init__(self):
        pass

    def getId(self):

        return self.id
    
    def getTitulo(self):

        return self.titulo
    
    @classmethod
    def insertarNetflix(cls, id,titulo,director,cast,pais,fecha,anio,rating,duracion,categoria,descripcion):

        db = pymysql.connect("localhost","root","","netflix")

        cursor = db.cursor()

        sql="INSERT INTO `netflix`.`series` (`id`, `titulo`, `director`, `cast`, `pais`, `fecha_agregado`, `anio`, `rating`, `duracion`, `categoria`, `descripcion`) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');".format(id,titulo,director,cast,pais,fecha,anio,rating,duracion,categoria,descripcion)

        try:

            # Execute the SQL command

            cursor.execute(sql)

            # Commit your changes in the database

            db.commit()

            # disconnect from server

            db.close()

            return 1

        except:

            # Rollback in case there is any error

            db.rollback()

            # disconnect from server

            db.close()

            return 0

archivo=open('netflix.csv','r',encoding="utf8")

cuenta=0

netflixDatos=[]

for renglon in archivo:

    dato=renglon.split(',')

    cuenta+=1

    netflixDatos+=[Netflix(dato[1],dato[2],dato[3])]



    if cuenta>5:

        break    

print('Total de datos:',cuenta-1)

archivo.close()


#pueden ver los objetos en la lista de netflix

#ustedes deben separarlos en dos listas, movie y tv

for renglon in netflixDatos:

    print(renglon)

    Movie.insertarNetflix(renglon.getId(), renglon.getTitulo(),'x','x','x','x','x','x','x','x','x')

    Tvshow.insertarNetflix(renglon.getId(), renglon.getTitulo(),'x','x','x','x','x','x','x','x','x')
