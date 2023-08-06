import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/enums.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/enum_dropdown.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/general/special_container.dart';
import 'package:knighthood_heroes/general/leading_arrow_builder.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';
import 'package:knighthood_heroes/helpers/images_helper.dart';
import 'package:knighthood_heroes/providers/hero_filters_provider.dart';
import 'package:knighthood_heroes/widgets/enemy_type_badge.dart';
import 'package:knighthood_heroes/widgets/filter_options/skill_options.dart';
import 'package:knighthood_heroes/widgets/rarity_badge.dart';
import 'package:knighthood_heroes/widgets/rarity_banner.dart';

class FilterOptionsScreen extends ConsumerStatefulWidget {
  const FilterOptionsScreen({super.key});

  @override
  ConsumerState createState() => _FilterOptionsScreenState();
}

class _FilterOptionsScreenState extends ConsumerState<FilterOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedFilters = ref.watch(heroesFilterProvider);

    Widget getApplyButton() => ElevatedButton(
          onPressed: () => Navigator.pop(context),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(knighhoodTitleColor),
            foregroundColor: MaterialStateProperty.all<Color>(appBarTextColor),
          ),
          child: Text(
            'Apply Filters',
            style: commonTextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Stack(
          children: [
            SpecialContainer.image(
              imagePath: ImagesHelper.getBackgroundImagePath(EBackground.forge),
              oppacity: 1,
            ),
            AppBar(
              leading: const LeadingArrowBuilder(),
              title: const TextRoundedWithBackground.header('Filter Options'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
          ],
        ),
      ),
      body: SpecialContainer.image(
        imagePath: ImagesHelper.getBackgroundImagePath(EBackground.blue),
        child: SingleChildScrollView(
          child: FractionallySizedBox(
            widthFactor: 1,
            child: Transform.scale(
              scale: 0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  getApplyButton(),
                  EnumDropdown<EEnemyType>(
                    'Strong against:',
                    selectedValue: selectedFilters.enemyType,
                    onChanged: (value) => ref.read(heroesFilterProvider.notifier).setEnemyType(value!),
                    enumVaules: EEnemyType.values,
                    element: (value) {
                      return Row(
                        children: [
                          EnemyTypeBadge(value!, size: 30),
                          const SizedBox(width: 5),
                          Text(
                            value.toString().split('.').last.capitalize().insertSpaceForCamelCaseString(),
                            style: GoogleFonts.cabin(color: Colors.white),
                          ),
                        ],
                      );
                    },
                  ),
                  EnumDropdown<ERarity>(
                    'Rarity:',
                    selectedValue: ref.read(heroesFilterProvider).rarity,
                    onChanged: (value) => ref.read(heroesFilterProvider.notifier).setRarity(value!),
                    enumVaules: ERarity.values,
                    element: (value) {
                      if (value == ERarity.none) {
                        return const RarityBadge(ERarity.none,
                            textColor: Colors.white, backgroundColor: knighthoodContentColor);
                      }
                      return RarityBanner(
                        value!,
                        size: 30,
                      );
                    },
                  ),
                  EnumDropdown<EHeroClass>(
                    'Hero Class:',
                    selectedValue: ref.read(heroesFilterProvider).heroClass,
                    onChanged: (value) => ref.read(heroesFilterProvider.notifier).setHeroClass(value!),
                    enumVaules: EHeroClass.values,
                  ),
                  EnumDropdown<EHeroType>(
                    'Hero Type:',
                    selectedValue: ref.read(heroesFilterProvider).heroType,
                    onChanged: (value) => ref.read(heroesFilterProvider.notifier).setHeroType(value!),
                    enumVaules: EHeroType.values,
                  ),
                  const SizedBox(height: 5),
                  const TextRoundedWithBackground.header(
                    'Base skill options:',
                    fontSize: 25,
                  ),
                  SkillOptions(
                    selectedSkillClass: ref.read(heroesFilterProvider).baseSkillClass,
                    selectedSkillEffect: ref.read(heroesFilterProvider).baseSkillEffect,
                    selectedSkillTarget: ref.read(heroesFilterProvider).baseSkillTarget,
                    selectedSkillChanceToDebuff: ref.read(heroesFilterProvider).baseSkillChanceToDebuff,
                    selectedSkillStrongVsDebuff: ref.read(heroesFilterProvider).baseSkillStrongVsDebuff,
                    onSkillClassChanged: (value) => ref.read(heroesFilterProvider.notifier).setBaseSkillClass(value!),
                    onSkillEffectChanged: (value) => ref.read(heroesFilterProvider.notifier).setBaseSkillEffect(value!),
                    onSkillTargetChanged: (value) => ref.read(heroesFilterProvider.notifier).setBaseSkillTarget(value!),
                    onSkillChanceToDebuffChanged: (value) =>
                        ref.read(heroesFilterProvider.notifier).setBaseSkillChanceToDebuff(value!),
                    onSkillStrongVsDebuffChanged: (value) =>
                        ref.read(heroesFilterProvider.notifier).setBaseSkillStrongVsDebuff(value!),
                  ),
                  const SizedBox(height: 5),
                  const TextRoundedWithBackground.header(
                    'Rage skill options:',
                    fontSize: 25,
                  ),
                  SkillOptions(
                    selectedSkillClass: ref.read(heroesFilterProvider).rageSkillClass,
                    selectedSkillEffect: ref.read(heroesFilterProvider).rageSkillEffect,
                    selectedSkillTarget: ref.read(heroesFilterProvider).rageSkillTarget,
                    selectedSkillChanceToDebuff: ref.read(heroesFilterProvider).rageSkillChanceToDebuff,
                    selectedSkillStrongVsDebuff: ref.read(heroesFilterProvider).rageSkillStrongVsDebuff,
                    onSkillClassChanged: (value) => ref.read(heroesFilterProvider.notifier).setRageSkillClass(value!),
                    onSkillEffectChanged: (value) => ref.read(heroesFilterProvider.notifier).setRageSkillEffect(value!),
                    onSkillTargetChanged: (value) => ref.read(heroesFilterProvider.notifier).setRageSkillTarget(value!),
                    onSkillChanceToDebuffChanged: (value) =>
                        ref.read(heroesFilterProvider.notifier).setRageSkillChanceToDebuff(value!),
                    onSkillStrongVsDebuffChanged: (value) =>
                        ref.read(heroesFilterProvider.notifier).setRageSkillStrongVsDebuff(value!),
                  ),
                  getApplyButton(),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
