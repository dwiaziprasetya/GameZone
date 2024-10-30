class GameModel {
  String name;
  String imageAsset;
  String imageDetailAsset;
  String publisher;
  String genre;
  String description;
  List<String> imageUrls;

  GameModel({
    required this.name,
    required this.imageAsset,
    required this.imageDetailAsset,
    required this.publisher,
    required this.genre,
    required this.description,
    required this.imageUrls,
  });
}

var gameModelData = [
  GameModel(
    name: 'Ghost of Tsushima',
    imageAsset: 'assets/images/poster_ghost_of_tsushima.jpg',
    imageDetailAsset: 'assets/images/image_detail_ghost_of_tsushima.jpg',
    publisher: 'PlayStation',
    description:
        'As the island burns in the wake of the first wave of the Mongol assault, courageous samurai warrior Jin Sakai stands resolute. As one of the last surviving members of his clan, Jin is resolved to do whatever it takes, at any cost, to protect his people and reclaim his home. He must set aside the traditions that have shaped him as a warrior to forge a new path, the path of the Ghost, and wage an unconventional war for the freedom of Tsushima.',
    imageUrls: [
      'assets/images/image_snapshot_ghost_of_tsushima_1.jpg',
      'assets/images/image_snapshot_ghost_of_tsushima_2.jpg',
      'assets/images/image_snapshot_ghost_of_tsushima_3.jpg',
    ],
    genre: 'Action | Adventure | Open World',
  ),
  GameModel(
    name: 'Black Myth Wukong',
    imageAsset: 'assets/images/poster_black_myth_wukong.jpg',
    imageDetailAsset: 'assets/images/image_detail_black_myth_wukong.jpg',
    publisher: 'Game Science',
    description:
        'Black Myth: Wukong is an action RPG rooted in Chinese mythology. The story is based on Journey to the West, one of the Four Great Classical Novels of Chinese literature. You shall set out as the Destined One to venture into the challenges and marvels ahead, to uncover the obscured truth beneath the veil of a glorious legend from the past.',
    imageUrls: [
      'assets/images/image_snapshot_black_myth_wukong_1.jpg',
      'assets/images/image_snapshot_black_myth_wukong_2.jpg',
      'assets/images/image_snapshot_black_myth_wukong_3.jpg',
    ],
    genre: 'Action | RPG | Fantasy',
  ),
  GameModel(
    name: 'Elden Ring',
    imageAsset: 'assets/images/poster_elden_ring.jpg',
    imageDetailAsset: 'assets/images/image_detail_elden_ring.jpg',
    publisher: 'FromSoftware',
    description:
        'Combat in ELDEN RING is simple to learn yet offers hidden depths of mastery. As you seek to become the Elden Lord, you’ll need to explore the balance between attacking and avoiding damage, use a wide variety of weapons, spells, & summons, and perfect your timing to take advantage of your opponents’ weaknesses.',
    imageUrls: [
      'assets/images/image_snapshot_elden_ring_1.jpg',
      'assets/images/image_snapshot_elden_ring_2.jpg',
      'assets/images/image_snapshot_elden_ring_3.jpg',
    ],
    genre: 'Action | RPG | Open World',
  ),
  GameModel(
    name: 'Ratchet & Clank: Rift Apart',
    imageAsset: 'assets/images/poster_ratchet_and_clank_rift_apart.jpg',
    imageDetailAsset: 'assets/images/image_detail_ratchet_and_clank.jpg',
    publisher: 'PlayStation',
    description:
        'Go dimension-hopping with Ratchet and Clank as they venture onto a PC near you for the very first time. Help them take on an evil emperor from another reality as you jump between action-packed worlds and beyond.',
    imageUrls: [
      'assets/images/image_snapshot_ratchet_and_clank_1.jpg',
      'assets/images/image_snapshot_ratchet_and_clank_2.jpg',
      'assets/images/image_snapshot_ratchet_and_clank_3.jpg',
    ],
    genre: 'Action | Adventure | Platformer',
  ),
  GameModel(
    name: 'EA Sport FC 25',
    imageAsset: 'assets/images/poster_fc_25.jpg',
    imageDetailAsset: 'assets/images/image_detail_fc_25.jpg',
    publisher: 'Electronic Arts',
    description:
        'EA SPORTS FC™ 25 gives you more ways to win for the club. Team up with friends in your favourite modes with the new 5v5 Rush, and manage your club to victory as FC IQ delivers more tactical control than ever before.',
    imageUrls: [
      'assets/images/image_snapshot_ea_fc_25_1.jpg',
      'assets/images/image_snapshot_ea_fc_25_2.jpg',
      'assets/images/image_snapshot_ea_fc_25_3.jpg',
    ],
    genre: 'Sports | Simulation | Multiplayer',
  ),
  GameModel(
    name: 'God of War Ragnarok',
    imageAsset: 'assets/images/poster_god_of_war_ragnarok.jpg',
    imageDetailAsset: 'assets/images/image_detail_god_of_war_ragnarok.jpg',
    publisher: 'PlayStation',
    description:
        'God of War Ragnarök is an action-adventure game where players take the role of Kratos and his son as they embark on a quest to prevent the coming of Ragnarök. Players explore the Nine Realms, battling enemies in close-up, hand-to-hand combat against human-like raiders and fantastical creatures.',
    imageUrls: [
      'assets/images/image_snapshot_god_of_war_ragnarok_1.jpg',
      'assets/images/image_snapshot_god_of_war_ragnarok_2.jpg',
      'assets/images/image_snapshot_god_of_war_ragnarok_3.jpg',
    ],
    genre: 'Action | Adventure | Fantasy',
  ),
  GameModel(
    name: 'The Last of Us',
    imageAsset: 'assets/images/poster_the_last_of_us.jpg',
    imageDetailAsset: 'assets/images/image_detail_the_last_of_us.jpg',
    publisher: 'PlayStation',
    description:
        'In a ravaged civilization, where infected and hardened survivors run rampant, Joel, a weary protagonist, is hired to smuggle 14-year-old Ellie out of a military quarantine zone. However, what starts as a small job soon transforms into a brutal cross-country journey.',
    imageUrls: [
      'assets/images/image_snapshot_the_last_of_us_1.jpg',
      'assets/images/image_snapshot_the_last_of_us_2.jpg',
      'assets/images/image_snapshot_the_last_of_us_3.jpg',
    ],
    genre: 'Action | Adventure | Survival',
  ),
];
