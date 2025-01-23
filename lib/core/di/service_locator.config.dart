// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:products_screen/feature/products/data/data_source/remote_api_data_source.dart'
    as _i101;
import 'package:products_screen/feature/products/data/data_source/remote_data_source.dart'
    as _i448;
import 'package:products_screen/feature/products/data/repositories/products_repsitory_impl.dart'
    as _i81;
import 'package:products_screen/feature/products/domain/repositories/products_repository.dart'
    as _i78;
import 'package:products_screen/feature/products/domain/use_cases/get_products.dart'
    as _i767;
import 'package:products_screen/feature/products/presentation/cubit/products_cubit.dart'
    as _i168;

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
    gh.singleton<_i448.RemoteDataSource>(() => _i101.RemoteApiDataSource());
    gh.singleton<_i78.ProductsRepository>(
        () => _i81.ProductsRepsitoryImpl(gh<_i448.RemoteDataSource>()));
    gh.singleton<_i767.GetProducts>(
        () => _i767.GetProducts(repository: gh<_i78.ProductsRepository>()));
    gh.singleton<_i168.ProductsCubit>(
        () => _i168.ProductsCubit(gh<_i767.GetProducts>()));
    return this;
  }
}
