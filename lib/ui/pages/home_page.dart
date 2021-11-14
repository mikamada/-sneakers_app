import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';
import 'package:sneakers_app/ui/widgets/custom_filter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Sawada',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    "Let's go and find favorite\nsneakers",
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/img_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget formSearch() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: blackColor,
            ),
            hintText: 'search for sneakers',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
          ),
        ),
      );
    }

    Widget filter() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomFilter(
              name: 'Kategori',
            ),
            CustomFilter(
              name: 'Warna',
            ),
            CustomFilter(
              name: 'Motif',
            ),
            CustomFilter(
              name: 'Bahan',
            ),
          ],
        ),
      );
    }

    Widget products() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 171,
                  height: 256,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 171,
                        height: 126,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img_1.png'),
                          ),
                          color: darkGreyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        header(),
        formSearch(),
        filter(),
        products(),
      ],
    );
  }
}
