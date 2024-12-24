import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

void setupDependencyInjector({bool loggerAPI = false}) {
  // injector.registerFactory<IRestClient>(() {
  //   final instance = RestClientDioImpl(
  //     dio: DioFactory.dio(),
  //     logger: LoggerAppLoggerImpl(),
  //   );

  //   instance.addInterceptors(
  //     AuthInterceptor(sessionService: injector<SessionService>()),
  //   );

  //   if (loggerAPI) {
  //     instance.addInterceptors(ClientInterceptorLoggerImpl());
  //   }

  //   return instance;
  // });

  // //SESSION Service
  // injector.registerFactory<SessionService>(
  //   () => SessionService(
  //     sharedPreferences: SharedPreferencesImpl(),
  //   ),
  // );

  // // AUTH FEATURE
  // injector.registerFactory<AuthRemoteDatasource>(
  //   () => AuthRemoteDatasource(
  //     restClient: injector<IRestClient>(),
  //   ),
  // );
  // injector.registerFactory<IAuthRepository>(
  //   () => AuthRepositoryImpl(
  //     authRemoteDatasource: injector<AuthRemoteDatasource>(),
  //   ),
  // );
  // injector.registerFactory<PetRemoteDatasource>(
  //   () => PetRemoteDatasource(
  //     restClient: injector<IRestClient>(),
  //   ),
  // );
  // injector.registerFactory<IPetRepository>(
  //   () => PetRepositoryImpl(datasource: injector<PetRemoteDatasource>()),
  // );
  // injector.registerLazySingleton(
  //   () => AuthViewmodel(
  //     signUpUsecase: SignUpUsecase(
  //       authRepository: injector<IAuthRepository>(),
  //     ),
  //     loginUsecase: LoginUsecase(
  //       authRepository: injector<IAuthRepository>(),
  //       sessionService: injector<SessionService>(),
  //     ),
  //   ),
  // );
  // injector.registerLazySingleton(
  //   () => HomeViewmodel(
  //     getPetUsecase: GetPetUsecase(
  //       petRepository: injector<IPetRepository>(),
  //     ),
  //     logoutUsecase: LogoutUsecase(
  //       sessionService: injector<SessionService>(),
  //     ),
  //   ),
  // );
}
