enum EEnemyType {
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
  common,
  rare,
  epic,
  legendary,
  unique,
  mythic,
}

enum ESkillClass {
  heal,
  damage,
  healAndDamage,
}

enum ESkillEffect {
  restoreHealth, // done
  restoreArmor, // done
  leechHealth, // done
  leechHealthAll, // done
  damagePlayerTarget, // done
  damageBackRow, // done
  damageFrontRow, // done
  damageEnemiesInFront, // done
  damageRandom, // done
  damageAll, // done
  damageSpread, // done
  dispelBuffs, 
  dispelDebuffs,
  ignoresArmor, // done
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
  warrior,
  mage,
  rogue,
  alchemist,
  hunter,
}

enum EHeroType {
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
