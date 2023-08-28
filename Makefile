# Codegen
codegen:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

# Codegen watch
cgw:
	fvm flutter packages pub run build_runner watch --delete-conflicting-outputs
# Runs pub get
pg:
	fvm flutter pub get
# Spider -> https://pub.dev/packages/spider
spider:
	spider build