import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  final postList = [
    {
      "title": "적은 수면, 체중 증가의 주범!",
      "post":
          "수면 시간이 6시간 이하로 줄어들면,우리 몸은 식욕을 조절하는 호르몬 균형이 깨져 과식을 유발할 수 있습니다. 또한, 피로를 보상하기 위해 고칼로리 음식을 더 많이 찾게 됩니다. 충분한 수면은 체중 관리에 중요한 요소입니다."
    },
    {
      "title": "스트레칭, 심장 건강에도 필수",
      "post":
          "단순히 근육을 풀어주는 역할뿐 아니라, 스트레칭은 혈액순환을 개선하여 심혈관 건강에도 도움을 줍니다. 특히 아침에 가벼운 스트레칭은 하루 동안 혈압을 낮추는 데 효과적입니다."
    },
    {
      "title": "설탕, 면역력을 약화시키는 숨은 적",
      "post":
          "설탕을 과도하게 섭취하면 백혈구의 활동이 저하되어 면역 체계가 약해질 수 있습니다. 설탕 섭취 후 약 5시간 동안 면역 기능이 떨어진다는 연구 결과도 있습니다."
    },
    {
      "title": "찬물 샤워, 우울증 완화 효과",
      "post":
          "찬물로 샤워하면 엔도르핀 분비가 촉진되고, 교감신경을 활성화하여 스트레스와 우울감을 줄이는 데 도움이 됩니다. 하루 2~3분 정도의 찬물 샤워를 실천하면 정신 건강에 긍정적인 영향을 미칠 수 있습니다."
    },
    {
      "title": "손톱 상태가 건강의 신호등",
      "post":
          "손톱의 색이나 질감이 건강 상태를 반영할 수 있습니다. 손톱이 흰색이면 빈혈이나 간 질환의 가능성이 있고, 손톱이 푸르스름하다면 산소 공급이 부족하다는 신호일 수 있습니다. 손톱의 변화를 꾸준히 관찰하는 것이 중요합니다."
    },
  ];
  final proList = [
    {
      "icon": Icons.chair_rounded,
      "title": "하루 몇 시간 동안 앉아있나요?",
      "post": "장시간 앉아 있는 것은 심혈관계 질환, 비만, 근육 약화 등을 유발할 수 있습니다.",
      "result":
          "A. 8시간 이상\n앉아 있는 시간이 너무 길어요. 매시간 5분 정도 일어나서 스트레칭하거나 걷는 습관을 들여보세요.\n\n"
              "B. 4~7시간\n조금 덜 앉아있는 것은 좋지만, 여전히 움직임이 부족할 수 있어요. 하루 30분 이상 걷는 시간을 추가해보세요.\n\n"
              "C. 3시간 이하\n좋아요! 적절히 움직이는 생활 습관을 유지하고 있어요. 계속 실천하세요."
    },
    {
      "icon": Icons.smartphone,
      "title": "얼마나 자주 스마트폰이나 화면을 봅니까?",
      "post": "스크린 타임이 길어지면 눈의 피로, 수면 장애, 목 통증 등이 발생할 수 있습니다.",
      "result":
          "A. 8시간 이상\n스크린 타임을 줄이는 것이 필요합니다. 20분 사용 후 20초 동안 먼 곳을 바라보는 '20-20-20' 규칙을 실천해보세요\n\n"
              "B. 4~7시간\n적당히 사용하고 있지만, 하루 중간중간 눈을 쉬게 하고 자세를 바로 유지하세요.\n\n"
              "C. 3시간 이하\n좋은 습관을 가지고 있네요! 화면을 적게 보는 것은 눈과 정신 건강에 매우 좋습니다."
    },
    {
      "icon": Icons.no_food_rounded,
      "title": "얼마나 자주 간식을 먹나요?",
      "post": "장시간 앉아 있는 것은 심혈관계 질환, 비만, 근육 약화 등을 유발할 수 있습니다.",
      "result": "A. 하루 3번 이상\n간식을 줄이고, 배가 고프다면 견과류나 과일처럼 건강한 간식을 선택하세요.\n\n"
          "B. 하루 1~2번\n적당한 수준이지만, 간식 종류와 양을 확인해보세요. 과자보다는 영양소가 풍부한 간식을 선택하세요.\n\n"
          "C. 거의 먹지 않는다\n잘하고 있어요! 정규 식사로 충분히 영양을 섭취하고, 간식에 의존하지 않으면 건강에 좋습니다."
    },
    {
      "icon": Icons.no_drinks,
      "title": "얼마나 자주 술을 마시나요?",
      "post": "장시간 앉아 있는 것은 심혈관계 질환, 비만, 근육 약화 등을 유발할 수 있습니다.",
      "result":
          "A. 일주일에 3회 이상\n과도한 음주는 건강을 위협합니다. 알코올 섭취를 주 1회 이하로 줄이는 것이 좋습니다.\n\n"
              "일주일에 1~2회\n가끔 마시는 것은 괜찮지만, 음주량을 조절하고 음주 후 충분히 회복하세요.\n\n"
              "C. 거의 마시지 않는다\n좋아요! 술을 멀리하는 것은 신체와 정신 건강에 큰 이점이 있습니다."
    },
  ];

  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() => setState(() {
          _selectedIndex = _tabController.index;
        }));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 248, 253),
      body: _selectedIndex == 0
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              scrollDirection: Axis.vertical,
              itemCount: postList.length,
              itemBuilder: (BuildContext con, int index) {
                return postContainer(
                  title: postList[index]["title"] as String,
                  post: postList[index]["post"] as String,
                );
              })
          : _selectedIndex == 1
              ? ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  scrollDirection: Axis.vertical,
                  itemCount: proList.length,
                  itemBuilder: (BuildContext con, int index) {
                    return postContainer2(
                      title: proList[index]["title"] as String,
                      post: proList[index]["post"] as String,
                      icon: proList[index]["icon"] as IconData,
                      result: proList[index]["result"] as String,
                    );
                  })
              : tabContainer(context, Colors.white, "to do"),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // 자식 위젯을 아래로 정렬
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 244, 248, 253),
                boxShadow: [],
              ),
              child: TabBar(
                  splashFactory: NoSplash.splashFactory,
                  physics: const ClampingScrollPhysics(),
                  controller: _tabController,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent, // TabBar의 기본 구분선 제거
                  tabs: [
                    Tab(
                      icon: Icon(_selectedIndex == 0
                          ? Icons.health_and_safety
                          : Icons.health_and_safety_outlined),
                    ),
                    Tab(
                      icon: Icon(_selectedIndex == 1
                          ? Icons.report_problem
                          : Icons.report_problem_outlined),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget postContainer({String title = "", String post = ""}) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Row(
          children: [
            const SizedBox(
              width: 80,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 330,
              height: 600,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1.5,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Icon(
                    Icons.health_and_safety_rounded,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    post,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }

  Widget postContainer2(
      {required IconData icon,
      String title = "",
      String post = "",
      String result = ""}) {
    return Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        Icon(
          icon,
          size: 30,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          post,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          result,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
