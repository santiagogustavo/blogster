# USER
User.create(
  image: Rails.root.join('public/uploads/user/image/1/avatar.jpg').open,
  name: 'Postmaster',
  email: 'post@master.com',
  bio: 'Hello, human',
  password: 'verysecret',
  password_confirmation: 'verysecret'
)

User.create(
  image: Rails.root.join('public/uploads/user/image/2/avatar.jpg').open,
  name: 'Fantano',
  email: 'theneedledrop@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
)

User.create(
  image: Rails.root.join('public/uploads/user/image/3/avatar.png').open,
  name: 'Damon',
  email: 'albarn@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
)

# CATEGORY
Category.create(name: 'Electronic')
Category.create(name: 'Rock')
Category.create(name: 'Rap/Hip-Hop')
Category.create(name: 'Vaporwave')

# POST
Post.create(
  title: 'David Guetta - Pop Life',
  content: 'Pop Life is the third studio album released by French DJ David Guetta. It was released in 2007 and produced with Joachim Garraud. Longtime collaborator Chris Willis is the main vocalist; guest vocals are provided by JD Davis, Tara McDonald, Cozi Costi, Juliet Richardson and Thailand. The album has sold 530,000 copies worldwide and 18,000 copies in the United States.',
  image: Rails.root.join('public/uploads/post/image/1/cover.jpg').open,
  category_id: 1,
  user_id: 1
)

Post.create(
  title: 'Post Malone - Stoney',
  content: 'Stoney is the debut studio album by American rapper Post Malone. It was released on December 9, 2016, by Republic Records. The album features guest appearances from Justin Bieber, Kehlani, Quavo and 2 Chainz. The production on the album was handled by Metro Boomin, Vinylz, Frank Dukes, Illangelo, Charlie Handsome, Rex Kudo and Foreign Teck, among others.[1][2][3] The album debuted at number six on the US Billboard 200 and later reached number four. Stoney was certified double Platinum by the Recording Industry Association of America (RIAA).',
  image: Rails.root.join('public/uploads/post/image/2/cover.jpg').open,
  category_id: 3,
  user_id: 1
)

Post.create(
  title: 'Marmozets - Knowing What You Know Now',
  content: 'Marmozets’ attempts to bring math-rock to the masses is what’s made them so appealing. Their complex, time signature-hopping riffs and rebellious, catchy lyrics help the Yorkshire quintet stand out as a band who refuse to be pigeonholed. Four years after ‘The Weird And Wonderful Marmozets’, they’re back with ‘Knowing What You Know Now’. They’re still genre-twisting, but their focus has shifted slightly from complexity to short, punchy riffs that recall some of the bands that producer Gil Norton has worked with previously: Pixies, Foo Fighters, The Distillers.',
  image: Rails.root.join('public/uploads/post/image/3/cover.jpg').open,
  category_id: 2,
  user_id: 1
)

Post.create(
  title: 'Blur - Blur: The Best Of',
  content: 'Blur: The Best Of is a greatest hits compilation album by English Britpop band Blur, first released in late 2000 and is the final Blur album by Food Records. It was released on CD, cassette tape, MiniDisc, double 12" vinyl record, DVD and VHS. The CD album includes 17 of Blur\'s 23 singles from 1990 to 2000, plus non-single, "This Is a Low". A special edition of the CD version included a live CD.',
  image: Rails.root.join('public/uploads/post/image/4/cover.jpg').open,
  category_id: 2,
  user_id: 1
)

Post.create(
  title: 'Gorillaz - Demon Days',
  content: 'Demon Days is the second studio album by British virtual band Gorillaz, released on 11 May 2005 in Japan and on 23 May internationally by Parlophone Records and in the United States by Virgin Records. The album features contributions from De La Soul, Neneh Cherry, Martina Topley-Bird, Roots Manuva, MF Doom, Ike Turner, Bootie Brown of the Pharcyde, Shaun Ryder, Dennis Hopper, the London Community Gospel Choir, and a children\'s choir. Frontman Damon Albarn brought in Danger Mouse as producer.',
  image: Rails.root.join('public/uploads/post/image/5/cover.jpg').open,
  category_id: 3,
  user_id: 1
)

Post.create(
  title: 'Sam Paganini - Satellite',
  content: 'Foremost international techno outlet Drumcode is delighted to announce the release of its next full-length album, \'Satellite\', by enduring Italian techno talent Sam Paganini. Though he has been active since the mid nineties, recent years have been hugely successful for Sam, with searing techno EPs coming on revered labels such as Riche Hawtin\'s Plus8, Sven Vath\'s Cocoon and of course, Adam Beyer\'s Drumcode.',
  image: Rails.root.join('public/uploads/post/image/6/cover.jpg').open,
  category_id: 1,
  user_id: 1
)

Post.create(
  title: 'Royal Blood - How Did We Get So Dark?',
  content: 'How Did We Get So Dark? is the second studio album by British rock duo Royal Blood. The album was released by Warner Bros. Records on 16 June 2017. The album is considered by most critics to be compositionally similar to the band\'s breakthrough debut album[citation needed]; both albums are stylistically very similar, with Kerr\'s bass serving as the music\'s focal point.',
  image: Rails.root.join('public/uploads/post/image/7/cover.jpg').open,
  category_id: 2,
  user_id: 1
)

Post.create(
  title: 'Death From Above 1979 - You\'re A Woman, I\'m A Machine',
  content: 'You\'re a Woman, I\'m a Machine is the debut studio album by Canadian rock duo Death from Above (then known as Death from Above 1979). It was released October 26, 2004, through Last Gang Records. The album was produced by Al-P who would later work alongside Jesse F. Keeler in the electronic music duo MSTRKRFT.',
  image: Rails.root.join('public/uploads/post/image/8/cover.jpg').open,
  category_id: 2,
  user_id: 1
)

Post.create(
  title: 'Macintosh Plus - Floral Shoppe',
  content: 'Floral Shoppe (Japanese: フローラルの専門店 Hepburn: Furōraru no Senmon-ten) is a studio album by the American electronic musician Vektroid (under the one-time alias Macintosh Plus), released on December 9, 2011 by the independent record label Beer on the Rug. It was one of the first releases of the vaporwave microgenre to gain popular recognition on the Internet.',
  image: Rails.root.join('public/uploads/post/image/9/cover.jpg').open,
  category_id: 4,
  user_id: 2
)

# COMMENT
Comment.create(
  content: 'A decent to strong 8/10',
  post_id: 2,
  user_id: 2
)

5.times do
  Comment.create(
    content: 'It\'s coming up',
    post_id: 5,
    user_id: 3
  )
end

Comment.create(
  content: 'It\'s there',
  post_id: 5,
  user_id: 3
)
