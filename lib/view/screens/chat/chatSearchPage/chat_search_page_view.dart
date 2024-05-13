import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/chat/chatroomList/chatroom_list_view_model.dart';

class ChatSearchPageView extends ConsumerStatefulWidget {
  const ChatSearchPageView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatSearchPageViewState();
}

class _ChatSearchPageViewState extends ConsumerState<ChatSearchPageView> {
  final TextEditingController _searchController = TextEditingController();
  late ChatroomListViewModel _viewModel;  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(chatroomListViewModel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
        title: const Text(
          'Search Users',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                height: 42,
                padding: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: const Color(0xffF3F5F6),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: _searchController,
                  style: const TextStyle(fontSize: 12, color: kGrey, fontWeight: FontWeight.w600),
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) {
                    if(value.length > 2) {
                      final List<UserModel> filteredList = _viewModel.allusers.where((element) {
                        return 
                          (element.firstName?.toLowerCase() ?? "").contains(value.toLowerCase()) ||
                          (element.lastName?.toLowerCase() ?? "").contains(value.toLowerCase()) ||
                          (element.userName?.toLowerCase() ?? "").contains(value.toLowerCase());
                      }).toList();

                      _viewModel.filterList(filteredList);
                    } else {
                      _viewModel.filterList(_viewModel.allusers);
                    }
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Search",
                    hintStyle: const TextStyle(fontSize: 12, color: kGrey, fontWeight: FontWeight.w600),
                    suffixIcon: Image.asset("assets/icons/search_bar_icon.png",),
                  ),
                ),
              ),
              Expanded(
                child: _viewModel.users.isNotEmpty
                  ? ListView.separated(
                    itemCount: _viewModel.users.length,
                    separatorBuilder: (context, index) {
                      return const Divider(color: Colors.grey,);
                    },
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(AppRoute.chatRoom.name, extra: _viewModel.users[index]);
                        },
                        child: Container(
                          color: Colors.white,
                          height: 60,
                          width: size.width,
                          margin: EdgeInsets.only(
                            top: index == 0 ? 20 : 0,
                            bottom: index == _viewModel.users.length - 1 ? 100 : 0,
                          ),
                          child: Row(
                            children: [
                               Container(
                                height: 50,
                                width: 50,
                                padding: _viewModel.users[index].profilePhoto == null || !(_viewModel.users[index].profilePhoto?.contains("https://skill") ?? true)
                                    ? const EdgeInsets.all(8) : EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: _viewModel.users[index].profilePhoto == null || !(_viewModel.users[index].profilePhoto?.contains("https://skill") ?? true)
                                  ? Image.asset("assets/icons/user.png")
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image(image: NetworkImage(_viewModel.users[index].profilePhoto ?? AppConstants.imageNotFoundLink, ),fit: BoxFit.cover,)
                                    ),
                              ),
                              gapW10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${_viewModel.users[index].firstName ?? ""} ${_viewModel.users[index].lastName ?? ""}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor),),
                                  gapH4,
                                  Text(_viewModel.users[index].userName ?? "", style: const TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : const Center(child: Text("No users found :(", style: TextStyle(color: primaryColor, fontSize: 16),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
