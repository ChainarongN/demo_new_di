import 'package:demo_fuc/repositorys/login/i_login_repository.dart';
import 'package:injectable/injectable.dart';

@Environment("dev")
@Injectable(as: ILoginRepository)
class DevLoginRepository implements ILoginRepository {
  @override
  getIncrement() => 100;
}
