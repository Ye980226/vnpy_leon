FILE(REMOVE_RECURSE
  "lib/twsapi.pdb"
  "lib/twsapi.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/twsapi.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
