import 'package:design_system/design_system.dart';

class OnboardingData {
  final String image;
  final String title;
  final String description;

  const OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingData> onboardingPages = [
  const OnboardingData(
    image: AppImage.onboarding1,
    title: 'Organização descomplicada',
    description:
        'Seja bem-vindo a Meu Carango, o aplicativo parceiro para organizar seus veículos.',
  ),
  const OnboardingData(
    image: AppImage.onboarding2,
    title: 'Controle despesas e manutenções',
    description:
        'Cadastre despesas, abastecimentos, receitas e manutenções. Tudo na palma da sua mão.',
  ),
  const OnboardingData(
    image: AppImage.onboarding3,
    title: 'Fique despreocupado',
    description:
        'Nós calculamos o consumo médio de seu veículo na ponta do lápis, traremos relatórios importantes sobre suas finanças e também te notificamos de manutenções a serem realizadas.',
  ),
];
