#!/usr/bin/python
# -*- coding: utf-8 -*-

# Ouverture du fichier
import codecs,re
try:
    lecture = codecs.open('principal-cs.ind',encoding='utf-8')
    sortie =[]


#fusion des pages en gras redondante avec pages en maigres
    regexp = "(\\\\hyperpage{(?P<id>[0-9]+)}, \\\\hyperpagetextbf{(?P=id)})" 
    for ligne in lecture:
   
        resultat = re.findall(regexp,ligne)
        if len(resultat) == 1:
            sortie.append(ligne.replace('\hyperpage{'+resultat[0][1]+'}, ',''))
        else:
            sortie.append(ligne)



# Ecriture du nouveau fichier
    lecture.close()
    ecriture = codecs.open('principal-cs.ind',encoding='utf-8',mode='w')
    ecriture.writelines(sortie)
except:
    print ('Erreur dans le script python')