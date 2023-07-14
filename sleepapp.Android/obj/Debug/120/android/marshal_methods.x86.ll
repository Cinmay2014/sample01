; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [308 x i32] [
	i32 30589159, ; 0: ExcelDataReader => 0x1d2c0e7 => 30
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 95
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 126
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 44
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 121
	i32 62942293, ; 5: sleepapp.Android => 0x3c06c55 => 0
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 110
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 3
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 110
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 134
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 75
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 112
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 73
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 4
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 90
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 6
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 145
	i32 246610117, ; 17: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 148
	i32 261689757, ; 18: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 78
	i32 278686392, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 94
	i32 280482487, ; 20: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 88
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 65
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 59
	i32 331603304, ; 23: SixLabors.Fonts => 0x13c3dd68 => 49
	i32 342366114, ; 24: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 92
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 57
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 77
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 120
	i32 442565967, ; 28: System.Collections => 0x1a61054f => 7
	i32 450948140, ; 29: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 87
	i32 465024909, ; 30: AWSSDK.CognitoIdentity => 0x1bb7b78d => 18
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 43
	i32 469710990, ; 32: System.dll => 0x1bff388e => 54
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 88
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 99
	i32 501000162, ; 35: Prism.dll => 0x1ddca7e2 => 46
	i32 504143952, ; 36: Plugin.LocalNotification.dll => 0x1e0ca050 => 45
	i32 513247710, ; 37: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 41
	i32 526420162, ; 38: System.Transactions.dll => 0x1f6088c2 => 140
	i32 527452488, ; 39: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 134
	i32 539058512, ; 40: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 545304856, ; 41: System.Runtime.Extensions => 0x2080b118 => 8
	i32 548916678, ; 42: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 35
	i32 571352814, ; 43: AWSSDK.S3.dll => 0x220e26ee => 23
	i32 583021779, ; 44: Prism.DryIoc.Forms => 0x22c034d3 => 47
	i32 605376203, ; 45: System.IO.Compression.FileSystem => 0x24154ecb => 143
	i32 627609679, ; 46: Xamarin.AndroidX.CustomView => 0x2568904f => 83
	i32 663517072, ; 47: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 117
	i32 666292255, ; 48: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 70
	i32 690569205, ; 49: System.Xml.Linq.dll => 0x29293ff5 => 64
	i32 691348768, ; 50: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 136
	i32 700284507, ; 51: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 131
	i32 720511267, ; 52: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 135
	i32 725851412, ; 53: I18N.West.dll => 0x2b439d14 => 153
	i32 757182308, ; 54: AWSSDK.CognitoIdentity.dll => 0x2d21af64 => 18
	i32 775507847, ; 55: System.IO.Compression => 0x2e394f87 => 55
	i32 789151979, ; 56: Microsoft.Extensions.Options => 0x2f0980eb => 40
	i32 809851609, ; 57: System.Drawing.Common.dll => 0x30455ad9 => 142
	i32 843511501, ; 58: Xamarin.AndroidX.Print => 0x3246f6cd => 106
	i32 877678880, ; 59: System.Globalization.dll => 0x34505120 => 6
	i32 928116545, ; 60: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 126
	i32 955402788, ; 61: Newtonsoft.Json => 0x38f24a24 => 44
	i32 956575887, ; 62: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 135
	i32 967690846, ; 63: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 92
	i32 974778368, ; 64: FormsViewGroup.dll => 0x3a19f000 => 32
	i32 992768348, ; 65: System.Collections.dll => 0x3b2c715c => 7
	i32 1012816738, ; 66: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 109
	i32 1028951442, ; 67: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 36
	i32 1035644815, ; 68: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 69
	i32 1042160112, ; 69: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 123
	i32 1052210849, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 96
	i32 1067749262, ; 71: sleepapp.dll => 0x3fa48f8e => 50
	i32 1083751839, ; 72: System.IO.Packaging => 0x4098bd9f => 56
	i32 1084122840, ; 73: Xamarin.Kotlin.StdLib => 0x409e66d8 => 133
	i32 1098259244, ; 74: System => 0x41761b2c => 54
	i32 1175144683, ; 75: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 115
	i32 1178241025, ; 76: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 103
	i32 1204270330, ; 77: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 70
	i32 1264511973, ; 78: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 111
	i32 1267360935, ; 79: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 116
	i32 1275534314, ; 80: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 136
	i32 1293217323, ; 81: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 85
	i32 1324164729, ; 82: System.Linq => 0x4eed2679 => 14
	i32 1338318188, ; 83: ExcelNumberFormat.dll => 0x4fc51d6c => 31
	i32 1338781641, ; 84: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 26
	i32 1364015309, ; 85: System.IO => 0x514d38cd => 17
	i32 1365406463, ; 86: System.ServiceModel.Internals.dll => 0x516272ff => 146
	i32 1376866003, ; 87: Xamarin.AndroidX.SavedState => 0x52114ed3 => 109
	i32 1379779777, ; 88: System.Resources.ResourceManager => 0x523dc4c1 => 5
	i32 1381666986, ; 89: ExcelDataReader.DataSet.dll => 0x525a90aa => 29
	i32 1381953428, ; 90: AWSSDK.DynamoDBv2.dll => 0x525eef94 => 21
	i32 1395857551, ; 91: Xamarin.AndroidX.Media.dll => 0x5333188f => 100
	i32 1406073936, ; 92: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 79
	i32 1411638395, ; 93: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 61
	i32 1428437620, ; 94: AWSSDK.Lambda.dll => 0x55243a74 => 22
	i32 1457743152, ; 95: System.Runtime.Extensions.dll => 0x56e36530 => 8
	i32 1460219004, ; 96: Xamarin.Forms.Xaml => 0x57092c7c => 124
	i32 1462112819, ; 97: System.IO.Compression.dll => 0x57261233 => 55
	i32 1469204771, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 68
	i32 1470490898, ; 99: Microsoft.Extensions.Primitives => 0x57a5e912 => 41
	i32 1524747670, ; 100: Plugin.LocalNotification => 0x5ae1cd96 => 45
	i32 1543031311, ; 101: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 10
	i32 1550322496, ; 102: System.Reflection.Extensions.dll => 0x5c680b40 => 13
	i32 1582372066, ; 103: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 84
	i32 1592978981, ; 104: System.Runtime.Serialization.dll => 0x5ef2ee25 => 16
	i32 1622152042, ; 105: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 98
	i32 1624863272, ; 106: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 119
	i32 1636350590, ; 107: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 82
	i32 1639515021, ; 108: System.Net.Http.dll => 0x61b9038d => 58
	i32 1639986890, ; 109: System.Text.RegularExpressions => 0x61c036ca => 10
	i32 1657153582, ; 110: System.Runtime => 0x62c6282e => 62
	i32 1658241508, ; 111: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 113
	i32 1658251792, ; 112: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 125
	i32 1663627514, ; 113: DryIoc => 0x6328f0fa => 27
	i32 1670060433, ; 114: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 78
	i32 1670326403, ; 115: AWSSDK.Core.dll => 0x638f2883 => 20
	i32 1698840827, ; 116: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 132
	i32 1701541528, ; 117: System.Diagnostics.Debug.dll => 0x656b7698 => 4
	i32 1726116996, ; 118: System.Reflection.dll => 0x66e27484 => 11
	i32 1727570389, ; 119: AWSSDK.Lambda => 0x66f8a1d5 => 22
	i32 1729485958, ; 120: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 74
	i32 1765942094, ; 121: System.Reflection.Extensions => 0x6942234e => 13
	i32 1766324549, ; 122: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 112
	i32 1770582343, ; 123: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1776026572, ; 124: System.Core.dll => 0x69dc03cc => 52
	i32 1788241197, ; 125: Xamarin.AndroidX.Fragment => 0x6a96652d => 87
	i32 1796167890, ; 126: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 35
	i32 1808609942, ; 127: Xamarin.AndroidX.Loader => 0x6bcd3296 => 98
	i32 1813058853, ; 128: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 133
	i32 1813201214, ; 129: Xamarin.Google.Android.Material => 0x6c13413e => 125
	i32 1818569960, ; 130: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 104
	i32 1828688058, ; 131: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 38
	i32 1849271627, ; 132: Prism.Forms.dll => 0x6e39a54b => 48
	i32 1856505197, ; 133: Irony => 0x6ea8056d => 33
	i32 1867746548, ; 134: Xamarin.Essentials.dll => 0x6f538cf4 => 120
	i32 1870277092, ; 135: System.Reflection.Primitives => 0x6f7a29e4 => 15
	i32 1878053835, ; 136: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 124
	i32 1885316902, ; 137: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 71
	i32 1900610850, ; 138: System.Resources.ResourceManager.dll => 0x71490522 => 5
	i32 1908813208, ; 139: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 128
	i32 1919157823, ; 140: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 101
	i32 1983156543, ; 141: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 132
	i32 1988094259, ; 142: AWSSDK.SecurityToken.dll => 0x767fe933 => 24
	i32 1990936260, ; 143: AWSSDK.CognitoIdentityProvider.dll => 0x76ab46c4 => 19
	i32 2011961780, ; 144: System.Buffers.dll => 0x77ec19b4 => 51
	i32 2019465201, ; 145: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 96
	i32 2028864565, ; 146: Essential.Interfaces.dll => 0x78ee0435 => 28
	i32 2050199934, ; 147: ExcelDataReader.DataSet => 0x7a33917e => 29
	i32 2055257422, ; 148: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 93
	i32 2066202781, ; 149: Prism => 0x7b27c09d => 46
	i32 2067863569, ; 150: I18N.dll => 0x7b411811 => 152
	i32 2076137363, ; 151: AWSSDK.S3 => 0x7bbf5793 => 23
	i32 2079903147, ; 152: System.Runtime.dll => 0x7bf8cdab => 62
	i32 2090596640, ; 153: System.Numerics.Vectors => 0x7c9bf920 => 60
	i32 2097448633, ; 154: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 89
	i32 2126786730, ; 155: Xamarin.Forms.Platform.Android => 0x7ec430aa => 122
	i32 2129483829, ; 156: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 127
	i32 2166698602, ; 157: ClosedXML => 0x8125326a => 25
	i32 2181898931, ; 158: Microsoft.Extensions.Options.dll => 0x820d22b3 => 40
	i32 2192057212, ; 159: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 38
	i32 2201107256, ; 160: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 137
	i32 2201231467, ; 161: System.Net.Http => 0x8334206b => 58
	i32 2217644978, ; 162: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 115
	i32 2244775296, ; 163: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 99
	i32 2256548716, ; 164: Xamarin.AndroidX.MultiDex => 0x8680336c => 101
	i32 2261435625, ; 165: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 91
	i32 2279755925, ; 166: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 108
	i32 2315684594, ; 167: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 66
	i32 2409053734, ; 168: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 105
	i32 2465532216, ; 169: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 77
	i32 2471841756, ; 170: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 171: Java.Interop.dll => 0x93918882 => 34
	i32 2501346920, ; 172: System.Data.DataSetExtensions => 0x95178668 => 141
	i32 2505896520, ; 173: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 95
	i32 2538310050, ; 174: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 148
	i32 2538318350, ; 175: Irony.dll => 0x974baa0e => 33
	i32 2581274016, ; 176: I18N.West => 0x99db1da0 => 153
	i32 2581819634, ; 177: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 116
	i32 2605712449, ; 178: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 137
	i32 2618712057, ; 179: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 149
	i32 2620871830, ; 180: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 82
	i32 2624644809, ; 181: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 86
	i32 2633051222, ; 182: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 94
	i32 2693849962, ; 183: System.IO.dll => 0xa090e36a => 17
	i32 2701096212, ; 184: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 113
	i32 2724373263, ; 185: System.Runtime.Numerics.dll => 0xa262a30f => 9
	i32 2732626843, ; 186: Xamarin.AndroidX.Activity => 0xa2e0939b => 65
	i32 2737747696, ; 187: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 68
	i32 2765824710, ; 188: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 150
	i32 2766581644, ; 189: Xamarin.Forms.Core => 0xa4e6af8c => 121
	i32 2770495804, ; 190: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 131
	i32 2777032189, ; 191: sleepapp => 0xa58625fd => 50
	i32 2778768386, ; 192: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 118
	i32 2792073544, ; 193: Prism.DryIoc.Forms.dll => 0xa66ba948 => 47
	i32 2810250172, ; 194: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 79
	i32 2819470561, ; 195: System.Xml.dll => 0xa80db4e1 => 63
	i32 2847418871, ; 196: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 127
	i32 2853208004, ; 197: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 118
	i32 2855708567, ; 198: Xamarin.AndroidX.Transition => 0xaa36a797 => 114
	i32 2877542466, ; 199: ClosedXML.dll => 0xab83d042 => 25
	i32 2901442782, ; 200: System.Reflection => 0xacf080de => 11
	i32 2903344695, ; 201: System.ComponentModel.Composition => 0xad0d8637 => 144
	i32 2904610611, ; 202: XLParser => 0xad20d733 => 138
	i32 2905242038, ; 203: mscorlib.dll => 0xad2a79b6 => 43
	i32 2916838712, ; 204: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 119
	i32 2919462931, ; 205: System.Numerics.Vectors.dll => 0xae037813 => 60
	i32 2921128767, ; 206: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 67
	i32 2932668441, ; 207: ExcelDataReader.dll => 0xaeccf819 => 30
	i32 2978675010, ; 208: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 85
	i32 3016983068, ; 209: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 111
	i32 3024354802, ; 210: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 90
	i32 3044182254, ; 211: FormsViewGroup => 0xb57288ee => 32
	i32 3057625584, ; 212: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 102
	i32 3058099980, ; 213: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 130
	i32 3111772706, ; 214: System.Runtime.Serialization => 0xb979e222 => 16
	i32 3118851116, ; 215: ExcelNumberFormat => 0xb9e5e42c => 31
	i32 3124832203, ; 216: System.Threading.Tasks.Extensions => 0xba4127cb => 2
	i32 3143283668, ; 217: AWSSDK.SecurityToken => 0xbb5ab3d4 => 24
	i32 3159123045, ; 218: System.Reflection.Primitives.dll => 0xbc4c6465 => 15
	i32 3178908327, ; 219: SixLabors.Fonts.dll => 0xbd7a4aa7 => 49
	i32 3204380047, ; 220: System.Data.dll => 0xbefef58f => 139
	i32 3211777861, ; 221: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 84
	i32 3220365878, ; 222: System.Threading => 0xbff2e236 => 12
	i32 3230466174, ; 223: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 128
	i32 3247949154, ; 224: Mono.Security => 0xc197c562 => 151
	i32 3258312781, ; 225: Xamarin.AndroidX.CardView => 0xc235e84d => 74
	i32 3265893370, ; 226: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 2
	i32 3267021929, ; 227: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 72
	i32 3317135071, ; 228: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 83
	i32 3317144872, ; 229: System.Data => 0xc5b79d28 => 139
	i32 3340431453, ; 230: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 71
	i32 3345895724, ; 231: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 107
	i32 3346324047, ; 232: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 103
	i32 3348939120, ; 233: AWSSDK.CognitoIdentityProvider => 0xc79cc170 => 19
	i32 3353484488, ; 234: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 89
	i32 3362522851, ; 235: Xamarin.AndroidX.Core => 0xc86c06e3 => 81
	i32 3366347497, ; 236: Java.Interop => 0xc8a662e9 => 34
	i32 3374999561, ; 237: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 108
	i32 3395150330, ; 238: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 61
	i32 3404865022, ; 239: System.ServiceModel.Internals => 0xcaf21dfe => 146
	i32 3407950092, ; 240: sleepapp.Android.dll => 0xcb21310c => 0
	i32 3428513518, ; 241: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3429136800, ; 242: System.Xml => 0xcc6479a0 => 63
	i32 3430777524, ; 243: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 244: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 86
	i32 3457240403, ; 245: AWSSDK.Core => 0xce114d53 => 20
	i32 3476120550, ; 246: Mono.Android => 0xcf3163e6 => 42
	i32 3486566296, ; 247: System.Transactions => 0xcfd0c798 => 140
	i32 3493954962, ; 248: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 76
	i32 3494395880, ; 249: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 129
	i32 3501239056, ; 250: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 72
	i32 3509114376, ; 251: System.Xml.Linq => 0xd128d608 => 64
	i32 3536029504, ; 252: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 122
	i32 3567349600, ; 253: System.ComponentModel.Composition.dll => 0xd4a16f60 => 144
	i32 3579244613, ; 254: I18N => 0xd556f045 => 152
	i32 3608519521, ; 255: System.Linq.dll => 0xd715a361 => 14
	i32 3618140916, ; 256: Xamarin.AndroidX.Preference => 0xd7a872f4 => 105
	i32 3627220390, ; 257: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 106
	i32 3632359727, ; 258: Xamarin.Forms.Platform => 0xd881692f => 123
	i32 3633644679, ; 259: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 67
	i32 3641597786, ; 260: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 93
	i32 3672681054, ; 261: Mono.Android.dll => 0xdae8aa5e => 42
	i32 3676310014, ; 262: System.Web.Services.dll => 0xdb2009fe => 145
	i32 3682565725, ; 263: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 73
	i32 3684561358, ; 264: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 76
	i32 3689375977, ; 265: System.Drawing.Common => 0xdbe768e9 => 142
	i32 3706696989, ; 266: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 80
	i32 3718780102, ; 267: Xamarin.AndroidX.Annotation => 0xdda814c6 => 66
	i32 3724971120, ; 268: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 102
	i32 3748608112, ; 269: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 53
	i32 3758932259, ; 270: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 91
	i32 3784861889, ; 271: AWSSDK.DynamoDBv2 => 0xe19868c1 => 21
	i32 3786282454, ; 272: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 75
	i32 3822443793, ; 273: DocumentFormat.OpenXml => 0xe3d5dd11 => 26
	i32 3822602673, ; 274: Xamarin.AndroidX.Media => 0xe3d849b1 => 100
	i32 3829621856, ; 275: System.Numerics.dll => 0xe4436460 => 59
	i32 3841636137, ; 276: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 36
	i32 3849253459, ; 277: System.Runtime.InteropServices.dll => 0xe56ef253 => 3
	i32 3885922214, ; 278: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 114
	i32 3888767677, ; 279: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 107
	i32 3896760992, ; 280: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 81
	i32 3904638161, ; 281: XLParser.dll => 0xe8bc0cd1 => 138
	i32 3920810846, ; 282: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 143
	i32 3921031405, ; 283: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 117
	i32 3931092270, ; 284: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 104
	i32 3945713374, ; 285: System.Data.DataSetExtensions.dll => 0xeb2ecede => 141
	i32 3952357212, ; 286: System.IO.Packaging.dll => 0xeb942f5c => 56
	i32 3953953790, ; 287: System.Text.Encoding.CodePages => 0xebac8bfe => 150
	i32 3955647286, ; 288: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 69
	i32 3967165417, ; 289: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 129
	i32 3970018735, ; 290: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 130
	i32 4025784931, ; 291: System.Memory => 0xeff49a63 => 57
	i32 4054681211, ; 292: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 147
	i32 4073602200, ; 293: System.Threading.dll => 0xf2ce3c98 => 12
	i32 4085261167, ; 294: Prism.Forms => 0xf380236f => 48
	i32 4105002889, ; 295: Mono.Security.dll => 0xf4ad5f89 => 151
	i32 4126470640, ; 296: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4147896353, ; 297: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 147
	i32 4151237749, ; 298: System.Core => 0xf76edc75 => 52
	i32 4161255271, ; 299: System.Reflection.TypeExtensions => 0xf807b767 => 149
	i32 4165582995, ; 300: DryIoc.dll => 0xf849c093 => 27
	i32 4182413190, ; 301: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 97
	i32 4213026141, ; 302: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 53
	i32 4256097574, ; 303: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 80
	i32 4260525087, ; 304: System.Buffers => 0xfdf2741f => 51
	i32 4274976490, ; 305: System.Runtime.Numerics => 0xfecef6ea => 9
	i32 4292120959, ; 306: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 97
	i32 4293553716 ; 307: Essential.Interfaces => 0xffea6e34 => 28
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [308 x i32] [
	i32 30, i32 95, i32 126, i32 44, i32 121, i32 0, i32 110, i32 3, ; 0..7
	i32 110, i32 134, i32 75, i32 112, i32 73, i32 4, i32 90, i32 6, ; 8..15
	i32 145, i32 148, i32 78, i32 94, i32 88, i32 65, i32 59, i32 49, ; 16..23
	i32 92, i32 57, i32 77, i32 120, i32 7, i32 87, i32 18, i32 43, ; 24..31
	i32 54, i32 88, i32 99, i32 46, i32 45, i32 41, i32 140, i32 134, ; 32..39
	i32 39, i32 8, i32 35, i32 23, i32 47, i32 143, i32 83, i32 117, ; 40..47
	i32 70, i32 64, i32 136, i32 131, i32 135, i32 153, i32 18, i32 55, ; 48..55
	i32 40, i32 142, i32 106, i32 6, i32 126, i32 44, i32 135, i32 92, ; 56..63
	i32 32, i32 7, i32 109, i32 36, i32 69, i32 123, i32 96, i32 50, ; 64..71
	i32 56, i32 133, i32 54, i32 115, i32 103, i32 70, i32 111, i32 116, ; 72..79
	i32 136, i32 85, i32 14, i32 31, i32 26, i32 17, i32 146, i32 109, ; 80..87
	i32 5, i32 29, i32 21, i32 100, i32 79, i32 61, i32 22, i32 8, ; 88..95
	i32 124, i32 55, i32 68, i32 41, i32 45, i32 10, i32 13, i32 84, ; 96..103
	i32 16, i32 98, i32 119, i32 82, i32 58, i32 10, i32 62, i32 113, ; 104..111
	i32 125, i32 27, i32 78, i32 20, i32 132, i32 4, i32 11, i32 22, ; 112..119
	i32 74, i32 13, i32 112, i32 39, i32 52, i32 87, i32 35, i32 98, ; 120..127
	i32 133, i32 125, i32 104, i32 38, i32 48, i32 33, i32 120, i32 15, ; 128..135
	i32 124, i32 71, i32 5, i32 128, i32 101, i32 132, i32 24, i32 19, ; 136..143
	i32 51, i32 96, i32 28, i32 29, i32 93, i32 46, i32 152, i32 23, ; 144..151
	i32 62, i32 60, i32 89, i32 122, i32 127, i32 25, i32 40, i32 38, ; 152..159
	i32 137, i32 58, i32 115, i32 99, i32 101, i32 91, i32 108, i32 66, ; 160..167
	i32 105, i32 77, i32 1, i32 34, i32 141, i32 95, i32 148, i32 33, ; 168..175
	i32 153, i32 116, i32 137, i32 149, i32 82, i32 86, i32 94, i32 17, ; 176..183
	i32 113, i32 9, i32 65, i32 68, i32 150, i32 121, i32 131, i32 50, ; 184..191
	i32 118, i32 47, i32 79, i32 63, i32 127, i32 118, i32 114, i32 25, ; 192..199
	i32 11, i32 144, i32 138, i32 43, i32 119, i32 60, i32 67, i32 30, ; 200..207
	i32 85, i32 111, i32 90, i32 32, i32 102, i32 130, i32 16, i32 31, ; 208..215
	i32 2, i32 24, i32 15, i32 49, i32 139, i32 84, i32 12, i32 128, ; 216..223
	i32 151, i32 74, i32 2, i32 72, i32 83, i32 139, i32 71, i32 107, ; 224..231
	i32 103, i32 19, i32 89, i32 81, i32 34, i32 108, i32 61, i32 146, ; 232..239
	i32 0, i32 37, i32 63, i32 1, i32 86, i32 20, i32 42, i32 140, ; 240..247
	i32 76, i32 129, i32 72, i32 64, i32 122, i32 144, i32 152, i32 14, ; 248..255
	i32 105, i32 106, i32 123, i32 67, i32 93, i32 42, i32 145, i32 73, ; 256..263
	i32 76, i32 142, i32 80, i32 66, i32 102, i32 53, i32 91, i32 21, ; 264..271
	i32 75, i32 26, i32 100, i32 59, i32 36, i32 3, i32 114, i32 107, ; 272..279
	i32 81, i32 138, i32 143, i32 117, i32 104, i32 141, i32 56, i32 150, ; 280..287
	i32 69, i32 129, i32 130, i32 57, i32 147, i32 12, i32 48, i32 151, ; 288..295
	i32 37, i32 147, i32 52, i32 149, i32 27, i32 97, i32 53, i32 80, ; 296..303
	i32 51, i32 9, i32 97, i32 28 ; 304..307
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
