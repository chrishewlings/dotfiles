extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

function compress_() {
   # Credit goes to: Daenyth
   FILE=$1
   shift
   case $FILE in
      *.tar.bz2) tar cjf $FILE $*  ;;
      *.tar.gz)  tar czf $FILE $*  ;;
      *.tgz)     tar czf $FILE $*  ;;
      *.zip)     zip $FILE $*      ;;
      *.rar)     rar $FILE $*      ;;
      *)         echo "Filetype not recognized" ;;
   esac
}

spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

function bashtips() {
# copyright 2007 - 2010 Christopher Bratusek
cat <<EOF
DIRECTORIES
-----------
~-          Previous working directory
pushd tmp   Push tmp && cd tmp
popd        Pop && cd
GLOBBING AND OUTPUT SUBSTITUTION
--------------------------------
ls a[b-dx]e Globs abe, ace, ade, axe
ls a{c,bl}e Globs ace, able
\$(ls)      \`ls\` (but nestable!)
HISTORY MANIPULATION
--------------------
!!        Last command
!?foo     Last command containing \`foo'
^foo^bar^ Last command containing \`foo', but substitute \`bar'
!!:0      Last command word
!!:^      Last command's first argument
!\$       Last command's last argument
!!:*      Last command's arguments
!!:x-y    Arguments x to y of last command
C-s       search forwards in history
C-r       search backwards in history
LINE EDITING
------------
M-d     kill to end of word
C-w     kill to beginning of word
C-k     kill to end of line
C-u     kill to beginning of line
M-r     revert all modifications to current line
C-]     search forwards in line
M-C-]   search backwards in line
C-t     transpose characters
M-t     transpose words
M-u     uppercase word
M-l     lowercase word
M-c     capitalize word
COMPLETION
----------
M-/     complete filename
M-~     complete user name
M-@     complete host name
M-\$    complete variable name
M-!     complete command name
M-^     complete history
EOF
}