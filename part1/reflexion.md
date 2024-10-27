On a :

Un pattern cible t
Une liste de patterne pl

On veut verifier que la liste de patterne recouvre le patterne cible

Algorithme
pour tout p dans pl
    Si p recouvre t alors rendre vrai
    sinon si p couvre en partie t alors exploser t et enlever les parties couvertes
fin pour
rendre faux

