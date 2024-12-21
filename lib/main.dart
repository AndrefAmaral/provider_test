import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/providers/counter_provider.dart';
import 'package:provider_flutter/providers/user_provider.dart';
import 'package:provider_flutter/skeleton.dart';

/*
1- Adicione a dependência 
2- Criar um modelo. Ex.: Class provider (extends ChangeNotifier, notifylisteners)
3- Configurar o provider no arquivo main. Multiprovider
4- .watch (listen to changes)

Usado para escutar mudanças no estado. Quando você usa watch, o widget é 
reconstruído sempre que o valor do Provider muda. 
Portanto, se o número for incrementado, 
o texto na tela será atualizado automaticamente.

5- .read

Usado para acessar o estado sem escutar mudanças. 
Quando você usa read, o widget não será reconstruído se o valor mudar. 
É útil quando você apenas deseja executar uma ação (como incrementar o contador) 
sem que o widget escute as mudanças.
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Skeleton(),
      ),
    );
  }
}
