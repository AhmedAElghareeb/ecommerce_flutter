import 'package:ecommerce_flutter/src/presentation/home/new_item_model.dart';
import 'package:ecommerce_flutter/src/presentation/home/slider_model.dart';
import 'package:ecommerce_flutter/src/presentation/home/top_rated_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                    sliders.length,
                    (index) => Image.network(
                      sliders[index].image,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 18),
                child: Text(
                  'Top Rated',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TopRatedWidget(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 18),
                child: Text(
                  'Our New Items',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const NewItemsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewItemsWidget extends StatefulWidget {
  const NewItemsWidget({
    super.key,
  });

  @override
  State<NewItemsWidget> createState() => _NewItemsWidgetState();
}

class _NewItemsWidgetState extends State<NewItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.70,
      ),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 18,
      ),
      itemCount: itemModel.length,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                width: 200,
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.network(
                  itemModel[index].image,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    itemModel[index].isFav = !itemModel[index].isFav;
                  });
                },
                icon: Icon(
                  itemModel[index].isFav
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: itemModel[index].isFav ? Colors.red : null,
                  size: 22,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            itemModel[index].title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            itemModel[index].price,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 18,
        ),
        itemCount: model.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsetsDirectional.only(
            start: index == 0 ? 0 : 12,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Image.network(
            model[index].image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
