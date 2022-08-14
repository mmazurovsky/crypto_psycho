enum SelectedCoin {
  bitcoin,
  ethereum,
  solana,
  polkadot,
  cardano,
}

enum SelectedFiat { usd }

extension SelectedCoinsExtension on SelectedCoin {
  String get id {
    if (this == SelectedCoin.bitcoin ||
        this == SelectedCoin.ethereum ||
        this == SelectedCoin.solana ||
        this == SelectedCoin.polkadot ||
        this == SelectedCoin.cardano) {
      return this.name.toLowerCase();
    } else {
      throw Exception('Unknown coin');
    }
  }

  String get name {
    if (this == SelectedCoin.bitcoin) {
      return 'Bitcoin';
    } else if (this == SelectedCoin.ethereum) {
      return 'Ethereum';
    } else if (this == SelectedCoin.solana) {
      return 'Solana';
    } else if (this == SelectedCoin.polkadot) {
      return 'Polkadot';
    } else if (this == SelectedCoin.cardano) {
      return 'Cardano';
    } else {
      throw Exception('Unknown coin');
    }
  }
}

extension SelectedFiatExtension on SelectedFiat {
  String get name {
    if (this == SelectedFiat.usd) {
      return 'usd';
    } else {
      throw Exception('Unknown fiat');
    }
  }
}
