class UserModel {
  int id;
  String login;
  String email;
  String avatarUrl;
  String location;
  int followers;
  int followings;
  int publicRepo;
  String starts;
  String organizations;
  String reposUrl;
  String bio;

  UserModel(
      {this.id,
        this.login,
        this.email,
        this.avatarUrl,
        this.followers,
        this.followings,
        this.publicRepo,
        this.starts,
        this.organizations,
        this.location,
        this.reposUrl,
        this.bio});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        login: json['login'],
        email: json['email'],
        avatarUrl: json['avatar_url'],
        followers: json['followers'],
        followings: json['following'],
        publicRepo: json['public_repos'],
        organizations: json['organizations_url'],
        location: json['location'],
        reposUrl: json['repos_url'],
        bio: json['bio']);
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'login': login,
    'email': email,
    'avatar_url': avatarUrl,
    'followers': followers,
    'following': followings,
    'public_repos': publicRepo,
    'organizations_url': organizations,
    'location': location,
    'repos_url': reposUrl,
    'bio': bio
  };

  @override
  String toString() {
    return 'User{id: $id, login: $login, email: $email, avatarUrl: $avatarUrl, location: $location, followers: $followers, followings: $followings, publicRepo: $publicRepo, starts: $starts, organizations: $organizations, reposUrl: $reposUrl}';
  }
}
