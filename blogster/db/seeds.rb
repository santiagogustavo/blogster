# CATEGORY
Category.create(name: 'Electronic')
Category.create(name: 'Rock')
Category.create(name: 'Rap/Hip-Hop')

# POST
Post.create(
  title: 'David Guetta - Pop Life',
  content: 'Pop Life is the third studio album released by French DJ David Guetta. It was released in 2007 and produced with Joachim Garraud. Longtime collaborator Chris Willis is the main vocalist; guest vocals are provided by JD Davis, Tara McDonald, Cozi Costi, Juliet Richardson and Thailand. The album has sold 530,000 copies worldwide and 18,000 copies in the United States.',
  category_id: 1
)

Post.create(
  title: 'Post Malone - Stoney',
  content: 'Stoney is the debut studio album by American rapper Post Malone. It was released on December 9, 2016, by Republic Records. The album features guest appearances from Justin Bieber, Kehlani, Quavo and 2 Chainz. The production on the album was handled by Metro Boomin, Vinylz, Frank Dukes, Illangelo, Charlie Handsome, Rex Kudo and Foreign Teck, among others.[1][2][3] The album debuted at number six on the US Billboard 200 and later reached number four. Stoney was certified double Platinum by the Recording Industry Association of America (RIAA).',
  category_id: 3
)
