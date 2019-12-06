source ~/.profile
source ~/.bash/smiley
source ~/.bash/config
# source ~/.bash/paths
# source ~/.bash/aliases
# source ~/.bash/completions
# source ~/.bash/scm_info/scm

# execute initializers for version managers
for file in ~/.version-managers/*; do
  source $file
done

# aliases
for file in ~/.aliases/*; do
  source $file
done
