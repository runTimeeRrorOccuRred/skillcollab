// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/folder/createFolder/create_folder_repo.dart';
import 'package:skill_colab/data/remote/folder/createFolder/create_folder_repo_impl.dart';
import 'package:skill_colab/data/remote/folder/createFolder/models/create_folder_model.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/folder_add_content_repo.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/folder_add_content_repo_impl.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/models/folder_add_content_model.dart';
import 'package:skill_colab/data/remote/folder/folderData/folder_data_repo.dart';
import 'package:skill_colab/data/remote/folder/folderData/folder_data_repo_impl.dart';
import 'package:skill_colab/data/remote/folder/folderData/models/folder_content_model.dart';
import 'package:skill_colab/data/remote/folder/folderList/folder_list_repo.dart';
import 'package:skill_colab/data/remote/folder/folderList/folder_list_repo_impl.dart';
import 'package:skill_colab/data/remote/folder/folderList/models/folder_list_model.dart';
import 'package:skill_colab/data/remote/folder/removeContent/models/remove_content_model.dart';
import 'package:skill_colab/data/remote/folder/removeContent/remove_content_repo.dart';
import 'package:skill_colab/data/remote/folder/removeContent/remove_content_repo_impl.dart';
import 'package:skill_colab/data/remote/folder/removeFolder/models/remove_folder_model.dart';
import 'package:skill_colab/data/remote/folder/removeFolder/remove_folder_repo.dart';
import 'package:skill_colab/data/remote/folder/removeFolder/remove_folder_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/group_pin_unpin_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_group_interest_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart' as mgm;
import 'package:skill_colab/data/remote/groups/myGroups/my_groups_repo_impl.dart';
import 'package:skill_colab/data/remote/user/models/member_of_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';
// import 'package:skill_colab/utils/snackback.dart';

final myGroupsViewModel = ChangeNotifierProvider((ref) => MyGroupsViewModel(ref: ref));

class MyGroupsViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  MyGroupsViewModel({required this.ref});

  final MyGroupsRepoImpl _myGroupsRepoImpl = MyGroupsRepoImpl();
  final UserRepoImpl _userRepoImpl = UserRepoImpl();
  final FolderListRepo _folderListRepoImpl = FolderListRepoImpl();
  final CreateFolderRepo _createFolderRepoImpl = CreateFolderRepoImpl();
  final FolderContentRepo _folderContentRepoImpl = FolderContentRepoImpl();
  final FolderAddContentRepo _folderAddContentRepoImpl = FolderAddContentRepoImpl();
  final RemoveFolderRepo _removeFolderRepoImpl = RemoveFolderRepoImpl();
  final RemoveContentRepo _removeContentRepo = RemoveContentRepoImpl();

  /// DATA MEMBERS
  mgm.MyGroupsResponseModel _myGroups = const mgm.MyGroupsResponseModel();
  List<mgm.Group>? _pinnedGroups = [];
  GroupPinUnpinResponseModel _groupPinUnpinResponseModel = const GroupPinUnpinResponseModel();
  MyGroupInterestResponseModel _myGroupInterestResponseModel = const MyGroupInterestResponseModel();
  MemberOfResponseModel _memberOfResponseModel = const MemberOfResponseModel();
  FolderListResponseModel _folderListResponseModel = const FolderListResponseModel();
  CreateFolderResponseModel _createFolderResponseModel = const CreateFolderResponseModel();
  FolderContentResponseModel _folderContentResponseModel = const FolderContentResponseModel();
  FolderAddContentResponseModel _folderAddContentResponseModel = const FolderAddContentResponseModel();
  FolderRemoveResponseModel _folderRemoveResponseModel = const FolderRemoveResponseModel();
  RemoveContentResponseModel _removeContentResponseModel = const RemoveContentResponseModel();
  bool _isPinUnpinLoading = false;



  /// GETTERS
  mgm.MyGroupsResponseModel get myGroups => _myGroups;
  List<mgm.Group>? get pinnedGroups => _pinnedGroups;
  GroupPinUnpinResponseModel get groupPinUnpinResponseModel => _groupPinUnpinResponseModel;
  MyGroupInterestResponseModel get myGroupInterestResponseModel => _myGroupInterestResponseModel;
  MemberOfResponseModel get memberOfResponseModel => _memberOfResponseModel;
  FolderListResponseModel get folderListResponseModel => _folderListResponseModel;
  CreateFolderResponseModel get createFolderResponseModel => _createFolderResponseModel;
  FolderContentResponseModel get folderContentResponseModel => _folderContentResponseModel;
  FolderAddContentResponseModel get folderAddContentResponseModel => _folderAddContentResponseModel;
  FolderRemoveResponseModel get folderRemoveResponseModel => _folderRemoveResponseModel;
  RemoveContentResponseModel get removeContentResponseModel=> _removeContentResponseModel;
  bool get isPinUnpinLoading => _isPinUnpinLoading;


  /// SETTERS
  void setMyGroups(mgm.MyGroupsResponseModel list) {
    _myGroups = list;
    notifyListeners();
  }

  void clearData() {
    // _myGroups = const MyGroupsResponseModel();
    _pinnedGroups = [];
    // _memberOfResponseModel = const MemberOfResponseModel();
    notifyListeners();
  }

  void togglePinUnpinLoader() {
    _isPinUnpinLoading = !_isPinUnpinLoading;
    notifyListeners();
  }
  



  /// OTHER METHODS
  Future<void> getMyGroups(BuildContext context) async {
    toggleLoading();
    _isPinUnpinLoading = true;
    _myGroupsRepoImpl.getMyGroups().then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          _isPinUnpinLoading = false;
          Logger.printError(l.message);
        },
        (r) {
          _myGroups = r;
          for(int i = 0; i < (r.data?.length ?? 0); i++) {
            if(r.data?[i].pinData?.isNotEmpty ?? false) {
              if(r.data?[i].pinData?[0].isPinned ?? false) {
                // Logger.printSuccess("${(r.data?[i].pinData?[0].isPinned ?? false).toString()} ============ASFAR==============");
                _pinnedGroups?.add(r.data![i]);
                notifyListeners();
              }
            }            
          }
          _isPinUnpinLoading = false;
          Logger.printWarning(_pinnedGroups.toString());
          Logger.printInfo(_pinnedGroups!.length.toString());
          notifyListeners();          
          // showCustomSnackBar(context, text: "My Groups Fetched successfully", color: Colors.green);
        }
      );
    });
  }

Future<void> getUserMemberOfList(String userId) async {
    // toggleLoading();
    _isPinUnpinLoading = true;
    _userRepoImpl.getUserMemberOfList(userId).then((value) {
      // toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _memberOfResponseModel = r;
          for(int i = 0; i < (r.data?.length ?? 0); i++) {
            if(r.data?[i]?.pinData?.isNotEmpty ?? false) {
              if((r.data?[i]?.pinData?[0].isPinned ?? false) && (r.data?[i]?.groupId?.userId ?? "") != AppConstants.userId) {
                _pinnedGroups?.add(
                  mgm.Group(
                    id: r.data![i]?.groupId?.id ?? "", 
                    groupPhoto: r.data![i]?.groupId?.groupPhoto ?? "", 
                    name: r.data![i]?.groupId?.name ?? "",
                    privacy: r.data![i]?.groupId?.privacy ?? "",
                    userId: mgm.UserId(id: r.data![i]?.groupId?.userId ?? ""),
                  ),
                );
              }
            }            
          }
          _isPinUnpinLoading = false;  

          Logger.printInfo(_pinnedGroups.toString());
          Logger.printInfo(_pinnedGroups!.length.toString());

          notifyListeners();
          Logger.printSuccess(_memberOfResponseModel.toString());
        }
      );
    });
  }

  Future<void> togglePinUnpinGroup(BuildContext context, GroupPinUnpinRequestModel groupPinUnpinRequestModel) async {
    // toggleLoading();
    _isPinUnpinLoading = true;
    _myGroupsRepoImpl.togglePinUnpinGroup(groupPinUnpinRequestModel).then((value) {
    // toggleLoading();
      _isPinUnpinLoading = false;
      return value.fold(
        (l) {
          Logger.printError(l.message);
          Logger.printError(l.message);
        }, 
        (r) async {
          _groupPinUnpinResponseModel = r;
          Logger.printSuccess(r.toString());
          Logger.printSuccess("===============ASFAR=================");
          Navigator.pop(context);

          await getMyGroups(context);
          await getUserMemberOfList(AppConstants.userId);
          notifyListeners();
          // showCustomSnackBar(context, text: r.toString(), color: Colors.green);
        }
      );
    });
  }


  Future<void> getMyInterestGroups(MyGroupInterestRequestModel myGroupInterestRequestModel) async {
    toggleLoading();
    _myGroupsRepoImpl.getMyInterestGroups(myGroupInterestRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _myGroupInterestResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_myGroupInterestResponseModel.toString());
        }
      );
    });
  }

  Future<void> getFolderList(BuildContext context) async {
    toggleLoading();
    _folderListRepoImpl.getFolderList().then((value){
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _folderListResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_folderListResponseModel.toString());
        }
      );
    });
  }

  Future<void> createFolder(BuildContext context, CreateFolderRequestModel createFolderRequestModel) async {
    toggleLoading();
    _createFolderRepoImpl.createFolder(createFolderRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _createFolderResponseModel = r;
          Logger.printSuccess(_createFolderResponseModel.toString());
          getFolderList(context);
          context.pop();
          notifyListeners();
        }
      );
    });
  }

  Future<void> getFolderContent(BuildContext context, String folderId) async {
    toggleLoading();
    _folderContentRepoImpl.getFolderContent(folderId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _folderContentResponseModel = r;
          Logger.printSuccess(_folderContentResponseModel.toString());
          notifyListeners();
        }
      );
    });
  }

  Future<void> addContentFolder(BuildContext context, FolderAddContentRequestModel folderAddContentRequestModel, String folderId) async {
    toggleLoading();
    _folderAddContentRepoImpl.addFolderContent(folderAddContentRequestModel, folderId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _folderAddContentResponseModel = r;
          getFolderContent(context, folderId);
          context.pop();
          Logger.printSuccess(_folderAddContentResponseModel.toString());
          notifyListeners();
        }
      );
    });
  }

  Future<void> removeFolder(BuildContext context, String folderId) async {
    toggleLoading();
    _removeFolderRepoImpl.removeFolder(folderId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _folderRemoveResponseModel = r;
          Logger.printSuccess(_folderRemoveResponseModel.toString());
          getFolderList(context);
          notifyListeners();
        }
      );
    });
  }

  Future<void> removeContent(BuildContext context, RemoveContentRequestModel removeContentRequestModel, String folderId) async {
    toggleLoading();
    _removeContentRepo.removeContent(removeContentRequestModel, folderId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _removeContentResponseModel = r;
          Logger.printSuccess(_removeContentResponseModel.toString());
          getFolderContent(context, folderId);
          getFolderList(context);
          notifyListeners();
        }
      );
    });
  }

}
