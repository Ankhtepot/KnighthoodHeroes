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
  fillsRage,
  harmsPlayer,
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
  alchemist,
  hunter,
  mage,
  rogue,
  warrior,
}

enum EHeroType {
  none,
  dark,
  champion,
  chaotic,
  holy,
  lawful,
  logical,
  maniacal,
  maverick,
  rebel,
  valiant,
}

enum ESortType {
  none,
  nameAZ,
  nameZA,
  enemyType,
  rarityAsc,
  rarityDesc,
  heroClassAZ,
  heroClassZA,
  heroTypeAZ,
  heroTypeZA,
}
