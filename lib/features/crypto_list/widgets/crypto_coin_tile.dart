import 'package:auto_route/auto_route.dart';
import 'package:crypto_currency/repositories/crypto_coins/crypto_coins.dart';
import 'package:crypto_currency/router/router.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageURL),
      title: Text(coin.name, 
      style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text('${coin.priceUSD} \$', style: theme.textTheme.labelSmall),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Navigator.of(context).pushNamed(
        //   '/coin', 
        //   arguments: coin
        //   );
        AutoRouter.of(context).push(CryptoCoinRoute(coin: coin));
      },
    );
  }
}