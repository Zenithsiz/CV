#let transl(..langs) = {
  let key = if text.region == none {
    text.lang
  } else {
    text.lang + "-" + text.region
  }
  langs.at(key)
};

#let format_list(..list) = (
  list
    .pos()
    .join([, ], last: transl(
      en: [, and ],
      pt: [, e ],
    ))
)

#let present = context transl(
  en: [Present],
  pt: [Presente],
)
#let author = context transl(
  en: [Author],
  pt: [Autor],
)
#let technologies = context transl(
  en: [Technologies],
  pt: [Tecnologias],
);
#let skills = context transl(
  en: [Skills],
  pt: [Competências],
)
