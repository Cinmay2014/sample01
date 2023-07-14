; ModuleID = 'obj\Debug\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [308 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 86
	i64 36418902923615093, ; 1: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 45
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 41
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 42
	i64 125503650289234629, ; 4: Prism.DryIoc.Forms => 0x1bde0e7ad8132c5 => 47
	i64 156291772854606065, ; 5: I18N.West => 0x22b428a125098f1 => 153
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 75
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 109
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 110
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 80
	i64 435170709725415398, ; 10: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 129
	i64 459290523345518553, ; 11: AWSSDK.S3.dll => 0x65fba4c2cb67fd9 => 23
	i64 560278790331054453, ; 12: System.Reflection.Primitives => 0x7c6829760de3975 => 15
	i64 598000792767308679, ; 13: AWSSDK.CognitoIdentity => 0x84c868d7c4c2387 => 18
	i64 634308326490598313, ; 14: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 95
	i64 666875359161733398, ; 15: sleepapp => 0x941379b1c4bd116 => 50
	i64 687654259221141486, ; 16: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 127
	i64 702024105029695270, ; 17: System.Drawing.Common => 0x9be17343c0e7726 => 142
	i64 710500338161506772, ; 18: SixLabors.Fonts.dll => 0x9dc344b0ce959d4 => 49
	i64 720058930071658100, ; 19: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 89
	i64 872800313462103108, ; 20: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 85
	i64 913290893418446787, ; 21: Essential.Interfaces.dll => 0xcaca93a8ece3fc3 => 28
	i64 940822596282819491, ; 22: System.Transactions => 0xd0e792aa81923a3 => 140
	i64 996343623809489702, ; 23: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 123
	i64 1000557547492888992, ; 24: Mono.Security.dll => 0xde2b1c9cba651a0 => 151
	i64 1010599046655515943, ; 25: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 15
	i64 1120440138749646132, ; 26: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 125
	i64 1315114680217950157, ; 27: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 70
	i64 1425944114962822056, ; 28: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 16
	i64 1447734701828840583, ; 29: AWSSDK.DynamoDBv2.dll => 0x1417630a77839c87 => 21
	i64 1452508835689621593, ; 30: AWSSDK.S3 => 0x1428591720656859 => 23
	i64 1624659445732251991, ; 31: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 68
	i64 1628611045998245443, ; 32: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 97
	i64 1636321030536304333, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 90
	i64 1731380447121279447, ; 34: Newtonsoft.Json => 0x18071957e9b889d7 => 44
	i64 1743969030606105336, ; 35: System.Memory.dll => 0x1833d297e88f2af8 => 57
	i64 1795316252682057001, ; 36: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 69
	i64 1836611346387731153, ; 37: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 109
	i64 1865037103900624886, ; 38: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 35
	i64 1875917498431009007, ; 39: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 66
	i64 1981742497975770890, ; 40: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 96
	i64 2040001226662520565, ; 41: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 2
	i64 2064708342624596306, ; 42: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 134
	i64 2133195048986300728, ; 43: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 44
	i64 2136356949452311481, ; 44: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 101
	i64 2165725771938924357, ; 45: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 73
	i64 2207662933261301575, ; 46: DocumentFormat.OpenXml => 0x1ea331bdb8d63747 => 26
	i64 2262844636196693701, ; 47: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 85
	i64 2284400282711631002, ; 48: System.Web.Services => 0x1fb3d1f42fd4249a => 145
	i64 2329709569556905518, ; 49: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 93
	i64 2337758774805907496, ; 50: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 61
	i64 2443621855109524048, ; 51: AWSSDK.Core.dll => 0x21e97d215f2f2a50 => 20
	i64 2470498323731680442, ; 52: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 79
	i64 2479423007379663237, ; 53: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 115
	i64 2497223385847772520, ; 54: System.Runtime => 0x22a7eb7046413568 => 62
	i64 2547086958574651984, ; 55: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 65
	i64 2592350477072141967, ; 56: System.Xml.dll => 0x23f9e10627330e8f => 63
	i64 2624866290265602282, ; 57: mscorlib.dll => 0x246d65fbde2db8ea => 43
	i64 2656907746661064104, ; 58: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 37
	i64 2694427813909235223, ; 59: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 105
	i64 2783046991838674048, ; 60: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 61
	i64 2787234703088983483, ; 61: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 111
	i64 2960931600190307745, ; 62: Xamarin.Forms.Core => 0x2917579a49927da1 => 121
	i64 3017704767998173186, ; 63: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 125
	i64 3289520064315143713, ; 64: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 92
	i64 3303437397778967116, ; 65: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 67
	i64 3311221304742556517, ; 66: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 60
	i64 3325875462027654285, ; 67: System.Runtime.Numerics => 0x2e27e21c8958b48d => 9
	i64 3344514922410554693, ; 68: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 137
	i64 3411255996856937470, ; 69: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 128
	i64 3493805808809882663, ; 70: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 113
	i64 3522470458906976663, ; 71: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 112
	i64 3531994851595924923, ; 72: System.Numerics => 0x31042a9aade235bb => 59
	i64 3571415421602489686, ; 73: System.Runtime.dll => 0x319037675df7e556 => 62
	i64 3572576518857361216, ; 74: I18N => 0x3194576a63650740 => 152
	i64 3716579019761409177, ; 75: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 76: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 108
	i64 3772598417116884899, ; 77: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 86
	i64 3869221888984012293, ; 78: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 39
	i64 3966267475168208030, ; 79: System.Memory => 0x370b03412596249e => 57
	i64 4201423742386704971, ; 80: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 80
	i64 4247996603072512073, ; 81: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 130
	i64 4376937205476565312, ; 82: ExcelNumberFormat.dll => 0x3cbe0132c89f2140 => 31
	i64 4525561845656915374, ; 83: System.ServiceModel.Internals => 0x3ece06856b710dae => 146
	i64 4636684751163556186, ; 84: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 117
	i64 4782108999019072045, ; 85: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 72
	i64 4794310189461587505, ; 86: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 65
	i64 4795410492532947900, ; 87: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 112
	i64 4966822140824587576, ; 88: AWSSDK.DynamoDBv2 => 0x44edb26bf6650d38 => 21
	i64 5081566143765835342, ; 89: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 5
	i64 5099468265966638712, ; 90: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 5
	i64 5142919913060024034, ; 91: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 122
	i64 5203618020066742981, ; 92: Xamarin.Essentials => 0x4836f704f0e652c5 => 120
	i64 5205316157927637098, ; 93: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 99
	i64 5348796042099802469, ; 94: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 100
	i64 5376510917114486089, ; 95: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 115
	i64 5398069113008343190, ; 96: I18N.West.dll => 0x4ae9cb4211dec896 => 153
	i64 5408338804355907810, ; 97: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 114
	i64 5446034149219586269, ; 98: System.Diagnostics.Debug => 0x4b94333452e150dd => 4
	i64 5451019430259338467, ; 99: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 78
	i64 5486095413573346643, ; 100: Essential.Interfaces => 0x4c2286b649f06553 => 28
	i64 5507995362134886206, ; 101: System.Core.dll => 0x4c705499688c873e => 52
	i64 5528247634813456972, ; 102: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 45
	i64 5692067934154308417, ; 103: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 119
	i64 5757522595884336624, ; 104: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 76
	i64 5796442605724717762, ; 105: ExcelNumberFormat => 0x507119d6cb2952c2 => 31
	i64 5814345312393086621, ; 106: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 105
	i64 5896680224035167651, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 94
	i64 5979717813619719342, ; 108: AWSSDK.Lambda.dll => 0x52fc39ab69e0fcae => 22
	i64 6085203216496545422, ; 109: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 123
	i64 6086316965293125504, ; 110: FormsViewGroup.dll => 0x5476f10882baef80 => 32
	i64 6131201415840466400, ; 111: sleepapp.Android => 0x55166734058b05e0 => 0
	i64 6284145129771520194, ; 112: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 147
	i64 6319713645133255417, ; 113: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 95
	i64 6401687960814735282, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 93
	i64 6504860066809920875, ; 115: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 73
	i64 6548213210057960872, ; 116: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 83
	i64 6560151584539558821, ; 117: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 40
	i64 6591024623626361694, ; 118: System.Web.Services.dll => 0x5b7805f9751a1b5e => 145
	i64 6617685658146568858, ; 119: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 150
	i64 6659513131007730089, ; 120: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 89
	i64 6713440830605852118, ; 121: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 149
	i64 6870591353058300706, ; 122: Prism.DryIoc.Forms.dll => 0x5f593e6f03e91322 => 47
	i64 6876862101832370452, ; 123: System.Xml.Linq => 0x5f6f85a57d108914 => 64
	i64 6894844156784520562, ; 124: System.Numerics.Vectors => 0x5faf683aead1ad72 => 60
	i64 7036436454368433159, ; 125: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 91
	i64 7103753931438454322, ; 126: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 88
	i64 7270811800166795866, ; 127: System.Linq => 0x64e71ccf51a90a5a => 14
	i64 7307863886102645465, ; 128: AWSSDK.CognitoIdentityProvider => 0x656abf7c560dcad9 => 19
	i64 7338192458477945005, ; 129: System.Reflection => 0x65d67f295d0740ad => 11
	i64 7487191669361583397, ; 130: AWSSDK.CognitoIdentityProvider.dll => 0x67e7d927898fa525 => 19
	i64 7488575175965059935, ; 131: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 64
	i64 7635363394907363464, ; 132: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 121
	i64 7637365915383206639, ; 133: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 120
	i64 7654504624184590948, ; 134: System.Net.Http => 0x6a3a4366801b8264 => 58
	i64 7710895609346150079, ; 135: DryIoc.dll => 0x6b029ab3df324ebf => 27
	i64 7735352534559001595, ; 136: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 133
	i64 7820441508502274321, ; 137: System.Data => 0x6c87ca1e14ff8111 => 139
	i64 7836164640616011524, ; 138: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 68
	i64 8012566953210257060, ; 139: ClosedXML.dll => 0x6f325b3109219ea4 => 25
	i64 8044118961405839122, ; 140: System.ComponentModel.Composition => 0x6fa2739369944712 => 144
	i64 8064050204834738623, ; 141: System.Collections.dll => 0x6fe942efa61731bf => 7
	i64 8083354569033831015, ; 142: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 92
	i64 8087206902342787202, ; 143: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 53
	i64 8103644804370223335, ; 144: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 141
	i64 8113615946733131500, ; 145: System.Reflection.Extensions => 0x70995ab73cf916ec => 13
	i64 8167236081217502503, ; 146: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 34
	i64 8185542183669246576, ; 147: System.Collections => 0x7198e33f4794aa70 => 7
	i64 8187640529827139739, ; 148: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 136
	i64 8265650852517415196, ; 149: I18N.dll => 0x72b57da835b4891c => 152
	i64 8290740647658429042, ; 150: System.Runtime.Extensions => 0x730ea0b15c929a72 => 8
	i64 8398329775253868912, ; 151: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 77
	i64 8400357532724379117, ; 152: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 104
	i64 8410671156615598628, ; 153: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 148
	i64 8601935802264776013, ; 154: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 114
	i64 8626175481042262068, ; 155: Java.Interop => 0x77b654e585b55834 => 34
	i64 8639588376636138208, ; 156: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 103
	i64 8684531736582871431, ; 157: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 143
	i64 8725526185868997716, ; 158: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 53
	i64 8853378295825400934, ; 159: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 132
	i64 8951477988056063522, ; 160: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 107
	i64 9152195110146177084, ; 161: XLParser => 0x7f0320f65754783c => 138
	i64 9312692141327339315, ; 162: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 119
	i64 9324707631942237306, ; 163: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 69
	i64 9461546124022044683, ; 164: AWSSDK.Core => 0x834e2a12044ed80b => 20
	i64 9584643793929893533, ; 165: System.IO.dll => 0x85037ebfbbd7f69d => 17
	i64 9659729154652888475, ; 166: System.Text.RegularExpressions => 0x860e407c9991dd9b => 10
	i64 9662334977499516867, ; 167: System.Numerics.dll => 0x8617827802b0cfc3 => 59
	i64 9678050649315576968, ; 168: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 79
	i64 9711637524876806384, ; 169: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 100
	i64 9714278800710180550, ; 170: ExcelDataReader.dll => 0x86d00d19cd701ec6 => 30
	i64 9808709177481450983, ; 171: Mono.Android.dll => 0x881f890734e555e7 => 42
	i64 9825649861376906464, ; 172: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 76
	i64 9834056768316610435, ; 173: System.Transactions.dll => 0x8879968718899783 => 140
	i64 9875200773399460291, ; 174: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 127
	i64 9998632235833408227, ; 175: Mono.Security => 0x8ac2470b209ebae3 => 151
	i64 10034982794265343628, ; 176: AWSSDK.Lambda => 0x8b436baf0b57b68c => 22
	i64 10038780035334861115, ; 177: System.Net.Http.dll => 0x8b50e941206af13b => 58
	i64 10226222362177979215, ; 178: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 134
	i64 10229024438826829339, ; 179: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 83
	i64 10245369515835430794, ; 180: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 148
	i64 10250009464030759964, ; 181: ExcelDataReader.DataSet.dll => 0x8e3f594cf7f20c1c => 29
	i64 10321854143672141184, ; 182: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 131
	i64 10364469296367737616, ; 183: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 147
	i64 10376576884623852283, ; 184: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 113
	i64 10406448008575299332, ; 185: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 137
	i64 10430153318873392755, ; 186: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 81
	i64 10447083246144586668, ; 187: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 35
	i64 10566960649245365243, ; 188: System.Globalization.dll => 0x92a562b96dcd13fb => 6
	i64 10650478070646097812, ; 189: System.IO.Packaging => 0x93ce196068f2c794 => 56
	i64 10714184849103829812, ; 190: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 8
	i64 10847732767863316357, ; 191: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 70
	i64 11002576679268595294, ; 192: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 38
	i64 11023048688141570732, ; 193: System.Core => 0x98f9bc61168392ac => 52
	i64 11037814507248023548, ; 194: System.Xml => 0x992e31d0412bf7fc => 63
	i64 11162124722117608902, ; 195: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 118
	i64 11226290749488709958, ; 196: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 40
	i64 11340910727871153756, ; 197: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 82
	i64 11392833485892708388, ; 198: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 106
	i64 11485890710487134646, ; 199: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 3
	i64 11529969570048099689, ; 200: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 118
	i64 11530571088791430846, ; 201: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 39
	i64 11578238080964724296, ; 202: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 91
	i64 11580057168383206117, ; 203: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 66
	i64 11591352189662810718, ; 204: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 111
	i64 11597940890313164233, ; 205: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 206: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 88
	i64 12102847907131387746, ; 207: System.Buffers => 0xa7f5f40c43256f62 => 51
	i64 12123043025855404482, ; 208: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 13
	i64 12137774235383566651, ; 209: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 116
	i64 12210559213152882954, ; 210: AWSSDK.CognitoIdentity.dll => 0xa9749ee8f8d9d10a => 18
	i64 12451044538927396471, ; 211: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 87
	i64 12466513435562512481, ; 212: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 98
	i64 12487638416075308985, ; 213: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 84
	i64 12538491095302438457, ; 214: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 74
	i64 12550732019250633519, ; 215: System.IO.Compression => 0xae2d28465e8e1b2f => 55
	i64 12700543734426720211, ; 216: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 75
	i64 12708238894395270091, ; 217: System.IO => 0xb05cbbf17d3ba3cb => 17
	i64 12719814519482886281, ; 218: Irony => 0xb085dbe9baa22889 => 33
	i64 12828192437253469131, ; 219: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 135
	i64 12843321153144804894, ; 220: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 41
	i64 12953969983053113793, ; 221: Prism.Forms => 0xb3c5bf1106f429c1 => 48
	i64 12963446364377008305, ; 222: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 142
	i64 13109727801987935684, ; 223: SixLabors.Fonts => 0xb5ef1bfa438dadc4 => 49
	i64 13196197655982686080, ; 224: Prism => 0xb7224fda06b0bf80 => 46
	i64 13370592475155966277, ; 225: System.Runtime.Serialization => 0xb98de304062ea945 => 16
	i64 13401370062847626945, ; 226: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 116
	i64 13404347523447273790, ; 227: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 77
	i64 13454009404024712428, ; 228: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 126
	i64 13465488254036897740, ; 229: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 133
	i64 13491513212026656886, ; 230: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 71
	i64 13572454107664307259, ; 231: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 108
	i64 13647894001087880694, ; 232: System.Data.dll => 0xbd670f48cb071df6 => 139
	i64 13824396955115051082, ; 233: sleepapp.dll => 0xbfda1fc92f9fd84a => 50
	i64 13828521679616088467, ; 234: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 132
	i64 13959074834287824816, ; 235: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 87
	i64 13967638549803255703, ; 236: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 122
	i64 13999249117200686705, ; 237: sleepapp.Android.dll => 0xc24752e6a0f29e71 => 0
	i64 14124974489674258913, ; 238: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 74
	i64 14125464355221830302, ; 239: System.Threading.dll => 0xc407bafdbc707a9e => 12
	i64 14148919944076435199, ; 240: DocumentFormat.OpenXml.dll => 0xc45b0fb9961d9eff => 26
	i64 14172845254133543601, ; 241: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 101
	i64 14261073672896646636, ; 242: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 106
	i64 14327695147300244862, ; 243: System.Reflection.dll => 0xc6d632d338eb4d7e => 11
	i64 14461976080970138192, ; 244: XLParser.dll => 0xc8b3429f706bc250 => 138
	i64 14486659737292545672, ; 245: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 94
	i64 14644440854989303794, ; 246: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 99
	i64 14669215534098758659, ; 247: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 37
	i64 14678510994762383812, ; 248: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 129
	i64 14792063746108907174, ; 249: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 126
	i64 14852515768018889994, ; 250: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 82
	i64 14935719434541007538, ; 251: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 150
	i64 14954917835170835695, ; 252: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 36
	i64 14987728460634540364, ; 253: System.IO.Compression.dll => 0xcfff1ba06622494c => 55
	i64 14988210264188246988, ; 254: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 84
	i64 15020741785497507190, ; 255: DryIoc => 0xd074651213721576 => 27
	i64 15133485256822086103, ; 256: System.Linq.dll => 0xd204f0a9127dd9d7 => 14
	i64 15150743910298169673, ; 257: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 107
	i64 15279429628684179188, ; 258: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 136
	i64 15370334346939861994, ; 259: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 81
	i64 15391712275433856905, ; 260: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 36
	i64 15582737692548360875, ; 261: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 97
	i64 15609085926864131306, ; 262: System.dll => 0xd89e9cf3334914ea => 54
	i64 15777549416145007739, ; 263: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 110
	i64 15810740023422282496, ; 264: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 124
	i64 15930129725311349754, ; 265: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 130
	i64 15963349826457351533, ; 266: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 2
	i64 15989898468612909693, ; 267: ExcelDataReader => 0xdde787f0683c2a7d => 30
	i64 16035518054986892682, ; 268: Prism.dll => 0xde899ab610db458a => 46
	i64 16125434397870879068, ; 269: Irony.dll => 0xdfc90d260df5715c => 33
	i64 16154507427712707110, ; 270: System => 0xe03056ea4e39aa26 => 54
	i64 16225699133893596807, ; 271: ExcelDataReader.DataSet => 0xe12d436514175687 => 29
	i64 16321164108206115771, ; 272: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 38
	i64 16423015068819898779, ; 273: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 135
	i64 16565028646146589191, ; 274: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 144
	i64 16621146507174665210, ; 275: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 78
	i64 16677317093839702854, ; 276: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 104
	i64 16762783179241323229, ; 277: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 149
	i64 16822611501064131242, ; 278: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 141
	i64 16833383113903931215, ; 279: mscorlib => 0xe99c30c1484d7f4f => 43
	i64 16890310621557459193, ; 280: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 10
	i64 17024911836938395553, ; 281: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 67
	i64 17031351772568316411, ; 282: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 102
	i64 17037200463775726619, ; 283: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 90
	i64 17154287038065938077, ; 284: AWSSDK.SecurityToken => 0xee10452c7f020e9d => 24
	i64 17179789585722495361, ; 285: AWSSDK.SecurityToken.dll => 0xee6adf9b14f1d181 => 24
	i64 17272529741349494537, ; 286: ClosedXML => 0xefb45a4935819f09 => 25
	i64 17544493274320527064, ; 287: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 72
	i64 17627500474728259406, ; 288: System.Globalization => 0xf4a176498a351f4e => 6
	i64 17685921127322830888, ; 289: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 4
	i64 17704177640604968747, ; 290: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 98
	i64 17710060891934109755, ; 291: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 96
	i64 17712670374920797664, ; 292: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 3
	i64 17777860260071588075, ; 293: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 9
	i64 17838668724098252521, ; 294: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 51
	i64 17882897186074144999, ; 295: FormsViewGroup => 0xf82cd03e3ac830e7 => 32
	i64 17891337867145587222, ; 296: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 131
	i64 17892495832318972303, ; 297: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 124
	i64 17928294245072900555, ; 298: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 143
	i64 17986907704309214542, ; 299: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 128
	i64 18025913125965088385, ; 300: System.Threading => 0xfa28e87b91334681 => 12
	i64 18116111925905154859, ; 301: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 71
	i64 18121036031235206392, ; 302: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 102
	i64 18129453464017766560, ; 303: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 146
	i64 18284618658670613420, ; 304: System.IO.Packaging.dll => 0xfdc003cb438a93ac => 56
	i64 18305135509493619199, ; 305: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 103
	i64 18380184030268848184, ; 306: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 117
	i64 18434045720645380019 ; 307: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 48
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [308 x i32] [
	i32 86, i32 45, i32 41, i32 42, i32 47, i32 153, i32 75, i32 109, ; 0..7
	i32 110, i32 80, i32 129, i32 23, i32 15, i32 18, i32 95, i32 50, ; 8..15
	i32 127, i32 142, i32 49, i32 89, i32 85, i32 28, i32 140, i32 123, ; 16..23
	i32 151, i32 15, i32 125, i32 70, i32 16, i32 21, i32 23, i32 68, ; 24..31
	i32 97, i32 90, i32 44, i32 57, i32 69, i32 109, i32 35, i32 66, ; 32..39
	i32 96, i32 2, i32 134, i32 44, i32 101, i32 73, i32 26, i32 85, ; 40..47
	i32 145, i32 93, i32 61, i32 20, i32 79, i32 115, i32 62, i32 65, ; 48..55
	i32 63, i32 43, i32 37, i32 105, i32 61, i32 111, i32 121, i32 125, ; 56..63
	i32 92, i32 67, i32 60, i32 9, i32 137, i32 128, i32 113, i32 112, ; 64..71
	i32 59, i32 62, i32 152, i32 1, i32 108, i32 86, i32 39, i32 57, ; 72..79
	i32 80, i32 130, i32 31, i32 146, i32 117, i32 72, i32 65, i32 112, ; 80..87
	i32 21, i32 5, i32 5, i32 122, i32 120, i32 99, i32 100, i32 115, ; 88..95
	i32 153, i32 114, i32 4, i32 78, i32 28, i32 52, i32 45, i32 119, ; 96..103
	i32 76, i32 31, i32 105, i32 94, i32 22, i32 123, i32 32, i32 0, ; 104..111
	i32 147, i32 95, i32 93, i32 73, i32 83, i32 40, i32 145, i32 150, ; 112..119
	i32 89, i32 149, i32 47, i32 64, i32 60, i32 91, i32 88, i32 14, ; 120..127
	i32 19, i32 11, i32 19, i32 64, i32 121, i32 120, i32 58, i32 27, ; 128..135
	i32 133, i32 139, i32 68, i32 25, i32 144, i32 7, i32 92, i32 53, ; 136..143
	i32 141, i32 13, i32 34, i32 7, i32 136, i32 152, i32 8, i32 77, ; 144..151
	i32 104, i32 148, i32 114, i32 34, i32 103, i32 143, i32 53, i32 132, ; 152..159
	i32 107, i32 138, i32 119, i32 69, i32 20, i32 17, i32 10, i32 59, ; 160..167
	i32 79, i32 100, i32 30, i32 42, i32 76, i32 140, i32 127, i32 151, ; 168..175
	i32 22, i32 58, i32 134, i32 83, i32 148, i32 29, i32 131, i32 147, ; 176..183
	i32 113, i32 137, i32 81, i32 35, i32 6, i32 56, i32 8, i32 70, ; 184..191
	i32 38, i32 52, i32 63, i32 118, i32 40, i32 82, i32 106, i32 3, ; 192..199
	i32 118, i32 39, i32 91, i32 66, i32 111, i32 1, i32 88, i32 51, ; 200..207
	i32 13, i32 116, i32 18, i32 87, i32 98, i32 84, i32 74, i32 55, ; 208..215
	i32 75, i32 17, i32 33, i32 135, i32 41, i32 48, i32 142, i32 49, ; 216..223
	i32 46, i32 16, i32 116, i32 77, i32 126, i32 133, i32 71, i32 108, ; 224..231
	i32 139, i32 50, i32 132, i32 87, i32 122, i32 0, i32 74, i32 12, ; 232..239
	i32 26, i32 101, i32 106, i32 11, i32 138, i32 94, i32 99, i32 37, ; 240..247
	i32 129, i32 126, i32 82, i32 150, i32 36, i32 55, i32 84, i32 27, ; 248..255
	i32 14, i32 107, i32 136, i32 81, i32 36, i32 97, i32 54, i32 110, ; 256..263
	i32 124, i32 130, i32 2, i32 30, i32 46, i32 33, i32 54, i32 29, ; 264..271
	i32 38, i32 135, i32 144, i32 78, i32 104, i32 149, i32 141, i32 43, ; 272..279
	i32 10, i32 67, i32 102, i32 90, i32 24, i32 24, i32 25, i32 72, ; 280..287
	i32 6, i32 4, i32 98, i32 96, i32 3, i32 9, i32 51, i32 32, ; 288..295
	i32 131, i32 124, i32 143, i32 128, i32 12, i32 71, i32 102, i32 146, ; 296..303
	i32 56, i32 103, i32 117, i32 48 ; 304..307
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
