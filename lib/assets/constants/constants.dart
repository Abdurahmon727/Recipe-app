import 'dart:math';

final keys = [
  '01a8c64100a84f2d9dc0f62bbd9d6fa6',
  '48581b7bb9e64c64847e5bdd0c95d01c',
  '4a6b2937c0634416b84625484afc52cb',
  '6f60aa14a87d4e52885893fd2ff19c33',
  '5148fc322547427786ac6a3ee4175919',
  '0c2cfe4866164b8db2fd78a295dd0ca2',
  'c3e7ee34a6fe46d2b4941cc4136eb5be',
  '2f1f9fb5ba814e77b5d9c1be9b32ac78',
  '2a5e14fde87e48e8a266680987243770',
  'd85a3661a88d4b32b4bcb50698f116b7',
];
final apiKey = keys[Random().nextInt(keys.length)];

abstract class AppConstants {}
