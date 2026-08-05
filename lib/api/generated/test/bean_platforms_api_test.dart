import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for BeanPlatformsApi
void main() {
  final instance = FirelaApi().getBeanPlatformsApi();

  group(BeanPlatformsApi, () {
    // Create a new platform
    //
    //Future platformControllerCreate(CreatePlatformDto createPlatformDto) async
    test('test platformControllerCreate', () async {
      // TODO
    });

    // Delete a platform
    //
    //Future platformControllerDelete(String id) async
    test('test platformControllerDelete', () async {
      // TODO
    });

    // Get all platforms with statistics
    //
    //Future platformControllerFindAll() async
    test('test platformControllerFindAll', () async {
      // TODO
    });

    // Get platform list for current user
    //
    //Future<BuiltList<PlatformListItemDto>> platformControllerGetPlatformList() async
    test('test platformControllerGetPlatformList', () async {
      // TODO
    });

    // Match platforms by name or alias
    //
    //Future<PlatformMatchResponseDto> platformControllerMatchPlatforms(String q, { String region }) async
    test('test platformControllerMatchPlatforms', () async {
      // TODO
    });

    // Update a platform
    //
    //Future platformControllerUpdate(String id, UpdatePlatformDto updatePlatformDto) async
    test('test platformControllerUpdate', () async {
      // TODO
    });

  });
}
