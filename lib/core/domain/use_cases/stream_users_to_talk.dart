import '../../../features/chat/domain/entities/user_entity.dart';
import '../repositories/users_repo.dart';

class UsersToTalkTo {
  final UsersRepo usersRepository;

  UsersToTalkTo({required this.usersRepository});

  Stream<List<UserEntity>> call() {
    return usersRepository.streamUsersToTalkStream();
  }
}
