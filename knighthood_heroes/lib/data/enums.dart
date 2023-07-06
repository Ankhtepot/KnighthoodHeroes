enum EEnemyType {
  none,
  beast,
  cult,
  demon,
  goblin,
  golem,
  militia,
  outlaw,
  troll,
  undead,
}

enum ERarity {
  none,
  common,
  rare,
  epic,
  legendary,
  unique,
  mythic,
}

enum ESkillClass {
  none,
  heal,
  damage,
  healAndDamage,
}

enum ESkillEffect {
  none,
  restoreHealth,
  restoreArmor,
  dispelBuffs,
  dispelDebuffs,
  ignoresArmor,
  leechHealth,
  leechHealthAll,
  damagePlayerTarget,
  damageBackRow,
  damageFrontRow,
  damageEnemiesInFront,
  damageRandom,
  damageAll,
  damageSpread,
}

enum ESkillDebuff {
  none,
  poison,
  acid,
  unfocus,
  protect,
  burn,
  weaken,
  stun,
  dispel,
  regenerate,
  expose,
  freeze,
  delay,
  armor,
  focus,
}

enum EHeroClass {
  none,
  warrior,
  mage,
  rogue,
  alchemist,
  hunter,
}

enum EHeroType {
  none,
  dark,
  logical,
  chaotic,
  valiant,
  holy,
  lawful,
  maniacal,
  champion,
  rebel,
  maverick,
}

enum ESortType {
  none,
  nameAZ,
  nameZA,
  rarityAsc,
  rarityDesc,
  heroClassAZ,
  heroClassZA,
  heroTypeAZ,
  heroTypeZA,
  enemyType,
}
