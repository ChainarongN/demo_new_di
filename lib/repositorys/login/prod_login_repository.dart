import 'package:demo_fuc/repositorys/login/i_login_repository.dart';
import 'package:injectable/injectable.dart';

@Environment("prod")
@Injectable(as: ILoginRepository)
class ProdLoginRepository implements ILoginRepository {
  @override
  getIncrement() => 50;
}
