#import <Foundation/Foundation.h>

// r'_OBJC_CLASS_\$_(\w+)'
#define CLASS(X) \
@interface X:NSObject \
@end \
@implementation X \
@end
// 
#define STRING(X) NSString *X = @"";

CLASS(TIMVideo)
CLASS(TIMSnapshot)
CLASS(TIMLoginParam)
CLASS(TIMUserConfig)
CLASS(TIMCreateGroupInfo)
CLASS(TIMGroupTipsElem)
CLASS(TIMSdkConfig)
CLASS(TIMVideoElem)
CLASS(TIMFileElem)
CLASS(TIMSoundElem)
CLASS(TIMTextElem)
CLASS(TIMMessage)
CLASS(TIMCustomElem)
CLASS(TIMFriendshipManager)
CLASS(TIMFriendRequest)
CLASS(TIMManager)
CLASS(TIMImageElem)
CLASS(TIMFriendResponse)
CLASS(TIMFaceElem)
CLASS(TIMFriendPendencyRequest)
CLASS(TIMGroupManager)
CLASS(TIMCreateGroupMemberInfo)

STRING(TIMProfileTypeKey_AllowType)
STRING(TIMFriendTypeKey_Remark)
STRING(TIMFriendTypeKey_Group)
STRING(TIMProfileTypeKey_Nick)
