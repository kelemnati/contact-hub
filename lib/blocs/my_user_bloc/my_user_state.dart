part of 'my_user_bloc.dart';

enum MyUserStatus { success, loading, failure }

class MyUserState extends Equatable {
  final MyUserStatus status;
  final MyUser? user;

  const MyUserState._({
    this.status = MyUserStatus.failure,
    this.user,
  });

  const MyUserState.loading() : this._();

  const MyUserState.success(MyUser myUser)
      : this._(status: MyUserStatus.success, user: myUser);

  const MyUserState.failure() : this._(status: MyUserStatus.failure);

  @override
  List<Object?> get props => [status, user];
}
