; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [139 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [278 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 108
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 107
	i32 38948123, ; 2: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39485524, ; 3: System.Net.WebSockets.dll => 0x25a8054 => 116
	i32 42244203, ; 4: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 130
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 7: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 83839681, ; 8: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 121
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 129
	i32 136584136, ; 11: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 12: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 142721839, ; 13: System.Net.WebHeaderCollection => 0x881c32f => 113
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 58
	i32 182336117, ; 15: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 205061960, ; 16: System.ComponentModel => 0xc38ff48 => 95
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 54
	i32 321963286, ; 19: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 65
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 130
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 104
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 24: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 92
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 456227837, ; 27: System.Web.HttpUtility.dll => 0x1b317bfd => 132
	i32 469710990, ; 28: System.dll => 0x1bff388e => 134
	i32 478296930, ; 29: MQTTnet => 0x1c823b62 => 52
	i32 489220957, ; 30: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 118
	i32 504143952, ; 32: Plugin.LocalNotification.dll => 0x1e0ca050 => 53
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 538707440, ; 34: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 42
	i32 597488923, ; 36: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 62
	i32 627931235, ; 38: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 39: System.Text.Encodings.Web.dll => 0x27787397 => 126
	i32 663517072, ; 40: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 77
	i32 672442732, ; 41: System.Collections.Concurrent => 0x2814a96c => 88
	i32 683518922, ; 42: System.Net.Security => 0x28bdabca => 111
	i32 713568204, ; 43: MauiApp1.dll => 0x2a882fcc => 87
	i32 722857257, ; 44: System.Runtime.Loader.dll => 0x2b15ed29 => 122
	i32 759454413, ; 45: System.Net.Requests => 0x2d445acd => 110
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 101
	i32 777317022, ; 47: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 48: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 823281589, ; 49: System.Private.Uri.dll => 0x311247b5 => 119
	i32 830298997, ; 50: System.IO.Compression.Brotli => 0x317d5b75 => 100
	i32 869139383, ; 51: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 52: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 53: System.ComponentModel.Primitives.dll => 0x35e25008 => 93
	i32 918734561, ; 54: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 55: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 65
	i32 990727110, ; 57: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 58: System.Collections.dll => 0x3b2c715c => 92
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 75
	i32 1028951442, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 55
	i32 1043950537, ; 62: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 63: System.Linq.Expressions.dll => 0x3e444eb4 => 102
	i32 1052210849, ; 64: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 67
	i32 1082857460, ; 65: System.ComponentModel.TypeConverter => 0x408b17f4 => 94
	i32 1084122840, ; 66: Xamarin.Kotlin.StdLib => 0x409e66d8 => 85
	i32 1098259244, ; 67: System => 0x41761b2c => 134
	i32 1108272742, ; 68: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 69: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 70: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 71: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1214827643, ; 73: CommunityToolkit.Mvvm => 0x4868cc7b => 37
	i32 1260983243, ; 74: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 75: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1308624726, ; 76: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 77: System.Linq => 0x4eed2679 => 103
	i32 1336711579, ; 78: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 79: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 75
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 59
	i32 1430672901, ; 82: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 83: System.Formats.Asn1.dll => 0x568cd628 => 99
	i32 1458022317, ; 84: System.Net.Security.dll => 0x56e7a7ad => 111
	i32 1461004990, ; 85: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 86: System.Collections.Immutable.dll => 0x5718a9ef => 89
	i32 1462112819, ; 87: System.IO.Compression.dll => 0x57261233 => 101
	i32 1469204771, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 56
	i32 1470490898, ; 89: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1479771757, ; 90: System.Collections.Immutable => 0x5833866d => 89
	i32 1480492111, ; 91: System.IO.Compression.Brotli.dll => 0x583e844f => 100
	i32 1524747670, ; 92: Plugin.LocalNotification => 0x5ae1cd96 => 53
	i32 1526286932, ; 93: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 94: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 128
	i32 1618516317, ; 95: System.Net.WebSockets.Client.dll => 0x6078995d => 115
	i32 1622152042, ; 96: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 69
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 79
	i32 1634654947, ; 98: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 99: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 61
	i32 1639515021, ; 100: System.Net.Http.dll => 0x61b9038d => 105
	i32 1639986890, ; 101: System.Text.RegularExpressions => 0x61c036ca => 128
	i32 1657153582, ; 102: System.Runtime => 0x62c6282e => 124
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 80
	i32 1677501392, ; 104: System.Net.Primitives.dll => 0x63fca3d0 => 109
	i32 1678508291, ; 105: System.Net.WebSockets => 0x640c0103 => 116
	i32 1679769178, ; 106: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1729485958, ; 107: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 57
	i32 1743415430, ; 108: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 109: System.Diagnostics.TraceSource.dll => 0x69239124 => 98
	i32 1766324549, ; 110: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1770582343, ; 111: Microsoft.Extensions.Logging.dll => 0x6988f147 => 42
	i32 1780572499, ; 112: Mono.Android.Runtime.dll => 0x6a216153 => 137
	i32 1782862114, ; 113: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 114: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1793755602, ; 115: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 116: Xamarin.AndroidX.Loader => 0x6bcd3296 => 69
	i32 1813058853, ; 117: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 85
	i32 1813201214, ; 118: Xamarin.Google.Android.Material => 0x6c13413e => 80
	i32 1818569960, ; 119: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1828688058, ; 120: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 43
	i32 1853025655, ; 121: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 122: System.Linq.Expressions => 0x6ec71a65 => 102
	i32 1875935024, ; 123: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 124: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1908813208, ; 125: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 82
	i32 1910275211, ; 126: System.Collections.NonGeneric.dll => 0x71dc7c8b => 90
	i32 1953182387, ; 127: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 128: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 129: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 130: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 67
	i32 2045470958, ; 131: System.Private.Xml => 0x79eb68ee => 120
	i32 2055257422, ; 132: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 66
	i32 2066184531, ; 133: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 134: System.Diagnostics.TraceSource => 0x7b6f419e => 98
	i32 2079903147, ; 135: System.Runtime.dll => 0x7bf8cdab => 124
	i32 2090596640, ; 136: System.Numerics.Vectors => 0x7c9bf920 => 117
	i32 2127167465, ; 137: System.Console => 0x7ec9ffe9 => 96
	i32 2129483829, ; 138: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 81
	i32 2142473426, ; 139: System.Collections.Specialized => 0x7fb38cd2 => 91
	i32 2159891885, ; 140: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 141: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 142: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2192057212, ; 143: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 43
	i32 2193016926, ; 144: System.ObjectModel.dll => 0x82b6c85e => 118
	i32 2201107256, ; 145: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 86
	i32 2201231467, ; 146: System.Net.Http => 0x8334206b => 105
	i32 2207618523, ; 147: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 148: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2279755925, ; 149: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2295906218, ; 150: System.Net.Sockets => 0x88d8bfaa => 112
	i32 2298471582, ; 151: System.Net.Mail => 0x88ffe49e => 106
	i32 2303942373, ; 152: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 153: System.Private.CoreLib.dll => 0x896b7878 => 135
	i32 2353062107, ; 154: System.Net.Primitives => 0x8c40e0db => 109
	i32 2366048013, ; 155: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 156: System.Xml.ReaderWriter.dll => 0x8d24e767 => 133
	i32 2371007202, ; 157: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2395872292, ; 158: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 159: System.Web.HttpUtility => 0x8f24faee => 132
	i32 2427813419, ; 160: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 161: System.Console.dll => 0x912896e5 => 96
	i32 2458678730, ; 162: System.Net.Sockets.dll => 0x928c75ca => 112
	i32 2475788418, ; 163: Java.Interop.dll => 0x93918882 => 136
	i32 2480646305, ; 164: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2503351294, ; 165: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 166: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 167: System.Text.Encodings.Web => 0x9930ee42 => 126
	i32 2576534780, ; 168: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 169: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 170: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 86
	i32 2617129537, ; 171: System.Private.Xml.dll => 0x9bfe3a41 => 120
	i32 2620871830, ; 172: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 61
	i32 2626831493, ; 173: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 174: System.Runtime.Loader => 0x9ec4cf01 => 122
	i32 2724373263, ; 175: System.Runtime.Numerics.dll => 0xa262a30f => 123
	i32 2732626843, ; 176: Xamarin.AndroidX.Activity => 0xa2e0939b => 54
	i32 2735172069, ; 177: System.Threading.Channels => 0xa30769e5 => 129
	i32 2737747696, ; 178: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 56
	i32 2740698338, ; 179: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 180: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 181: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 182: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2778768386, ; 183: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 78
	i32 2785988530, ; 184: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 185: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2810250172, ; 186: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 59
	i32 2847418871, ; 187: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 81
	i32 2853208004, ; 188: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 78
	i32 2861189240, ; 189: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868488919, ; 190: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 191: System.Private.CoreLib => 0xad6f1e8a => 135
	i32 2916838712, ; 192: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 79
	i32 2919462931, ; 193: System.Numerics.Vectors.dll => 0xae037813 => 117
	i32 2959614098, ; 194: System.ComponentModel.dll => 0xb0682092 => 95
	i32 2978675010, ; 195: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 2997658596, ; 196: MQTTnet.dll => 0xb2aca3e4 => 52
	i32 3017953105, ; 197: MauiApp1 => 0xb3e24f51 => 87
	i32 3038032645, ; 198: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 199: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 200: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3058099980, ; 201: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 84
	i32 3059408633, ; 202: Mono.Android.Runtime => 0xb65adef9 => 137
	i32 3059793426, ; 203: System.ComponentModel.Primitives => 0xb660be12 => 93
	i32 3103600923, ; 204: System.Formats.Asn1 => 0xb8fd311b => 99
	i32 3178803400, ; 205: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 71
	i32 3220365878, ; 206: System.Threading => 0xbff2e236 => 131
	i32 3230466174, ; 207: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 82
	i32 3258312781, ; 208: Xamarin.AndroidX.CardView => 0xc235e84d => 57
	i32 3305363605, ; 209: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 210: System.Net.Requests.dll => 0xc5b097e4 => 110
	i32 3317135071, ; 211: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 62
	i32 3346324047, ; 212: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3357674450, ; 213: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 214: System.Text.Json => 0xc82afec1 => 127
	i32 3362522851, ; 215: Xamarin.AndroidX.Core => 0xc86c06e3 => 60
	i32 3366347497, ; 216: Java.Interop => 0xc8a662e9 => 136
	i32 3374999561, ; 217: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3381016424, ; 218: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 219: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3452344032, ; 220: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 46
	i32 3458724246, ; 221: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 222: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 94
	i32 3476120550, ; 223: Mono.Android => 0xcf3163e6 => 138
	i32 3484440000, ; 224: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 225: System.Text.Json.dll => 0xcfbaacae => 127
	i32 3494395880, ; 226: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 83
	i32 3580758918, ; 227: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 228: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3598340787, ; 229: System.Net.WebSockets.Client => 0xd67a52b3 => 115
	i32 3608519521, ; 230: System.Linq.dll => 0xd715a361 => 103
	i32 3641597786, ; 231: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 66
	i32 3643446276, ; 232: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 233: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 71
	i32 3657292374, ; 234: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3660523487, ; 235: System.Net.NetworkInformation => 0xda2f27df => 108
	i32 3672681054, ; 236: Mono.Android.dll => 0xdae8aa5e => 138
	i32 3700866549, ; 237: System.Net.WebProxy.dll => 0xdc96bdf5 => 114
	i32 3724971120, ; 238: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3732100267, ; 239: System.Net.NameResolution => 0xde7354ab => 107
	i32 3748608112, ; 240: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 97
	i32 3751619990, ; 241: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 242: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 58
	i32 3792276235, ; 243: System.Collections.NonGeneric => 0xe2098b0b => 90
	i32 3800979733, ; 244: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 46
	i32 3802395368, ; 245: System.Collections.Specialized.dll => 0xe2a3f2e8 => 91
	i32 3817368567, ; 246: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3819260425, ; 247: System.Net.WebProxy => 0xe3a54a09 => 114
	i32 3823082795, ; 248: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3841636137, ; 249: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 250: System.Net.Mail.dll => 0xe52378b9 => 106
	i32 3849253459, ; 251: System.Runtime.InteropServices.dll => 0xe56ef253 => 121
	i32 3885497537, ; 252: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 113
	i32 3896106733, ; 253: System.Collections.Concurrent.dll => 0xe839deed => 88
	i32 3896760992, ; 254: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 60
	i32 3920221145, ; 255: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3921031405, ; 256: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 77
	i32 3928044579, ; 257: System.Xml.ReaderWriter => 0xea213423 => 133
	i32 3931092270, ; 258: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3955647286, ; 259: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 55
	i32 3967165417, ; 260: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 83
	i32 3970018735, ; 261: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 84
	i32 4025784931, ; 262: System.Memory => 0xeff49a63 => 104
	i32 4046471985, ; 263: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4073602200, ; 264: System.Threading.dll => 0xf2ce3c98 => 131
	i32 4091086043, ; 265: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 266: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4100113165, ; 267: System.Private.Uri => 0xf462c30d => 119
	i32 4103439459, ; 268: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 269: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4150914736, ; 270: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 271: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 68
	i32 4213026141, ; 272: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 97
	i32 4249188766, ; 273: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 274: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4274623895, ; 275: CommunityToolkit.Mvvm.dll => 0xfec99597 => 37
	i32 4274976490, ; 276: System.Runtime.Numerics => 0xfecef6ea => 123
	i32 4292120959 ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 68
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [278 x i32] [
	i32 108, ; 0
	i32 107, ; 1
	i32 0, ; 2
	i32 116, ; 3
	i32 9, ; 4
	i32 130, ; 5
	i32 33, ; 6
	i32 51, ; 7
	i32 17, ; 8
	i32 121, ; 9
	i32 129, ; 10
	i32 32, ; 11
	i32 25, ; 12
	i32 113, ; 13
	i32 58, ; 14
	i32 76, ; 15
	i32 95, ; 16
	i32 30, ; 17
	i32 54, ; 18
	i32 8, ; 19
	i32 65, ; 20
	i32 130, ; 21
	i32 104, ; 22
	i32 34, ; 23
	i32 28, ; 24
	i32 92, ; 25
	i32 64, ; 26
	i32 132, ; 27
	i32 134, ; 28
	i32 52, ; 29
	i32 6, ; 30
	i32 118, ; 31
	i32 53, ; 32
	i32 45, ; 33
	i32 27, ; 34
	i32 42, ; 35
	i32 35, ; 36
	i32 62, ; 37
	i32 19, ; 38
	i32 126, ; 39
	i32 77, ; 40
	i32 88, ; 41
	i32 111, ; 42
	i32 87, ; 43
	i32 122, ; 44
	i32 110, ; 45
	i32 101, ; 46
	i32 25, ; 47
	i32 44, ; 48
	i32 119, ; 49
	i32 100, ; 50
	i32 10, ; 51
	i32 24, ; 52
	i32 93, ; 53
	i32 21, ; 54
	i32 14, ; 55
	i32 65, ; 56
	i32 23, ; 57
	i32 92, ; 58
	i32 75, ; 59
	i32 41, ; 60
	i32 55, ; 61
	i32 4, ; 62
	i32 102, ; 63
	i32 67, ; 64
	i32 94, ; 65
	i32 85, ; 66
	i32 134, ; 67
	i32 26, ; 68
	i32 20, ; 69
	i32 16, ; 70
	i32 22, ; 71
	i32 72, ; 72
	i32 37, ; 73
	i32 2, ; 74
	i32 63, ; 75
	i32 11, ; 76
	i32 103, ; 77
	i32 31, ; 78
	i32 32, ; 79
	i32 75, ; 80
	i32 59, ; 81
	i32 0, ; 82
	i32 99, ; 83
	i32 111, ; 84
	i32 6, ; 85
	i32 89, ; 86
	i32 101, ; 87
	i32 56, ; 88
	i32 45, ; 89
	i32 89, ; 90
	i32 100, ; 91
	i32 53, ; 92
	i32 30, ; 93
	i32 128, ; 94
	i32 115, ; 95
	i32 69, ; 96
	i32 79, ; 97
	i32 36, ; 98
	i32 61, ; 99
	i32 105, ; 100
	i32 128, ; 101
	i32 124, ; 102
	i32 80, ; 103
	i32 109, ; 104
	i32 116, ; 105
	i32 125, ; 106
	i32 57, ; 107
	i32 1, ; 108
	i32 98, ; 109
	i32 76, ; 110
	i32 42, ; 111
	i32 137, ; 112
	i32 17, ; 113
	i32 64, ; 114
	i32 9, ; 115
	i32 69, ; 116
	i32 85, ; 117
	i32 80, ; 118
	i32 73, ; 119
	i32 43, ; 120
	i32 26, ; 121
	i32 102, ; 122
	i32 8, ; 123
	i32 2, ; 124
	i32 82, ; 125
	i32 90, ; 126
	i32 13, ; 127
	i32 38, ; 128
	i32 5, ; 129
	i32 67, ; 130
	i32 120, ; 131
	i32 66, ; 132
	i32 4, ; 133
	i32 98, ; 134
	i32 124, ; 135
	i32 117, ; 136
	i32 96, ; 137
	i32 81, ; 138
	i32 91, ; 139
	i32 49, ; 140
	i32 12, ; 141
	i32 44, ; 142
	i32 43, ; 143
	i32 118, ; 144
	i32 86, ; 145
	i32 105, ; 146
	i32 14, ; 147
	i32 39, ; 148
	i32 74, ; 149
	i32 112, ; 150
	i32 106, ; 151
	i32 18, ; 152
	i32 135, ; 153
	i32 109, ; 154
	i32 12, ; 155
	i32 133, ; 156
	i32 38, ; 157
	i32 13, ; 158
	i32 132, ; 159
	i32 10, ; 160
	i32 96, ; 161
	i32 112, ; 162
	i32 136, ; 163
	i32 47, ; 164
	i32 16, ; 165
	i32 11, ; 166
	i32 126, ; 167
	i32 15, ; 168
	i32 20, ; 169
	i32 86, ; 170
	i32 120, ; 171
	i32 61, ; 172
	i32 15, ; 173
	i32 122, ; 174
	i32 123, ; 175
	i32 54, ; 176
	i32 129, ; 177
	i32 56, ; 178
	i32 1, ; 179
	i32 21, ; 180
	i32 48, ; 181
	i32 49, ; 182
	i32 78, ; 183
	i32 27, ; 184
	i32 51, ; 185
	i32 59, ; 186
	i32 81, ; 187
	i32 78, ; 188
	i32 50, ; 189
	i32 36, ; 190
	i32 135, ; 191
	i32 79, ; 192
	i32 117, ; 193
	i32 95, ; 194
	i32 63, ; 195
	i32 52, ; 196
	i32 87, ; 197
	i32 34, ; 198
	i32 7, ; 199
	i32 70, ; 200
	i32 84, ; 201
	i32 137, ; 202
	i32 93, ; 203
	i32 99, ; 204
	i32 71, ; 205
	i32 131, ; 206
	i32 82, ; 207
	i32 57, ; 208
	i32 7, ; 209
	i32 110, ; 210
	i32 62, ; 211
	i32 72, ; 212
	i32 24, ; 213
	i32 127, ; 214
	i32 60, ; 215
	i32 136, ; 216
	i32 74, ; 217
	i32 3, ; 218
	i32 40, ; 219
	i32 46, ; 220
	i32 22, ; 221
	i32 94, ; 222
	i32 138, ; 223
	i32 23, ; 224
	i32 127, ; 225
	i32 83, ; 226
	i32 31, ; 227
	i32 33, ; 228
	i32 115, ; 229
	i32 103, ; 230
	i32 66, ; 231
	i32 28, ; 232
	i32 71, ; 233
	i32 39, ; 234
	i32 108, ; 235
	i32 138, ; 236
	i32 114, ; 237
	i32 70, ; 238
	i32 107, ; 239
	i32 97, ; 240
	i32 3, ; 241
	i32 58, ; 242
	i32 90, ; 243
	i32 46, ; 244
	i32 91, ; 245
	i32 35, ; 246
	i32 114, ; 247
	i32 125, ; 248
	i32 41, ; 249
	i32 106, ; 250
	i32 121, ; 251
	i32 113, ; 252
	i32 88, ; 253
	i32 60, ; 254
	i32 19, ; 255
	i32 77, ; 256
	i32 133, ; 257
	i32 73, ; 258
	i32 55, ; 259
	i32 83, ; 260
	i32 84, ; 261
	i32 104, ; 262
	i32 48, ; 263
	i32 131, ; 264
	i32 5, ; 265
	i32 50, ; 266
	i32 119, ; 267
	i32 29, ; 268
	i32 40, ; 269
	i32 29, ; 270
	i32 68, ; 271
	i32 97, ; 272
	i32 18, ; 273
	i32 47, ; 274
	i32 37, ; 275
	i32 123, ; 276
	i32 68 ; 277
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
