import 'package:flutter/material.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/general/special_container.dart';
import 'package:knighthood_heroes/general/leading_arrow_builder.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/models/skill.dart';
import 'package:knighthood_heroes/widgets/app_bar_background.dart';
import 'package:knighthood_heroes/general/text_spans.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            SpecialContainer.image(
              imagePath: ImagesHelper.getBackgroundImagePath(EBackground.guildhall),
              oppacity: 1,
            ),
            AppBar(
              leading: const LeadingArrowBuilder(),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.white),
              title: const TextRoundedWithBackground.header('Credits'),
            ),
          ],
        ),
      ),
      body: SpecialContainer.image(
        imagePath: ImagesHelper.getBackgroundImagePath(EBackground.blue),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 15,
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          textSpanBold('Knighthood'),
                          textSpan(' and '),
                          textSpanBold('all the data '),
                          textSpan('are the property of creators of'),
                          textSpanBold(' Knighthood '),
                          textSpan('RPG game: '),
                          textSpanLink('Midoki.com. ', 'https://www.midoki.com/'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 15,
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          textSpan('All '),
                          textSpanBold('Icons '),
                          textSpan(' like '),
                          textSpanImage(Skill.getDebuffImagePath(ESkillDebuff.burn)),
                          textSpan(' or '),
                          textSpanImage(Skill.getDebuffImagePath(ESkillDebuff.poison)),
                          textSpan(' and '),
                          textSpanBold('Hero Avatars '),
                          textSpan('are obtained from wonderful'),
                          textSpanBold(' Knighthood '),
                          textSpan('Wiki: '),
                          textSpanLink('knighhood.fandom.com', 'https://knighthood.fandom.com/wiki/Knighthood_Wiki'),
                          textSpan(' .'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 15,
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          textSpan('All '),
                          textSpanBold('Icons '),
                          textSpan(' like '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.harmsPlayer)),
                          textSpan(' or '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.leechHealthAll)),
                          textSpan(' are customized and created on fantastic page: '),
                          textSpanLink('Game-icons.net', 'https://game-icons.net/'),
                          textSpan(' .'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 15,
                  color: cardBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          textSpanBold('Icons '),
                          textSpan(' like '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.damageSpread)),
                          textSpan(' or '),
                          textSpanImage(Skill.getSkillEffectImagePath(ESkillEffect.damageBackRow)),
                          textSpan(' , '),
                          textSpanBold('App Design, '),
                          textSpan(' and '),
                          textSpanBold('Programming '),
                          textSpan('are made as a labor of love by Petr Zavodny: '),
                          textSpanLink('petrzavodny.com', 'https://www.petrzavodny.com/'),
                          textSpan(' .'),
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
