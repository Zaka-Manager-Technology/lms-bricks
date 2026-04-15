void main() {
  group('Validate offer schema', () {
    test('should validate offer with valid data', () {
      final validationResult = validateOffer({'amount': 1000, 'term': 12});
      expect(validationResult.isValid, isTrue);
    });
  });
}
