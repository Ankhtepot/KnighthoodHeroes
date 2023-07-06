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
  restoreHealth, // done
  restoreArmor, // done
  dispelBuffs, 
  dispelDebuffs,
  ignoresArmor, // done
  leechHealth, // done
  leechHealthAll, // done
  damagePlayerTarget, // done
  damageBackRow, // done
  damageFrontRow, // done
  damageEnemiesInFront, // done
  damageRandom, // done
  damageAll, // done
  damageSpread, // done
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
