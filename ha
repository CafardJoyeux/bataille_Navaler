try:
print("%%%Lancement du programme%%%")
"""
ameliorations V1.3:
- cinematique bateau coule
- 2eme niveau de difficulte au bot
"""
print("")
import time
import random as r
time.sleep(0.5)#
print("Creation du terrain ...")
print("")

terrainJ1 = [["/(","/(","/(","/(","/(","/(","/(","/(","/(","/("]] 
terrainBot = [["/(","/(","/(","/(","/(","/(","/(","/(","/(","/("]] 
for loop in range(9):
   terrainJ1.append(["/(","/(","/(","/(","/(","/(","/(","/(","/(","/("])
   terrainBot.append(["/(","/(","/(","/(","/(","/(","/(","/(","/(","/("])

time.sleep(0.5)#
print("Quand vous coulez un bateau vous verrez la cinematique suivante :                ")
time.sleep(3)#
#from Navire_couler import coule
def coule():
   time.sleep(2)
print(chr(10)*3)
azx = 1
def bat():
   a = [5, 4, 3, 3, 2]
   return a
bateaux = bat() 
def terrain(terrainJ1):#affichage du terrain en debut de partie
   print("        A B C D E F G H I J")
   print("")
   for loop in range(1, 11):
      if loop == 10:
         print("    10", end="  ")
      else:
         print("    ",str(loop), end="  ")
      for look in range(10):
         print(terrainJ1[loop-1][look], end= "")
      print("")
      time.sleep(0.1)#
def terrains(terrainJ1, terrainBot, jkl):# affichage du terrain en Verticale
   import time
   print("         Vous         |         Ennemi")
   print("  A B C D E F G H I J |  A B C D E F G H I J")
   print("                      |")
   for loop in range(0, 10):
      for loog in range(2):
         if loog == 0:
            if loop == 9:
               print("10", end="")
            else:
               print(str(loop+1), end=" ")
         else:
            if loop == 9:
               print("|10", end="")
            else:
               print("|"+str(loop+1), end=" ")
         for look in range(10):
            if  loog == 0:
               if terrainJ1[loop][look] == "><":
                  print("/(",end="")
               else:
                  print(terrainJ1[loop][look], end= "")
            elif look < 9 and loog == 1:
               if jkl == 6:#cheat code terrain visible
                  if terrainBot[loop][look] == "+":
                     print("%%",end="") 
                  else:
                    if terrainBot[loop][look] == "><":
                       print("/(",end="")
                    else:
                       print(terrainBot[loop][look], end="")
               else:
                  if terrainBot[loop][look] == "**" or terrainBot[loop][look] == "##":
                     print(terrainBot[loop][look], end="")
                  else:
                     print("/(",end="")
            else:
               if jkl != 6:
                  if terrainBot[loop][look] == "**" or terrainBot[loop][look] == "##" :
                     print(terrainBot[loop][look])
                  else:
                     print("/(")
               else:
                  if terrainBot[loop][look] == "><":
                     print("/(")
                  else:
                     print(terrainBot[loop][look])
             
      if loop == 9:
         print("                      |")
   if point[0] > 9:
      print("Vous avez",point[0],"vies     |   L'ennemi a",point[1],"vies")
   else:
      print("Vous avez",point[0],"vies",end="      |")
      print("   L'ennemi a",point[1],"vies")


def Horizontale(terrainJ1, terrainBot, jkl):#la meme a l'horizontale
   import time
   print("                                                     |")
   print("    A    B    C    D    E    F    G    H    I    J   |   A    B    C    D    E    F    G    H    I    J")
   print("                                                     |")
   for loop in range(0, 10):
      for loog in range(2):
         if loog == 0:
            if loop == 9:
               print("10", end=" ")
            else:
               print("",str(loop+1), end=" ")
         else:
            if loop == 9:
               print("|10", end=" ")
            else:
               print("|",str(loop+1), end=" ")
         for look in range(10):
            if  loog == 0:
               if terrainJ1[loop][look] == "><":
                  print("/(",end="   ")
               else:
                  print(terrainJ1[loop][look], end= "   ")
            elif loog == 1 and jkl == 0:
               if terrainBot[loop][look] == "**" or terrainBot[loop][look] == "##" :
                  print(terrainBot[loop][look], end="   ")
               else:
                  print("/(",end="   ")
               if look == 9:
                  print(chr(8)*3)
            else:
               if loog < 9:
                  hdhfgf = 0
                  if terrainBot[loop][look] == "><":
                     print("/(",end="   ")
                  else:
                     print(terrainBot[loop][look],end="   ")
               else:
                  if terrainBot[loop][look] == "><":
                     print("/(")
                  else:
                     print(terrainBot[loop][look])
             
      if loop != 10 :
         if jkl == 6:
            print("                                                  |")
         else:
            print("                                                     |")
   print("Vous avez",point[0],"vies")
   print("")
   print("L'ennemi a",point[1],"vies")
#pose des bateaux
#{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{

def bateau(terrainJ1, nbBat, x):
   import copy 
   azerty = copy.deepcopy(terrainJ1)
   print("")
   print("Ce bateau doit  faire "+str(nbBat)+" cases.")
   terrain(terrainJ1)
   def bacl():
      def bac():
         try:
            a = input().split(" ")#verification syntaxe
         except:
            print("")
            print("Le second caractere doit etre un espace.")
            print("")
            a = bac()
         if len(a[0]) != 1:
            print("")
            print("Le second caractere doit etre un espace.")
            print("")
            a = bac()

         u = ord(a[0])#adaptation maj
         if u >= 97 and u <= 106 :
            a[0] = chr(u - 32)
         elif u >= 65 and u <= 74 :
           q = 2
         else:
            print("")
            print("Le premier caractere doit etre une lettre.")
            print("")
            a = bac()
         
         try:
            o = int(a[1])
            if o <= 0 or o >= 11:
               print("")
               print("Le troisieme caractere doit etre compris entre 1 et 10 (inclus).")
               print("")
               a = bac()
         except:
            print("")
            print("Le troisieme caractere doit etre un nombre entre 1 et 10.")
            print("")
            a = bac()
         return a
      #c'est ici hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
      q = 0
      bat1a = bac()
      bat1b = bac()
      if bat1a[1] > bat1b[1]:
         q += 1
      if ord(bat1a[0]) > ord(bat1a[0]):
         q += 1 
      if q == 1:
         return bat1b, bat1a
         
      elif q > 1:
         print("")
         print("Il n'est pas possible de mettre un bateau en diagonale")
         print("")
         bat1a, bat1b = bacl()
         q = 0
      elif q == 0:
         return bat1a, bat1b
   # et ici aussi !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   c = 8
   bat1a, bat1b = bacl()
   if  nbBat-1 == (ord(bat1b[0])-ord(bat1a[0])):# pose le bateau(abscisses)
      c = 0
      jdr = True
      for loop in range(nbBat):
         if terrainJ1[int(bat1a[1])- 1][(ord(bat1a[0])-65)+loop] == "/(":
            terrainJ1[int(bat1a[1])- 1][(ord(bat1a[0])-65)+loop]= chr(43)
         else:
            jdr = False
            MJ = loop
            break
      if  not jdr:
         for loop in range(MJ):
            if terrainJ1[int(bat1a[1])- 1][(ord(bat1a[0])-65)+loop] == chr(43):
               terrainJ1[int(bat1a[1])- 1][(ord(bat1a[0])-65)+loop]= "/("  #efface le bateau s'il commence a passer sur un autre
         print("")
         print("") 
         print("Ce bateau passe sur un autre de vos bateaux ")
         print("")
         terrainJ1 = bateau(azerty, nbBat, x)
   elif int(bat1a[1]) == (int(bat1b[1])+1-nbBat):#idem _mais dans les ordonnees
      c = 1
      jdr = True
      for loop in range(nbBat):
         if terrainJ1[int(bat1a[1])-1+loop][(ord(bat1a[0])-65)] == "/(":
            terrainJ1[int(bat1a[1])-1+loop][(ord(bat1a[0])-65)] = chr(43)
         else:
            jdr = False
            MJ = loop
            break
      if not jdr:
         for loop in range(MJ):
            if terrainJ1[int(bat1a[1])- 1+loop][(ord(bat1a[0])-65)] == chr(43):
               terrainJ1[int(bat1a[1])- 1+loop][(ord(bat1a[0])-65)]= "/("
            terrainJ1 = bateau(azerty, nbBat, x)
   else:
      c = 2
      print("")
      print("")
      print("Ce bateau n'as pas la bonne longueur")
      print("")
      terrainJ1 = bateau(azerty, nbBat, x)
   u = True
   for loop in range(nbBat):
      try:
         if terrainJ1[int(bat1a[1])- 1][(ord(bat1a[0])-65)+loop] == chr(43):
            terrainJ1[int(bat1a[1])- 1][(ord(bat1a[0])-65)+loop] = "%%"
      except:
         u = False
         print("Fail *")
         print("Error 208")
         break
    
   if c == 0:#pose du contour anti choc
      for loop in range(-1, nbBat+1):
         for loof in range(int(bat1a[1])- 2, int(bat1a[1])+1):
            try:
              if terrainJ1[loof][(ord(bat1a[0])-65)+loop] == "/(":
                if loof >= 0:
                  if ord(bat1a[0])-65+loop >= 0:
                    terrainJ1[loof][(ord(bat1a[0])-65)+loop] =  "><"
            except:
               pass
            
   u = True
   for loop in range(nbBat):#inztallation du bateau apres ,a pose du faux anti_bug
      try:
         if terrainJ1[int(bat1a[1])+loop- 1][(ord(bat1a[0])-65)] == chr(43):
            terrainJ1[int(bat1a[1])+loop- 1][(ord(bat1a[0])-65)]= "%%"
      except:
         u = False
         print("Fail *")
         print("Error 214")#erreur malheureusement recurente
         break
   
   if c == 1:
      for loop in range(-2, nbBat):
         for loof in range(ord(bat1a[0])- 66, ord(bat1a[0])-63):
           try:
              if terrainJ1[int(bat1a[1])+loop][loof] == "/(":
                if loof >= 0:
                  if int(bat1a[1])+loop >= 0:
                    terrainJ1[int(bat1a[1])+loop][loof] =  "><"
           except:
              pass
   tilt = [nbBat]
   for cases in range(nbBat):
      if c == 1:
         tilt.append(bat1a[0]+" "+str(int(bat1a[1])+cases))
      elif c == 0:
         tilt.append(chr(ord(bat1a[0])+cases)+" "+bat1a[1])
   return terrainJ1, tilt
   
def choix(terrain, nbBat, point, w): #pose de bateau aleatoire
   import copy
   azerty = copy.deepcopy(terrain)
   a = r.randint(0, 9)#lettre
   b = r.randint(0, 9)#chiffre
   c = r.randint(0, 1)#abscisses/ordonnees
   tilt = [nbBat]
   if c == 0:
      if a > (10-nbBat):
         w += 1
         if w < 20:
               terrain, w, point, tilt = choix(terrain, nbBat, point, w)
               return terrain, w, point, tilt
      try:
         for loop in range(nbBat): 
            if terrain[a+loop][b] == "/(":
               terrain[a+loop][b] = chr(43)
            else:
               for loot in range(loop+1):
                  if terrain[a+loot][b] == chr(43):
                     terrain[a+loot][b] = "/("
               
               w += 1
               if w < 20:
                  terrain, w, point, tilt = choix(terrain, nbBat, point, w)

               return terrain, w, point, tilt
      except IndexError :
         try:
            for loop in range(nbBat):
               if terrain[a+loop][b] == chr(43):
                  terrain[a+loop][b] = "/("
         except:
            w += 1
            if w < 20:
               terrain, w, point, tilt = choix(terrain, nbBat, point, w)
               return terrain, w, point, tilt

      except:
         try:
            for loop in range(nbBat):
               if terrain[a+loop][b] == "+":
                  terrain[a+loop][b] = "/("
         except:
            pass
         w += 1
         if w < 20:
            terrain, w, point, tilt = choix(terrain, nbBat, point, w)
            return terrain, w, point, tilt
      
      for loop in range(nbBat): 
         if terrain[a+loop][b] == chr(43):
            terrain[a+loop][b] = "%%"
            point[1] += 1
      for loop in range(-1, nbBat+1):
         for look in range(b-1, b+2):
            try:
               if terrain[a+loop][look] == "/(":
                  terrain[a+loop][look] = "><"
            except:
               pass
      if w != 20:
         for cases in range(nbBat):
            tilt.append(chr(b+65)+" "+str(a+1+cases))
            


   else:      
      if b > (10-nbBat):
         w += 1
         if w < 20:
               terrain, w, point, tilt = choix(terrain, nbBat, point, w)
               return terrain, w, point, tilt
      try:
         for loop in range(nbBat):
            if terrain[a][b+loop] == "/(":
               terrain[a][b+loop] = "+"
               
            else:
               for loon in range(nbBat):
                  if terrain[a][b+loon] == chr(43):
                     terrain[a][b+loon] = "/("
               w += 1
               if w < 20:
                  terrain, w, point, tilt = choix(terrain, nbBat, point, w)
                  return terrain, w, point, tilt

            
      except IndexError:
            print("Youpi")  
            try:
               for loop in range(nbBat):
                  if terrain[a][b+loop] == chr(43):
                     terrain[a][b+loop] = "/("
            except:
               pass
               
      except:
            try:
               for loop in range(nbBat):
                  if terrain[a][b+loop] == chr(43):
                     terrain[a][b+loop] = "/("
            except:
               w += 1
               if w < 20 :
                  terrain, w, point, tilt = choix(terrain, nbBat, point, w)
                  return terrain, w, point, tilt

   
       
      for loop in range(nbBat):
            try:
               if terrain[a][b+loop] == chr(43):
                  terrain[a][b+loop] = "%%"
                  point[1] += 1
            except:
              if w != 20:
                print("Fail *")
                print("Error 299")
            pass
      
      for loop in range(-1, nbBat+1):
            for look in range(a-1, a+2):
               try:
                  if terrain[look][b+loop] == "/(":
                     terrain[look][b+loop] = "><"
               except:
                  pass
      if w != 20:
         for cases in range(nbBat):
            tilt.append(chr(b+65+cases)+" "+str(1+a))
   return terrain, w, point, tilt


# tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir tir 

def chasse(terrain, point, jkl, tweny):
   a = 0
   xy = [1,1]
   uuu = [0,0]
   print("Sur quel case voulez vous tirez ?")
   
   def entree(jkl):
      try:
            a = input().split(" ")
      except:
            print("")
            print("Le second caractere doit etre un espace.")
            print("")
            a, jkl = entree(jkl)
      try:
        if a[0][0] == "/":
          if a[1] == "-227,2":
            jkl = 6
            print("Commande interprete avec succe")
            print("Execution de la commande en cours")
            print("")
            print("Sur quel case voulez vous tirer ?")
            a,jkl = entree(jkl)
            return a, jkl
          elif a[1] == chr(84)+chr(114)+chr(111)+chr(108)+chr(108):
             if jkl == 6:
                jkl = 8
             else:
                jkl = 7
             print("Commande interprete avec succes")
             print("Execution de la commande en cours")
             print("")
             print("Sur quel case voulez-vous tirer ?")
             a,jkl = entree(jkl)
             return a, jkl
          elif a[1] == "227,2":
             jkl = 0
             print("Commande interprete avec succes")
             print("Execution de la commande en cours")
             print("")
             print("Sur quel case voulez-vous tirer ?")
             a,jkl = entree(jkl) 
             return a, jkl
          else:
            a, jkl = entree(jkl)
            return a, jkl
      except IndexError:
         print("You are crayzi !!! ")
         print("")
         a, jkl = entree(jkl)
      
      if len(a[0]) != 1:
            print("")
            print("Le second caractere doit etre un espace.")
            print("")
            a,jkl = entree(jkl)

      u = ord(a[0])
      if u >= 97 and u <= 106 :
            a[0] = chr(u - 32)
      elif u >= 65 and u <= 74 :
           q = 2
      else:
            print("")
            print("Le premier caractere doit etre une lettre.")
            print("")
            a,jkl = entree(jkl)
         
      try:
            o = int(a[1])
            if o <= 0 or o >= 11:
               print("")
               print("Le troisieme caractere doit etre compris entre 1 et 10 (inclus).")
               print("")
               a, jkl = entree(jkl)
      except:
            print("")
            print("Le troisieme caractere doit etre un nombre entre 1 et 10.")
            print("")
            a, jkl= entree(jkl)
      return a,jkl

   xy, jkl = entree(jkl)
   if jkl == 7 or  jkl == 8:
      for loop in range(10):
         for cook in range(10):
            terrain[cook][loop] = "%%"
      if jkl == 8:
         jkl = 6
      if jkl == 7:
         jkl = 0
   xy[0] = ord(xy[0])-65
   xy[1] = int(xy[1])-1
   print("") 
   if terrain[xy[1]][xy[0]] == "**" or terrain[xy[1]][xy[0]] == "##":
      print("Vous avez deja tirer sur cette case")
      print("")
      point, terrain, jkl, tweny = chasse(terrain, point, jkl, tweny)
      return point, terrain, jkl, tweny
   elif terrain[xy[1]][xy[0]] == "/(" or terrain[xy[1]][xy[0]] == "><":
      print("Plouf")
      print("C'est un coup a l'eau")
      terrain[xy[1]][xy[0]] = "**"
   elif terrain[xy[1]][xy[0]] == "%%":
      print("Boum !")
      print("Vous avez eu un bateau ennemi !!!")
      terrain[xy[1]][xy[0]] = "##"
      point[1] -= 1
   else:
      print("lol")
   for longbat in range(len(tweny)):
      for batt in range(1,len(tweny[longbat])):
        # print(chr(xy[0]+65)+" "+str(xy[1]+1) )
         if chr(xy[0]+65)+" "+str(xy[1]+1) == tweny[longbat][batt]:
            tweny[longbat][0] -= 1
            tweny[longbat][batt] = 000
            if tweny[longbat][0] == 0:
               print("")
               print("Les petits bateaux dans l'eau,coulent,coulent...")
               print("                                                                                                ")
               coule()
               print("")
   return point, terrain, jkl, tweny
   
   
#Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot Bot

def Chasse(terrainBot, point):
   a = 0
   yyy = False
   xy = [1,1]
   uuu = [0,0]
   for loop in range(2):
         xy[0] = r.randint(0,9)
         xy[1] = r.randint(0,9)
         uuu = xy
   print("")
   aaa = bat() 
   if terrainBot[xy[1]][xy[0]] == "**" or terrainBot[xy[1]][xy[0]] == "##":
      terrainBot, point,  yyy, uuu = Chasse(terrainBot, point)
   elif terrainBot[xy[1]][xy[0]] == "/(" or terrainBot[xy[1]][xy[0]] == "><":
      print("Plouf")
      print("L'ennemi n'a pas toucher vos bateaux !")
       
      try:
         terrainBot[xy[1]][xy[0]] = "**"
         
      except:
         print("Fail ***")
         print("Error 595")
      print("L'ennemi a tire en "+ chr(uuu[0]+65),uuu[1]+1)
      print("")
      return terrainBot, point, yyy, uuu
   
   elif terrainBot[xy[1]][xy[0]] == "%%":
      print("bruits d\'explosion")
      print("L\'ennemi a eu un de vos bateaux")
      point[0] -= 1
      yyy = True    
      terrainBot[xy[1]][xy[0]] = "##"
      print("")
      print("L'ennemi a tire en "+ chr(uuu[0]+65),uuu[1]+1)
      return terrainBot, point, yyy, uuu
   else: 
      print("...")
      print("Error 611") 
      print("Aucun tir effectue")
   return terrainBot, point, yyy, uuu
   
def difficile(terrainBot, point, tour):
   a = 0
   yyy = False
   xy = [1,1]
   uuu = [0,0]
   xy[0] = r.randint(0,9)
   xy[1] = (r.randint(0,1)*4+xy[0])
   if xy[1] >9:
      xy[1] = xy[1]-xy[0]//2
   uuu = xy
   print("")
   aaa = bat()
   if terrainBot[xy[1]][xy[0]] == "**" or terrainBot[xy[1]][xy[0]] == "##":
      return 
   elif terrainBot[xy[1]][xy[0]] == "/(" or terrainBot[xy[1]][xy[0]] == "><":
      print("Plouf")
      print("L'ennemi n'a pas toucher vos bateaux !")
      try:
         terrainBot[xy[1]][xy[0]] = "**"
      except:
         print("Fail ***")
         print("Error 634")
      print("L'ennemi a tire en "+ chr(uuu[0]+65),uuu[1]+1)
      print("")
      return terrainBot, point, yyy, uuu, tour
   
   elif terrainBot[xy[1]][xy[0]] == "%%":
      print("bruits d\'explosion")
      print("L\'ennemi a eu un de vos bateaux")
      point[0] -= 1
      yyy = True    
      terrainBot[xy[1]][xy[0]] = "##"
      print("")
      print("L'ennemi a tire en "+ chr(uuu[0]+65),uuu[1]+1)
      return terrainBot, point, yyy, uuu, tour
   else: 
      print("...")
      print("Error 651") 
      print("Aucun tir effectue")
   tour += 1
   return terrainBot, point, yyy, uuu, tour
   
#moi


def shoox(T1, uuu, point, e):
   print("activation de shoox")
   c = r.randint(0, 3)
   if e == 20:
      c = 0
   try:
     if c == 0:
       if uuu[0] != 0:
         if T1[uuu[1]][uuu[0]-1] != "**" or T1[uuu[1]][uuu[0]-1] != "##" :
            if T1[uuu[1]][uuu[0]-1] == "%%":
                 a = 1
                 print("Boum !")
                 print("Shoox a eu un des bateaux")
                 T1[uuu[1]][uuu[0]-1] = "##"
                 yyy = True
                 uuu[0]-= 1
                 point[0] -= 1
                 print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])
            else:
               print("Plouf")
               print("Shoox a tire a l'eau")
               T1[uuu[1]][uuu[0]-1] = "**"
               yyy = False
               uuu[0]-= 1
               print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])   
            return T1, uuu, point, yyy	, e
         else:
            if e < 20:
              e += 1
              T1, uuu, point, yyy, e = shoox(T1, uuu, point, e)
              return T1, uuu, point, yyy, e
            e += 1
   except:
         e += 1
         T1, uuu, point, yyy, e = shoox(T1, uuu, point, e)
         return T1, uuu, point, yyy, e
         pass
   if e >= 20:
      c = 1
     
   try:
     if c == 1:
       if uuu[0] != 9:
         if T1[uuu[1]][uuu[0]+1] != "**" or T1[uuu[1]][uuu[0]+1] != "##" :
            if T1[uuu[1]][uuu[0]+1] == "/(" or T1[uuu[1]][uuu[0]+1] == "><":
               print("Plouf")
               print("Shoox a tire a l'eau")
               T1[uuu[1]][uuu[0]+1] = "**"
               yyy = False
               uuu[0]+= 1
               print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])
            elif T1[uuu[1]][uuu[0]+1] == "%%":
              print("Boum !")
              print("Shoox a eu un des bateaux")
              T1[uuu[1]][uuu[0]+1] = "##"
              yyy = True
              uuu[0]+= 1
              point[0] -= 1
              print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])
            else:
              print("Allo ?")
              print("Je suis bien chez la maintenance ?")
          
            return T1, uuu, point, yyy, e
         else:
            if e < 20:
              e += 1
              T1, uuu, point, yyy, e = shoox(T1, uuu, point, e)
              return T1, uuu, point, yyy, e
            e += 1
   except:
        pass
   if e >= 20:
      c = 2
               
   try:
     if c == 2:
       if uuu[1] != 0:
         if T1[uuu[1]-1][uuu[0]] != "**" or T1[uuu[1]-1][uuu[0]] != "##" :
            yyy = False
            if T1[uuu[1]-1][uuu[0]] == "/(" or T1[uuu[1]-1][uuu[0]] == "><":
               print("Plouf")
               print("Shoox a tire a l'eau")
               T1[uuu[1]-1][uuu[0]] = "**"
               uuu[0]-= 1
               print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])
            elif T1[uuu[1]-1][uuu[0]] == "%%":
              print("Boum !")
              print("Shoox a eu un des bateaux")
              T1[uuu[1]-1][uuu[0]] = "##"
              yyy = True
              uuu[1]-= 1
              point[0] -= 1
              print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])
            else:
              print("Allo ?")
              print("Je suis bien chez la maintenance ?")
          
            return T1, uuu, point, yyy, e
         else:
            if e < 20:
              e += 1
              T1, uuu, point, yyy, e = shoox(T1, uuu, point, e)
              return T1, uuu, point, yyy, e
            e += 1
   except:
        pass
   if e >= 20:
      c = 3  
   try:
     if c == 3:
       if uuu[1] != 9:
         if T1[uuu[1]+1][uuu[0]] != "**" or T1[uuu[1]+1][uuu[0]] != "##" :
            if T1[uuu[1]+1][uuu[0]] == "/(" or T1[uuu[1]+1][uuu[0]] == "><":
               print("Plouf")
               print("Shoox a tire a l'eau")
               T1[uuu[1]+1][uuu[0]] = "**"
               yyy = False
               uuu[0]+= 1
               print("Shoox a tire en "+ chr(uuu[0]+65),uuu[1])
            elif T1[uuu[1]+1][uuu[0]] == "%%":
              print("Boum !")
              print("Shoox a eu un des bateaux")
              print("Shoox a tire en "+ chr(uuu[0]+66),uuu[1])
              T1[uuu[1]+1][uuu[0]] = "##"
              yyy = True
              uuu[1]+= 1
              point[0] -= 1
            else:
              print("Allo ?")
              print("Je suis bien chez la maintenance ?")
          
            return T1, uuu, point, yyy, e
         else:
            if e < 20:
              e += 1
              T1, uuu, point, yyy, e = shoox(T1, uuu, point, e)
              return T1, uuu, point, yyy, e
            e += 1
   except:
        e += 1
        T1, uuu, point, yyy, e = shoox(T1, uuu, point, e)
        return T1, uuu, point, yyy, e
        pass
   T1, point, yyy, uuu = Chasse(T1, point)
   return T1, uuu, point, yyy, e
   

print("Voulez vous placez vos bateaux ? (o/n)")
placement = input()
point = [0,0]  
#800
#placement des bateaux
twenty = [0]*5
tweny = [0]*5#bateau ennemis
for loop in range(5):
   if placement == "o":
      terrainJ1, twenty[loop] = bateau(terrainJ1, bateaux[loop], bateaux.index(bateaux[loop]))
   else:
      w = 20
      while w == 20:
        w = 0
        terrainJ1, w, point, twenty[loop] = choix(terrainJ1, bateaux[loop],point, w) 
      point[1] -= bateaux[loop]  
   point[0] += bateaux[loop]
   w = 20
   while w == 20:
      w = 0
      terrainBot, w, point, tweny[loop] = choix(terrainBot, bateaux[loop],point, w)

terrain(terrainJ1)
print("")
print("Ecrivez le niveau de votre adversaire : ",chr(10)+"1",chr(10)+"2")
try	:
   kkk = int(input())
except:
   kkk= 0
print("")
print("Voulez vous jouez a la la vertical(V) ou a l'horizontale(H) ?")
def pou():
   a = input()
   u = True
   if a != "V" and a != "H" and "" :
      try:
         if a[0] == "/":
            u = False
      except:
         u = True
      if u :
         print("")
         print("Ecrivez H ou V (en majuscule)")
         print("")
         a = pou()
   return a
cote = pou()
print("")
w = 0
yyy = False
uuu = [0,0]
jkl= 0
tour = 0


while point[0] > 0 and point[1] > 0: #verification des points
   e = 0
   point, terrainBot, jkl, tweny = chasse(terrainBot, point,jkl, tweny)
   if yyy :
      terrainJ1, uuu, point, yyy, e = shoox(terrainJ1, uuu, point, e)  #tir proche par le bot 
   else :
      if kkk <=1:
         terrainJ1, point, yyy, uuu = Chasse(terrainJ1, point)
      else:
         vide = True
         while vide:
            vide = False 
            try:
               terrainJ1, point,yyy, uuu, tour = difficile(terrainJ1, point, tour)
            except:
               vide = False
         if tour == 20:
            kkk = 0
#tir du bot
   if cote == "H":
         Horizontale(terrainJ1, terrainBot, jkl)
   else:
      terrains(terrainJ1, terrainBot, jkl)
      print("")
      print("")

if point[0] == 0 :
   print(":(")
   print("Dommage ...")
   print("Une autre fois peut-etre ...")
else:
   print(":)")
   print("Bravo !!!")
   print("Vous avez gagne(e)")
   if cote == "H":
     print("                              &&&&&&&                     &&&&&&&   ")
     print("                           &&       &&                  &&       && ")
     print("                         &&         &&                &&         && ")
     print("                         &&                           &&            ")
     print("                         &&                           &&            ")              
     print("                         &&     &&&&&&                &&      &&&&&&")
     print("                         &&         &&                 &&         &&")
     print("                           &&       &&                  &&      &&  ")
     print("                             &&&&&&&     &                &&&&&&    ")
   else:
     print("")
     print("")
print("")

except:
