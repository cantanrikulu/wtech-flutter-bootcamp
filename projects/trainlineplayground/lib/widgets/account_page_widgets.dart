import 'package:flutter/material.dart';

import '../constants/paddings/account_page_paddings.dart';
import '../constants/text_constants/constants.dart';

class PushRow extends StatelessWidget {
  const PushRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      RowPadding(),
       Icon(Icons.notifications),
       RowPadding(),
       Text(CustomTextsConstants.push),
     
     ]);
  }
}

class FunctionalAccounWidget {
  static Border bottomBorderSideWidget() {
    return Border(bottom: BorderSide(color: Colors.blue.shade100, width: 1.0));
  }
}

class PrivacyChoiceRow extends StatelessWidget {
  const PrivacyChoiceRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      RowPadding(),
       Icon(Icons.lock),
       RowPadding(),
       Text(CustomTextsConstants.privacy),
     
     ]);
  }
}

class RowPadding extends StatelessWidget {
  const RowPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RowPadding();
  }
}

class MoneyRow extends StatelessWidget {
  const MoneyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const RowPadding(),
      const Icon(Icons.attach_money_rounded),
      const RowPadding(),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
           Text(CustomTextsConstants.currency),
           Text("Ş / USD")
        ],
      ),
    
      
    ]);
  }
}

class AppSettingsRow extends StatelessWidget {
  const AppSettingsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        RowPadding(),
         Text(CustomTextsConstants.appSetting,style: TextStyle(fontSize: 22),),
      ],
    );
  }
}

class BusinesBookRow extends StatelessWidget {
  const BusinesBookRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      RowPadding(),
      Icon(Icons.business_center),
      RowPadding(),      Text(CustomTextsConstants.businessbook),
      
    ]);
  }
}

class BusinessRow extends StatelessWidget {
  const BusinessRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        RowPadding(),
         Text(CustomTextsConstants.business,style: TextStyle(fontSize: 22),),
      ],
    );
  }
}

class RailCardsRow extends StatelessWidget {
  const RailCardsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      RowPadding(),
      Icon(Icons.chrome_reader_mode_outlined),
      RowPadding(),
      Text(CustomTextsConstants.railcards),
      
    ]);
  }
}

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      RowPadding(),
      Icon(Icons.credit_card),
      RowPadding(),
      Text(CustomTextsConstants.paymentM),
      
    ]);
  }
}

class BookingRow extends StatelessWidget {
  const BookingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        RowPadding(),
         Text(CustomTextsConstants.bookingPre,style: TextStyle(fontSize: 22),),
      ],
    );
  }
}

class MessagesRow extends StatelessWidget {
  const MessagesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        RowPadding(),
        const Icon(Icons.local_post_office_outlined),
        MessagePadding(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Text(CustomTextsConstants.message,style:TextStyle(fontSize: 17),),
            DefaultRowPadding(),
            Text(CustomTextsConstants.nomessage)
          ],
        )
      ],
    );
  }
}


class accountContainer extends StatelessWidget {
  const accountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
        color: Colors.purple,
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              RowPadding(),
              Text(CustomTextsConstants.account,style:TextStyle(fontSize: 20,color: Colors.white)),
            ],
          ),
          ButtonPadding(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              RowPadding(),
              Text(CustomTextsConstants.api,style: TextStyle(color: Colors.white),),
            ],
          )
        ],
      ),
    );
  }
}


class AccountPageBottomNavBar extends StatelessWidget {
  const AccountPageBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          label: CustomTextsConstants.search),
      BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.airplane_ticket_outlined)),
          label: CustomTextsConstants.myticket),
      BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              icon: const Icon(Icons.person)),
          label: CustomTextsConstants.signin),
    ]);
  }
}