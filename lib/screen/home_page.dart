import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/common/size_config.dart';
import 'package:news_app/common/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          Row(
            children: [
              Container(
                height: 51.0,
                width: 51.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: lightBlueColor,
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn3d.iconscout.com/3d/premium/thumb/boy-avatar-6299533-5187865.png'))),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Selamat datang kembali!',
                    style: poppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                  Text(
                    'Sabtu, 25 Februari',
                    style: poppinsRegular.copyWith(
                        color: greyColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: darkBlueColor.withOpacity(0.051),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 24.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: poppinsRegular.copyWith(
                      color: blueColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13.0),
                      hintText: 'Cari artikel...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: poppinsRegular.copyWith(
                        color: lightGreyColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 14.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 38.0),
                  child: Text(
                    '#Health',
                    style: poppinsMedium.copyWith(
                      color: greyColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 304.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(
                      12.0,
                    ),
                    margin: const EdgeInsets.only(right: 20.0),
                    height: 304.0,
                    width: 255.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: darkBlueColor.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 164.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f4/95/4d/magicke-misto.jpg?w=600&h=400&s=1'))),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Flexible(
                          child: Text(
                            'Bali - Uniqure, unmached. There is no other place like Bali in this world.',
                            style: poppinsBold.copyWith(
                                fontSize:
                                    SizeConfig.blockSizeHorizontal! * 3.5),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 19.0,
                              backgroundColor: lightBlueColor,
                              backgroundImage: NetworkImage(
                                  'https://www.mainmain.id/uploads/post/2023/02/21/jisoo-blackpink-.jpg'),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Kim isoo',
                                  style: poppinsSemiBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                Text(
                                  'Feb 23, 2023',
                                  style: poppinsRegular.copyWith(
                                    color: greyColor,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              height: 38.0,
                              width: 38.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: lightWhiteColor,
                              ),
                              child: SvgPicture.asset('assets/share_icon.svg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for You',
                style: poppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                'View all',
                style: poppinsMedium.copyWith(
                  color: blueColor,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 19.0,
          ),
          SizedBox(
            height: 88.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(9.0),
                  margin: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  width: 208.0,
                  height: 88.0,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: darkBlueColor.withOpacity(0.051),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://cdn.idntimes.com/content-images/community/2022/04/fromandroid-b2c30323fe7d81aaa7b6848e6812601a_600x400.jpg',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Flexible(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Top Trending Island in 2022',
                            style: poppinsSemiBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 9.0,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/eye_icon.svg',
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '30.436',
                                style: poppinsMedium.copyWith(
                                  color: greyColor,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
