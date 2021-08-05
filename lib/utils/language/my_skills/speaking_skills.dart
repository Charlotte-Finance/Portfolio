import 'package:portfolio/models/language/my_skills.dart';

SpokenLanguage frenchFr = SpokenLanguage(name: "Français", description: "Natif", mark: 5);
SpokenLanguage englishFr = SpokenLanguage(name: "Anglais", description: "Avancé", mark: 4);
SpokenLanguage germanFr = SpokenLanguage(name: "Allemand", description: "Scolaire", mark: 2);

SpokenLanguage frenchEn = SpokenLanguage(name: "French", description: "Native", mark: 5);
SpokenLanguage englishEn = SpokenLanguage(name: "English", description: "Advanced level", mark: 4);
SpokenLanguage germanEn = SpokenLanguage(name: "German", description: "School level", mark: 2);

SpeakingSkillsLanguage speakingSkillsLanguageFr = SpeakingSkillsLanguage(
  title: "Mes compétences linguistiques",
  subTitle: "A titre indicatif",
  languages: [frenchFr, englishFr, germanFr],
);

SpeakingSkillsLanguage speakingSkillsLanguageEn = SpeakingSkillsLanguage(
  title: "My language skills",
  subTitle: "As an indication",
  languages: [frenchEn, englishEn, germanEn],
);
