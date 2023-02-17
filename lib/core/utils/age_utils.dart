String ageUtils(int? age) {
  if (age == null) return '';
  if (age < 20) {
    return '$age лет';
  } else if (age % 10 == 0 || age % 5 == 0 || age % 10 > 5) {
    return '$age лет';
  } else if (age % 10 == 1) {
    return '$age год';
  }

  return '$age года';
}
