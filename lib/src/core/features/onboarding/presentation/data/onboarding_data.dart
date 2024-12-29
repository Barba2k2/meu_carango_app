import 'package:design_system/design_system.dart';

class OnboardingData {
  final String lightImage;
  final String darkImage;
  final String title;
  final String description;

  const OnboardingData({
    required this.lightImage,
    required this.darkImage,
    required this.title,
    required this.description,
  });
}

final List<OnboardingData> onboardingPages = [
  const OnboardingData(
    lightImage: AppImage.onboarding1,
    darkImage: AppImage.onboardingBlack1,
    title: 'Organização descomplicada',
    description:
        'Seja bem-vindo a Meu Carango, o aplicativo parceiro para organizar seus veículos.',
  ),
  const OnboardingData(
    lightImage: AppImage.onboarding2,
    darkImage: AppImage.onboardingBlack2,
    title: 'Controle despesas e manutenções',
    description:
        'Cadastre despesas, abastecimentos, receitas e manutenções. Tudo na palma da sua mão.',
  ),
  const OnboardingData(
    lightImage: AppImage.onboarding3,
    darkImage: AppImage.onboardingBlack3,
    title: 'Fique despreocupado',
    description:
        'Nós calculamos o consumo médio de seu veículo na ponta do lápis, traremos relatórios importantes sobre suas finanças e também te notificamos de manutenções a serem realizadas.',
  ),
];
