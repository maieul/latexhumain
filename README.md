# Licence

Ce livre est disponible en version papier sur http://www.atramenta.net/books/latex-sciences-humaines/79.

Il est publié sous licence Creative Commons 3.0 Partage à l'Identique - Paternité

# Amélioration
Si vous avez des idées d'améliorations, merci de 
- soit créer un ticket en vous rendant sur https://github.com/maieul/latexhumain/issues
- soit carrément écrire l'amélioration et la proposer via une "Pull Request". 

# Politique de commit
Pour les personnes ayant accès au dépôt Git, le principe général est : dans master on ne met que de éléments liés à des versions CTAN des packages, et si l'on veut commencer à rédiger avant la sortie officielle, on crée une branche qu'on fusionne ensuite.

# Régles de rédaction
* les exemples -> pas plus de 64 caractères de longueurs
* pour les sources primaires-> mettre le champ usera a 1, pour permettre d'avoir "éd" et pas "dir"
* dans les exemples entre latexcode, ne pas mettre de tabulation, mais 4 espaces
* pas de saut de ligne après les débuts d'environnement, ni avant les fins. 
* Par contre saut de ligne autour de l'environnement
* Ne pas mettre de note de bas de page dans les quotations, les mettre avant.
* Ne pas commencer de ligne par `\cs`, sauf si précédés de deux points (lorsqu'on veut citer une commande à la syntaxe longue). 
* lorsque code trop long dans un texte, mettre un saut de ligne (changement de paragraphe), pas un //
* les renvois internes : les mettre juste après le mot le plus pertinent
* Les indexs : sont construits automatiquement lors des appels à `\cs`, `\package`, `\classe` etc. Attention toutefois :
 * ne pas utiliser ces commandes à l'intérieur d'une commande de titre (bug avec hyperref). Utiliser à la place la commande `\<type>noidx` et indexer ensuite avec `\index[<type>]{<element>}`.
 * Si l'élément commence en début de phrase, pour avoir la majuscule dans le corps du texte mais la miniscule dans l'index, utiliser le premier argument optionnel : `\class[beamer]{Beamer}`.

# Traduction
- Une branche par langue, les fichiers gardent le même nom d'une version à l'autre histoire de faciliter les reports.
- Contacter l'auteur auparavant pour qu'il explique le fonctionnement du code, de git etc., et vous donne des accès

# Pour compiler :

N'oubliez pas que la version stable de septembre 2012 est aussi disponible en PDF sur le site de l'éditeur.

Néanmoins si vous souhaitez faire votre propre compilation :  

- Vous devez avoir installé la police Linux Libertine http://www.linuxlibertine.org/ ainsi que DejaVu http://dejavu-fonts.org/wiki/Main_Page
- Vous devez disposer de Python sur votre ordinateur.
- Vous devez disposer de Minted
- Vous devez si besoin installer Pygmentize (pour la coloration syntaxique) :  sudo easy_install Pygments.

Ensuite avec le Terminal, un simple Make suffit.