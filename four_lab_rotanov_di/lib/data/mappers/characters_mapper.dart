import 'package:first_lab_rotanov_di/data/dtos/characters_dto.dart';
import 'package:first_lab_rotanov_di/domain/models/card.dart';

const _imagePlaceHolder =
    'https://vyatkomplekt.ru/images/stories/virtuemart/product/nofoto_31.jpg';

extension CharactersDataDtoToModel on CharactersDataDto {
  CardData toDomain() => CardData(attributes?.name ?? 'UNKNOWN',
      imageUrl: attributes?.image ?? _imagePlaceHolder,
      descriptionText:
          _makeDescriptionText(attributes?.born, attributes?.died));
}

String _makeDescriptionText(String? born, String? died) {
  return born != null && died != null
      ? '$born - $died'
      : born != null
          ? 'born: $born'
          : died != null
              ? 'died: $died'
              : '';
}
