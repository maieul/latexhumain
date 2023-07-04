# Licence

Ce livre est disponible en version papier sur http://www.atramenta.net/books/latex-sciences-humaines/79.

Il est publié sous licence Creative Commons 3.0 Partage à l'Identique - Paternité

# Amélioration
Si vous avez des idées d'améliorations, merci de
- soit créer un ticket en vous rendant sur https://github.com/maieul/latexhumain/issues
- soit carrément écrire l'amélioration et la proposer via une "Pull Request".

# Politique de commit
Pour les personnes ayant accès au dépôt Git, le principe général est : dans master on ne met que de éléments liés à des versions CTAN des packages, et si l'on veut commencer à rédiger avant la sortie officielle, on crée une branche qu'on fusionne ensuite.

# Règles de rédaction
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

Ensuite avec le Terminal, un simple `make` suffit.

Au commit 3739195, le 17 mars 2016, la compilation fonctionne avec TeXLive 2015 à jour comprenant les paquets suivants:

````
    book.cls    2014/09/29 v1.4h Standard LaTeX document class
    bk10.clo    2014/09/29 v1.4h Standard LaTeX file (size option)
preambule.tex
preambule/A5.tex
geometry.sty    2010/09/12 v5.6 Page Geometry
  keyval.sty    2014/10/28 v1.15 key=value parser (DPC)
   ifpdf.sty    2011/01/30 v2.3 Provides the ifpdf switch (HO)
  ifvtex.sty    2010/03/01 v1.5 Detect VTeX and its facilities (HO)
 ifxetex.sty    2010/09/12 v0.6 Provides ifxetex conditional
preambule/package.tex
fontspec.sty    2016/02/01 v2.5a Font selection for XeLaTeX and LuaLaTeX
   expl3.sty    2016/01/19 v6377 L3 programming layer (loader)
expl3-code.tex    2016/01/19 v6377 L3 programming layer
l3xdvipdfmx.def
  xparse.sty    2016/01/19 v6377 L3 Experimental document command parser
fontspec-xetex.sty    2016/02/01 v2.5a Font selection for XeLaTeX and LuaLaTeX
 fontenc.sty
  eu1enc.def    2010/05/27 v0.1h Experimental Unicode font encodings
  eu1lmr.fd    2009/10/30 v1.6 Font defs for Latin Modern
xunicode.sty    2011/09/09 v0.981 provides access to latin accents and many oth
er characters in Unicode lower plane
 eu1lmss.fd    2009/10/30 v1.6 Font defs for Latin Modern
graphicx.sty    2014/10/28 v1.0g Enhanced LaTeX Graphics (DPC,SPQR)
graphics.sty    2016/01/03 v1.0q Standard LaTeX Graphics (DPC,SPQR)
    trig.sty    2016/01/03 v1.10 sin cos tan (DPC)
graphics.cfg    2010/04/23 v1.9 graphics configuration of TeX Live
   xetex.def    2015/09/11 v4.06 LaTeX color/graphics driver for XeTeX (TeX Liv
e/RRM/JK)
infwarerr.sty    2010/04/08 v1.3 Providing info/warning/error messages (HO)
 ltxcmds.sty    2011/11/09 v1.22 LaTeX kernel commands for general use (HO)
fontspec.cfg
polyglossia.sty    2015/08/06 v1.42.0 Alternative to Babel for XeLaTeX and LuaL
aTeX
etoolbox.sty    2015/05/04 v2.2 e-TeX tools for LaTeX (JAW)
makecmds.sty    2009/09/03 v1.0a extra command making commands
 xkeyval.sty    2014/12/03 v2.7a package option processing (HA)
 xkeyval.tex    2014/12/03 v2.7a key=value parser (HA)
ifluatex.sty    2010/03/01 v1.3 Provides the ifluatex switch (HO)
gloss-french.ldf    polyglossia: module for french
gloss-english.ldf    polyglossia: module for english
gloss-greek.ldf    polyglossia: module for greek
xgreek-fixes.def
  minted.sty    2015/09/09 v2.1 Yet another Pygments shim for LaTeX
kvoptions.sty    2011/06/30 v3.11 Key value format for package options (HO)
kvsetkeys.sty    2012/04/25 v1.16 Key value parser (HO)
etexcmds.sty    2011/02/16 v1.5 Avoid name clashes with e-TeX commands (HO)
fancyvrb.sty    2008/02/07
   float.sty    2001/11/08 v1.3d Float enhancements (AL)
  ifthen.sty    2014/09/29 v1.1c Standard LaTeX ifthen package (DPC)
    calc.sty    2014/10/28 v4.3 Infix arithmetic (KKT,FJ)
ifplatform.sty    2010/10/22 v0.4 Testing for the operating system
pdftexcmds.sty    2011/11/29 v0.20 Utility functions of pdfTeX for LuaTeX (HO)
catchfile.sty    2011/03/01 v1.6 Catch the contents of a file (HO)
  papier.w18
 xstring.sty    2013/10/13  v1.7c  String manipulations (C Tellechea)
  lineno.sty    2005/11/02 line numbers on paragraphs v4.41
 eu1lmtt.fd    2009/10/30 v1.6 Font defs for Latin Modern
_minted-papier/default.pygstyle
biblatex.sty    2016/03/03 v3.3 programmable bibliographies (PK/JW/AB)
biblatex_.sty    2016/03/03 v3.3 programmable bibliographies (biber) (PK/JW/AB)

  logreq.sty    2010/08/04 v1.0 xml request logger
  logreq.def    2010/08/04 v1.0 logreq spec v1.0
     url.sty    2013/09/16  ver 3.4  Verb mode for urls, etc.
  blx-dm.def
verbose-trad2.dbx
 verbose.dbx
biblatex-dm.cfg
blx-compat.def    2016/03/03 v3.3 biblatex compatibility (PK/JW/AB)
biblatex_.def
standard.bbx    2016/03/03 v3.3 biblatex bibliography style (PK/JW/AB)
authortitle.bbx    2016/03/03 v3.3 biblatex bibliography style (PK/JW/AB)
 verbose.bbx    2016/03/03 v3.3 biblatex bibliography style (PK/JW/AB)
verbose-trad2.cbx    2016/03/03 v3.3 biblatex citation style (PK/JW/AB)
biblatex.cfg
placeins.sty    2005/04/18  v 2.2
   verse.sty    2009/09/04 v2.4a verse typesetting
   xargs.sty    2008/03/22 v1.1  extended macro definitions  (mpg)
  xspace.sty    2014/10/28 v1.13 Space after command names (DPC,MH)
  xcolor.sty    2007/01/21 v2.11 LaTeX color extensions (UK)
   color.cfg    2007/01/18 v1.5 color configuration of teTeX/TeXLive
csquotes.sty    2016/01/31 v5.1g context-sensitive quotations (JAW)
csquotes.def    2016/01/31 v5.1g csquotes generic definitions (JAW)
csquotes.cfg
longtable.sty    2014/10/28 v4.11 Multi-page Table package (DPC)
    tikz.sty    2015/08/07 v3.0.1a (rcs-revision 1.151)
     pgf.sty    2015/08/07 v3.0.1a (rcs-revision 1.15)
  pgfrcs.sty    2015/08/07 v3.0.1a (rcs-revision 1.31)
everyshi.sty    2001/05/15 v3.00 EveryShipout Package (MS)
  pgfrcs.code.tex
 pgfcore.sty    2010/04/11 v3.0.1a (rcs-revision 1.7)
  pgfsys.sty    2014/07/09 v3.0.1a (rcs-revision 1.48)
  pgfsys.code.tex
pgfsyssoftpath.code.tex    2013/09/09  (rcs-revision 1.9)
pgfsysprotocol.code.tex    2006/10/16  (rcs-revision 1.4)
 pgfcore.code.tex
pgfcomp-version-0-65.sty    2007/07/03 v3.0.1a (rcs-revision 1.7)
pgfcomp-version-1-18.sty    2007/07/23 v3.0.1a (rcs-revision 1.1)
  pgffor.sty    2013/12/13 v3.0.1a (rcs-revision 1.25)
 pgfkeys.sty
 pgfkeys.code.tex
 pgfmath.sty
 pgfmath.code.tex
  pgffor.code.tex
    tikz.code.tex
   array.sty    2014/10/28 v2.4c Tabular extension package (FMi)
multirow.sty
mdframed.sty    2013/07/01 1.9b: mdframed
zref-abspage.sty    2012/04/04 v2.24 Module abspage for zref (HO)
zref-base.sty    2012/04/04 v2.24 Module base for zref (HO)
kvdefinekeys.sty    2011/04/07 v1.3 Define keys (HO)
 auxhook.sty    2011/03/04 v1.3 Hooks for auxiliary files (HO)
atbegshi.sty    2011/10/05 v1.16 At begin shipout hook (HO)
needspace.sty    2010/09/12 v1.3d reserve vertical space
md-frame-0.mdf    2013/07/01\ 1.9b: md-frame-0
  framed.sty    2011/10/22 v 0.96: framed or shaded text with page breaks
fancyhdr.sty
subscript.sty
bibleref-french.sty    2012/02/26 v2.3 French translation of the bibleref packa
ge
bibleref.sty    2011/01/19 1.14 (NLCT)
fmtcount.sty    2015/05/05 v3.01
fcprefix.sty    2012/09/28
fcnumparser.sty    2012/09/28
  amsgen.sty    1999/11/30 v2.0 generic functions
fc-english.def    2013/08/17
fc-french.def    2012/10/24
enumitem.sty    2011/09/28 v3.5.2 Customized lists
multicol.sty    2015/08/19 v1.8n multicolumn formatting (FMi)
totpages.sty    2005/09/19 v2.00 Totpages Package (muewi)
indextools.sty    2015/11/22 v1.5.1 Package for typesetting indices in a synchr
onous mode
  xpatch.sty    2012/10/02 v0.3 Extending etoolbox patching commands
reledmac.sty    2016/02/27 v2.8.2 typeset critical edition
  suffix.sty    2006/07/15 1.5a Variant command support
ragged2e.sty    2009/05/21 v2.1 ragged2e Package (MS)
everysel.sty    2011/10/28 v1.2 EverySelectfont Package (MS)
reledpar.sty    2016/03/06 v2.7.1 reledmac extension for parallel texts
preambule/index.tex
hyperref.sty    2012/11/06 v6.83m Hypertext links for LaTeX
hobsub-hyperref.sty    2012/05/28 v1.13 Bundle oberdiek, subset hyperref (HO)
hobsub-generic.sty    2012/05/28 v1.13 Bundle oberdiek, subset generic (HO)
  hobsub.sty    2012/05/28 v1.13 Construct package bundles (HO)
 intcalc.sty    2007/09/27 v1.1 Expandable calculations with integers (HO)
pdfescape.sty    2011/11/25 v1.13 Implements pdfTeX's escape features (HO)
bigintcalc.sty    2012/04/08 v1.3 Expandable calculations on big integers (HO)
  bitset.sty    2011/01/30 v1.1 Handle bit-vector datatype (HO)
uniquecounter.sty    2011/01/30 v1.2 Provide unlimited unique counter (HO)
letltxmacro.sty    2010/09/02 v1.4 Let assignment for LaTeX macros (HO)
 hopatch.sty    2012/05/28 v1.2 Wrapper for package hooks (HO)
xcolor-patch.sty    2011/01/30 xcolor patch
atveryend.sty    2011/06/30 v1.8 Hooks at the very end of document (HO)
refcount.sty    2011/10/16 v3.4 Data extraction from label references (HO)
 hycolor.sty    2011/01/30 v1.7 Color options for hyperref/bookmark (HO)
  pd1enc.def    2012/11/06 v6.83m Hyperref: PDFDocEncoding definition (HO)
hyperref.cfg    2002/06/06 v1.2 hyperref configuration of TeXLive
  hxetex.def    2012/11/06 v6.83m Hyperref driver for XeTeX
   puenc.def    2012/11/06 v6.83m Hyperref: PDF Unicode definition (HO)
stringenc.sty    2011/12/02 v1.10 Convert strings between diff. encodings (HO)
rerunfilecheck.sty    2011/04/15 v1.7 Rerun checks for auxiliary files (HO)
se-ascii-print.def    2011/12/02 v1.10 stringenc: Printable ASCII characters
gloss-hebrew.ldf    polyglossia: module for hebrew
    bidi.sty    2015/12/07 v19.1 Bidirectional typesetting in plain TeX and LaT
eX
   iftex.sty    2013/04/04 v0.2 Provides if(tex) conditional for PDFTeX, XeTeX,
 and LuaTeX
biditools.sty    2015/11/14 v0.8 Programming tools for bidi package
latex-xetex-bidi.def    2015/11/14 v1.2.4 bidi adaptations for `latex.ltx' for
XeTeX engine
footnote-xetex-bidi.def    2015/11/14 v0.9 bidi footnote macros for XeTeX engin
e
book-xetex-bidi.def    2015/11/14 v0.9 bidi adaptations for standard book class
 for XeTeX engine
color-xetex-bidi.def    2013/04/08 v0.2 bidi adaptations for color package for
XeTeX engine
xcolor-xetex-bidi.def    2013/04/08 v0.2 bidi adaptations for xcolor package fo
r XeTeX engine
float-xetex-bidi.def    2013/04/04 v0.2 bidi adaptations for float package for
XeTeX engine
graphicx-xetex-bidi.def    2012/01/01 v0.4 bidi adaptations for graphicx packag
e for XeTeX engine
geometry-xetex-bidi.def    2013/04/01 v0.1 bidi adaptations for geometry packag
e for XeTeX engine
longtable-xetex-bidi.def    2013/04/01 v0.3 bidi adaptations for longtable pack
age for XeTeX engine
hyperref-xetex-bidi.def    2015/11/26 v0.9 bidi adaptations for hyperref packag
e for XeTeX engine
fancyhdr-xetex-bidi.def    2012/04/18 v0.4 bidi adaptations for fancyhdr packag
e for XeTeX engine
framed-xetex-bidi.def    2012/06/05 v0.3 bidi adaptations for framed package fo
r XeTeX engine
pgfcorescopes.code-xetex-bidi.def    2015/11/14 v0.1 bidi adaptations for pgf p
ackage for XeTeX engine
array-xetex-bidi.def    2015/11/07 v0.3 bidi adaptations for array package for
XeTeX engine
mdframed-xetex-bidi.def    2013/09/22 v0.4 bidi adaptations for mdframed packag
e for XeTeX engine
multicol-xetex-bidi.def    2015/11/14 v0.7 bidi adaptations for multicol packag
e for XeTeX engine
ragged2e-xetex-bidi.def    2010/07/25 v0.2 bidi adaptations for ragged2e packag
e for XeTeX engine
loadingorder-xetex-bidi.def    2015/10/16 v0.96 making sure that bidi is the la
st package loaded
hebrewcal.sty    2015/04/17 v2.6 Hebrew calendar for polyglossia (adapted from
hebcal.sty in Babel)
cal-util.def
babel-hebrewalph.def    2010/03/02 Babel definitions for Hebrew numerals
 Adapted from hebrew.ldf (2005/03/30 v2.3h)
 `````

## Installer les dépendances sous Ubuntu/Debian

Pour installer les dépendances nécessaires, il faut installer les paquets suivants, en plus d'une installation **complète et récente de texlive** :

+ fonts-sil-ezra → police pour l'hébreu
+ python-pygments → package pygmentize de python.

Pour les installer facilement :

`sudo apt-get install fonts-sil-ezra python-pygments`


