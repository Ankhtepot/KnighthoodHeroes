import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/gradient_container.dart';
import 'package:knighthood_heroes/general/leading_arrow_builder.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/widgets/app_bar_background.dart';
import 'package:knighthood_heroes/general/text_spans.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingArrowBuilder(),
        title: const Text('Credits', style: TextStyle(color: appBarTextColor, fontWeight: FontWeight.bold)),
        flexibleSpace: AppBarBackground(colors: appBarGradientColors),
      ),
      body: SpecialContainer.linearGradient(
        gradientColors: backgroundGradientColors,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  color: Colors.lightBlue[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          textSpanBold('Knighthood'),
                          const TextSpan(text: ' and '),
                          textSpanBold('all the data '),
                          const TextSpan(text: 'are the property of creators of'),
                          textSpanBold(' Knighthood '),
                          const TextSpan(text: 'RPG game: '),
                          textSpanLink('Midoki.com. ', 'https://www.midoki.com/'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          const TextSpan(text: 'All '),
                          textSpanBold('Icons '),
                          const TextSpan(text: ' like '),
                          textSpanImage(Skill.getDebuffImagePath(ESkillDebuff.burn)),
                          const TextSpan(text: ' or '),
                          textSpanImage(Skill.getDebuffImagePath(ESkillDebuff.poison)),
                          const TextSpan(text: ' and '),
                          textSpanBold('Hero Avatars '),
                          const TextSpan(text: 'are obtained from wonderful'),
                          textSpanBold(' Knighthood '),
                          const TextSpan(text: 'Wiki: '),
                          textSpanLink('knighhood.fandom.com', 'https://knighthood.fandom.com/wiki/Knighthood_Wiki'),
                          const TextSpan(text: ' .'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          const TextSpan(text: 'All '),
                          textSpanBold('Icons '),
                          const TextSpan(text: ' like '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.harmsPlayer)),
                          const TextSpan(text: ' or '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.leechHealthAll)),
                          const TextSpan(text: ' are customized and created on fantastic page: '),
                          textSpanLink('Game-icons.net', 'https://game-icons.net/'),
                          const TextSpan(text: ' .'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          textSpanBold('Icons '),
                          const TextSpan(text: ' like '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.damageSpread)),
                          const TextSpan(text: ' or '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.damageBackRow)),
                          const TextSpan(text: ' , '),
                          textSpanBold('App Design, '),
                          const TextSpan(text: ' and '),
                          textSpanBold('Programming '),
                          const TextSpan(text: 'are made as a labor of love by Petr Zavodny: '),
                          textSpanLink('petrzavodny.com', 'https://www.petrzavodny.com/'),
                          const TextSpan(text: ' .'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
