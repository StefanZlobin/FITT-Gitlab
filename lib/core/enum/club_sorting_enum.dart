enum ClubSortingEnum {
  nearest,
  highRating,
  alphabet;

  String sortingToString(ClubSortingEnum sorting) {
    switch (sorting) {
      case ClubSortingEnum.nearest:
        return 'Ближайшие ко мне клубы';
      case ClubSortingEnum.highRating:
        return 'Высокий рейтинг клуба';
      case ClubSortingEnum.alphabet:
        return 'По алфавиту';
    }
  }

  String convertSortingToField(ClubSortingEnum sorting) {
    switch (sorting) {
      case ClubSortingEnum.alphabet:
        return 'label';
      case ClubSortingEnum.highRating:
        return 'rating';
      case ClubSortingEnum.nearest:
        return 'distance';
    }
  }
}
