import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/views/explore/explore_custom_widget/free_courses_list.dart';
import 'package:coursera/views/explore/explore_custom_widget/most_popular_certificates_list.dart';
import 'package:coursera/views/explore/explore_custom_widget/topic_list.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:coursera/widgets/text/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    Constant constant = Constant.instance;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(
          leading: CustomTextButton(
            onPressed: () {},
            text: "Switch Catalog",
          ),
          context: context,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: context.horizontalPaddingMedium,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Explore",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextFormField(
                    borderRadius: 15,
                    fillColor: constant.appGreyLight,
                    prefixIcon: Icons.search_outlined,
                    hintText: "What do you want to learn?",
                    contentPadding: EdgeInsets.zero),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Topics",
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      text: "See All",
                    )
                  ],
                ),
                const TopicList(),
                CustomText(
                  text: "My Coursera",
                  fontSize: 23,
                  color: constant.appGreyDark,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Most Popular Certificates",
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      text: "See All",
                    )
                  ],
                ),
                const MostPopularCertificatesList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: "Get Started with These Free Courses",
                          fontSize: 23,
                          maxLines: 2,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CustomTextButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          text: "See All",
                        ),
                      ),
                    )
                  ],
                ),
                const FreeCoursesList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
