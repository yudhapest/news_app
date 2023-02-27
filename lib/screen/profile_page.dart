import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/common/size_config.dart';
import 'package:news_app/common/styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: lighterWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 70.0,
                      width: 70.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                        child: Image.network(
                          'https://www.mainmain.id/uploads/post/2023/02/21/jisoo-blackpink-.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kim Jisoo',
                                style: poppinsBold.copyWith(
                                  color: darkBlueColor,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                ),
                              ),
                              Text(
                                'Author & Writer',
                                style: poppinsRegular.copyWith(
                                  color: darkBlueColor,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 42.0,
                              maxWidth: SizeConfig.blockSizeHorizontal! * 30,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              color: blueColor,
                            ),
                            child: Center(
                              child: Text('Following',
                                  style: poppinsMedium.copyWith(
                                    color: whiteColor,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Text(
                  'Every Piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: poppinsMedium.copyWith(
                    color: greyColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 3,
                    vertical: SizeConfig.blockSizeVertical! * 3.5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: darkBlueColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '54.21K',
                              style: poppinsBold.copyWith(
                                color: whiteColor,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'Follower',
                              style: poppinsMedium.copyWith(
                                color: whiteColor,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.0,
                        height: SizeConfig.blockSizeVertical! * 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: whiteColor,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '5',
                              style: poppinsBold.copyWith(
                                color: whiteColor,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'Posts',
                              style: poppinsMedium.copyWith(
                                color: whiteColor,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.0,
                        height: SizeConfig.blockSizeVertical! * 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: whiteColor,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '1k',
                              style: poppinsBold.copyWith(
                                color: whiteColor,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'Following',
                              style: poppinsMedium.copyWith(
                                color: whiteColor,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Jisoo\'s Posts',
                      style: poppinsBold.copyWith(
                        color: darkBlueColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'View All',
                      style: poppinsMedium.copyWith(
                        color: blueColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100.0,
                        margin: EdgeInsets.only(
                          bottom: SizeConfig.blockSizeVertical! * 2.5,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 100.0,
                              height: 100.0,
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 24.0,
                                    spreadRadius: 0,
                                    offset: const Offset(0, 3),
                                    color: darkBlueColor.withOpacity(
                                      0.051,
                                    ),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                                child: Image.network(
                                  'https://ik.imagekit.io/tvlk/blog/2021/05/WISATA-BALI.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeVertical! * 2.5,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'News: Politics',
                                    style: poppinsRegular.copyWith(
                                        color: darkBlueColor,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                2.8),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical! * 1,
                                  ),
                                  Text(
                                    'Iron\'s raging protest Fifth Iranian paramilitary me...',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.justify,
                                    style: poppinsBold.copyWith(
                                        color: darkBlueColor,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                3),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical! * 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/calendar_icon.svg'),
                                          SizedBox(
                                            width: SizeConfig
                                                    .blockSizeHorizontal! *
                                                1.5,
                                          ),
                                          Text(
                                            '16th Feb',
                                            style: poppinsRegular.copyWith(
                                                color: greyColor,
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    3),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/time_icon.svg'),
                                          SizedBox(
                                            width: SizeConfig
                                                    .blockSizeHorizontal! *
                                                1.5,
                                          ),
                                          Text(
                                            '09 : 30 am',
                                            style: poppinsRegular.copyWith(
                                                color: greyColor,
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    3),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular From isoo',
                      style: poppinsBold.copyWith(
                        color: darkBlueColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                SizedBox(
                  height: 143.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 143.0,
                          width: 248.0,
                          margin: EdgeInsets.only(
                            right: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                            child: Image.network(
                              'https://digitalnomads.world/wp-content/uploads/2021/01/bali-for-digital-nomads.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
