import 'package:flutter/material.dart';
import 'package:padak_starter/detail_page.dart';
import 'model/response/movies_response.dart';

class GridPage extends StatelessWidget {
  // 4-2. 메인화면 - GridPage 매개변수 생성
  final List<Movie> movies;

  // 4-2. 메인화면 - GridPage 생성자 만들기
  const GridPage({
    required this.movies,
    super.key,
  });

  // 4-2. 메인화면 - GridPage 생성자 만들기

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (9 / 16),
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) => GridItemWidget(movie: movies[index]),
    );
  }
}

class GridItemWidget extends StatelessWidget {
  final Movie movie;

  const GridItemWidget({
    required this.movie,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Image.network(
                    movie.thumb,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: GridItemGradeImageWidget(grade: movie.grade),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            FittedBox(
              child: Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
                '${movie.reservationGrade}위(${movie.userRating}) / ${movie.reservationRate}%'),
            const SizedBox(height: 8),
            Text(movie.date),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailPage(movieId: movie.id),
          ),
        );
      },
    );
  }
}

class GridItemGradeImageWidget extends StatelessWidget {
  final int grade;

  const GridItemGradeImageWidget({
    required this.grade,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (grade) {
      case 0:
        return Image.asset("assets/ic_allages.png");
      case 12:
        return Image.asset("assets/ic_12.png");
      case 15:
        return Image.asset("assets/ic_15.png");
      case 19:
        return Image.asset("assets/ic_19.png");
      default:
        return const SizedBox();
    }
  }
}
