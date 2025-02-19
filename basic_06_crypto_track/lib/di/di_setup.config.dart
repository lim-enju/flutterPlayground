// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:basic_06_crypto_track/data/repository/transaction_repository_impl.dart'
    as _i820;
import 'package:basic_06_crypto_track/domain/repository/transaction_repository.dart'
    as _i547;
import 'package:basic_06_crypto_track/presentation/detail/detail_viewmodel.dart'
    as _i533;
import 'package:basic_06_crypto_track/presentation/main/main_viewmodel.dart'
    as _i218;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i547.TransactionRepository>(
        () => _i820.TransactionRepositoryImpl());
    gh.factory<_i218.MainViewmodel>(
        () => _i218.MainViewmodel(gh<_i547.TransactionRepository>()));
    gh.factory<_i533.DetailViewmodel>(
        () => _i533.DetailViewmodel(gh<_i547.TransactionRepository>()));
    return this;
  }
}
