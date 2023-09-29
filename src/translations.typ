#import "types.typ": assert-type

#let translations = (
  "en": (
    "theorem": "Theorem",
    "lemma": "Lemma",
    "corollary": "Corollary",
    "remark": "Remark",
    "proposition": "Proposition",
    "example": "Example",
    "definition": "Definition",
    "proof": "Proof"
  ),
  "de": (
    "theorem": "Satz",
    "lemma": "Lemma",
    "corollary": "Korollar",
    "remark": "Bemerkung",
    "proposition": "Proposition",
    "example": "Beispiel",
    "definition": "Definition",
    "proof": "Beweis"
  ),
  "fr": (
    "theorem": "Théorème",
    "lemma": "Lemme",
    "corollary": "Corollaire",
    "remark": "Remarque",
    "proposition": "Proposition",
    "example": "Exemple",
    "definition": "Définition",
    "proof": "Preuve"
  ),
  "it": (
    "theorem": "Teorema",
    "lemma": "Lemma",
    "corollary": "Corollario",
    "remark": "Osservazione",
    "proposition": "Proposizione",
    "example": "Esempio",
    "definition": "Definizione",
    "proof": "Dimostrazione"
  ),
  "nl": (
    "theorem": "Stelling",
    "lemma": "Lemma",
    "corollary": "Corollarium",
    "remark": "Opmerking",
    "proposition": "Propositie",
    "example": "Voorbeeld",
    "definition": "Definitie",
    "proof": "Bewijs"
  ),
  "ru": (
    "theorem": "Теорема",
    "lemma": "Лемма",
    "corollary": "Следствие",
    "remark": "Замечание",
    "proposition": "Утверждение",
    "example": "Пример",
    "definition": "Определение",
    "proof": "Доказательство"
  )
)

#let get-translation(lang) = {
  assert-type(lang, "lang", str)
  if lang in translations {
    return translations.at(lang)
  } else {
    panic("no translation available for the specified language")
  }
}
