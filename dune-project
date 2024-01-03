(lang dune 3.12)

(name mecab)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Haoxuan (Aaron) Yue")

(maintainers "yuehaoxuanar@yahoo.com.sg")

(license BSD)

(documentation https://url/to/documentation)

(package
 (name mecab)
 (synopsis "Bindings to the mecab library")
 (description "New bindings to the mecab library using Ctypes and stub generation")
 (depends ocaml dune ctypes)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
