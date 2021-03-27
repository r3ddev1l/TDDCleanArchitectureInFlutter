import 'package:clean_architecture/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({
    Key key,
  }) : super(key: key);

  @override
  _TriviaControlsState createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  String inputStr;

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //textfield
        TextField(
          onSubmitted: (_) {
            dispatchConcrete();
          },
          controller: textEditingController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onChanged: (value) {
            inputStr = value;
          },
        ),
        SizedBox(
          height: 10,
        ),
        //buttons
        Row(
          children: [
            Expanded(
              child: RaisedButton(
                  onPressed: dispatchConcrete,
                  child: Text('Search'),
                  textTheme: ButtonTextTheme.primary,
                  color: Theme.of(context).accentColor),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: RaisedButton(
                  onPressed: dispatchRandom,
                  child: Text('Get Random Trivia'),
                  textTheme: ButtonTextTheme.primary,
                  color: Theme.of(context).accentColor),
            ),
          ],
        )
      ],
    );
  }

  void dispatchConcrete() {
    textEditingController.clear();
    BlocProvider.of<NumberTriviaBloc>(context)
        .dispatch(GetTriviaForConcreteNumber(inputStr));
  }

  void dispatchRandom() {
    textEditingController.clear();
    BlocProvider.of<NumberTriviaBloc>(context)
        .dispatch(GetTriviaForRandomNumber());
  }
}
