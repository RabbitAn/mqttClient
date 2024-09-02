; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [128 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [256 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 99
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 98
	i32 38948123, ; 2: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39485524, ; 3: System.Net.WebSockets.dll => 0x25a8054 => 107
	i32 42244203, ; 4: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 119
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 7: Microsoft.Maui.Graphics.dll => 0x44bb714 => 49
	i32 83839681, ; 8: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 112
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 118
	i32 136584136, ; 11: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 12: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 142721839, ; 13: System.Net.WebHeaderCollection => 0x881c32f => 104
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 55
	i32 182336117, ; 15: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 73
	i32 205061960, ; 16: System.ComponentModel => 0xc38ff48 => 87
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 51
	i32 321963286, ; 19: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 62
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 119
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 96
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 24: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 84
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 61
	i32 456227837, ; 27: System.Web.HttpUtility.dll => 0x1b317bfd => 121
	i32 469710990, ; 28: System.dll => 0x1bff388e => 123
	i32 478296930, ; 29: MQTTnet => 0x1c823b62 => 50
	i32 489220957, ; 30: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 109
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 44
	i32 538707440, ; 33: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 41
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 59
	i32 627931235, ; 36: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 37: System.Collections.Concurrent => 0x2814a96c => 80
	i32 683518922, ; 38: System.Net.Security => 0x28bdabca => 102
	i32 713568204, ; 39: MauiApp1.dll => 0x2a882fcc => 79
	i32 722857257, ; 40: System.Runtime.Loader.dll => 0x2b15ed29 => 113
	i32 759454413, ; 41: System.Net.Requests => 0x2d445acd => 101
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 93
	i32 777317022, ; 43: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 44: Microsoft.Extensions.Options => 0x2f0980eb => 43
	i32 823281589, ; 45: System.Private.Uri.dll => 0x311247b5 => 110
	i32 830298997, ; 46: System.IO.Compression.Brotli => 0x317d5b75 => 92
	i32 869139383, ; 47: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 48: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 49: System.ComponentModel.Primitives.dll => 0x35e25008 => 85
	i32 918734561, ; 50: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 51: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 52: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 62
	i32 990727110, ; 53: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 54: System.Collections.dll => 0x3b2c715c => 84
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 72
	i32 1028951442, ; 56: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 52
	i32 1043950537, ; 58: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 59: System.Linq.Expressions.dll => 0x3e444eb4 => 94
	i32 1052210849, ; 60: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 64
	i32 1082857460, ; 61: System.ComponentModel.TypeConverter => 0x408b17f4 => 86
	i32 1084122840, ; 62: Xamarin.Kotlin.StdLib => 0x409e66d8 => 77
	i32 1098259244, ; 63: System => 0x41761b2c => 123
	i32 1108272742, ; 64: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 65: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 66: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 67: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 69
	i32 1214827643, ; 69: CommunityToolkit.Mvvm => 0x4868cc7b => 36
	i32 1260983243, ; 70: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 71: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 60
	i32 1308624726, ; 72: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 73: System.Linq => 0x4eed2679 => 95
	i32 1336711579, ; 74: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 75: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 76: Xamarin.AndroidX.SavedState => 0x52114ed3 => 72
	i32 1406073936, ; 77: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 56
	i32 1430672901, ; 78: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 79: System.Formats.Asn1.dll => 0x568cd628 => 91
	i32 1458022317, ; 80: System.Net.Security.dll => 0x56e7a7ad => 102
	i32 1461004990, ; 81: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 82: System.Collections.Immutable.dll => 0x5718a9ef => 81
	i32 1462112819, ; 83: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 84: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 53
	i32 1470490898, ; 85: Microsoft.Extensions.Primitives => 0x57a5e912 => 44
	i32 1479771757, ; 86: System.Collections.Immutable => 0x5833866d => 81
	i32 1480492111, ; 87: System.IO.Compression.Brotli.dll => 0x583e844f => 92
	i32 1526286932, ; 88: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 89: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 117
	i32 1618516317, ; 90: System.Net.WebSockets.Client.dll => 0x6078995d => 106
	i32 1622152042, ; 91: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 66
	i32 1624863272, ; 92: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 75
	i32 1634654947, ; 93: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 35
	i32 1636350590, ; 94: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 58
	i32 1639515021, ; 95: System.Net.Http.dll => 0x61b9038d => 97
	i32 1639986890, ; 96: System.Text.RegularExpressions => 0x61c036ca => 117
	i32 1657153582, ; 97: System.Runtime => 0x62c6282e => 115
	i32 1658251792, ; 98: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 76
	i32 1677501392, ; 99: System.Net.Primitives.dll => 0x63fca3d0 => 100
	i32 1678508291, ; 100: System.Net.WebSockets => 0x640c0103 => 107
	i32 1679769178, ; 101: System.Security.Cryptography => 0x641f3e5a => 116
	i32 1729485958, ; 102: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 54
	i32 1743415430, ; 103: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 104: System.Diagnostics.TraceSource.dll => 0x69239124 => 90
	i32 1766324549, ; 105: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 73
	i32 1770582343, ; 106: Microsoft.Extensions.Logging.dll => 0x6988f147 => 41
	i32 1780572499, ; 107: Mono.Android.Runtime.dll => 0x6a216153 => 126
	i32 1782862114, ; 108: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 109: Xamarin.AndroidX.Fragment => 0x6a96652d => 61
	i32 1793755602, ; 110: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 111: Xamarin.AndroidX.Loader => 0x6bcd3296 => 66
	i32 1813058853, ; 112: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 77
	i32 1813201214, ; 113: Xamarin.Google.Android.Material => 0x6c13413e => 76
	i32 1818569960, ; 114: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 70
	i32 1828688058, ; 115: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1853025655, ; 116: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 117: System.Linq.Expressions => 0x6ec71a65 => 94
	i32 1875935024, ; 118: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 119: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 120: System.Collections.NonGeneric.dll => 0x71dc7c8b => 82
	i32 1953182387, ; 121: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 122: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 37
	i32 2003115576, ; 123: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 124: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 64
	i32 2045470958, ; 125: System.Private.Xml => 0x79eb68ee => 111
	i32 2055257422, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 63
	i32 2066184531, ; 127: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 128: System.Diagnostics.TraceSource => 0x7b6f419e => 90
	i32 2079903147, ; 129: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 130: System.Numerics.Vectors => 0x7c9bf920 => 108
	i32 2127167465, ; 131: System.Console => 0x7ec9ffe9 => 88
	i32 2142473426, ; 132: System.Collections.Specialized => 0x7fb38cd2 => 83
	i32 2159891885, ; 133: Microsoft.Maui => 0x80bd55ad => 47
	i32 2169148018, ; 134: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 135: Microsoft.Extensions.Options.dll => 0x820d22b3 => 43
	i32 2192057212, ; 136: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 137: System.ObjectModel.dll => 0x82b6c85e => 109
	i32 2201107256, ; 138: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 78
	i32 2201231467, ; 139: System.Net.Http => 0x8334206b => 97
	i32 2207618523, ; 140: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 141: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 38
	i32 2279755925, ; 142: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 71
	i32 2295906218, ; 143: System.Net.Sockets => 0x88d8bfaa => 103
	i32 2303942373, ; 144: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 145: System.Private.CoreLib.dll => 0x896b7878 => 124
	i32 2353062107, ; 146: System.Net.Primitives => 0x8c40e0db => 100
	i32 2366048013, ; 147: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 148: System.Xml.ReaderWriter.dll => 0x8d24e767 => 122
	i32 2371007202, ; 149: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 37
	i32 2395872292, ; 150: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 151: System.Web.HttpUtility => 0x8f24faee => 121
	i32 2427813419, ; 152: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 153: System.Console.dll => 0x912896e5 => 88
	i32 2458678730, ; 154: System.Net.Sockets.dll => 0x928c75ca => 103
	i32 2475788418, ; 155: Java.Interop.dll => 0x93918882 => 125
	i32 2480646305, ; 156: Microsoft.Maui.Controls => 0x93dba8a1 => 45
	i32 2503351294, ; 157: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 158: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2576534780, ; 159: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 160: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 161: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 78
	i32 2617129537, ; 162: System.Private.Xml.dll => 0x9bfe3a41 => 111
	i32 2620871830, ; 163: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 58
	i32 2626831493, ; 164: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 165: System.Runtime.Loader => 0x9ec4cf01 => 113
	i32 2724373263, ; 166: System.Runtime.Numerics.dll => 0xa262a30f => 114
	i32 2732626843, ; 167: Xamarin.AndroidX.Activity => 0xa2e0939b => 51
	i32 2735172069, ; 168: System.Threading.Channels => 0xa30769e5 => 118
	i32 2737747696, ; 169: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 53
	i32 2740698338, ; 170: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 171: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 172: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 46
	i32 2764765095, ; 173: Microsoft.Maui.dll => 0xa4caf7a7 => 47
	i32 2778768386, ; 174: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 74
	i32 2785988530, ; 175: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 176: Microsoft.Maui.Graphics => 0xa7008e0b => 49
	i32 2810250172, ; 177: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 56
	i32 2853208004, ; 178: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 74
	i32 2861189240, ; 179: Microsoft.Maui.Essentials => 0xaa8a4878 => 48
	i32 2868488919, ; 180: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 35
	i32 2909740682, ; 181: System.Private.CoreLib => 0xad6f1e8a => 124
	i32 2916838712, ; 182: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 75
	i32 2919462931, ; 183: System.Numerics.Vectors.dll => 0xae037813 => 108
	i32 2959614098, ; 184: System.ComponentModel.dll => 0xb0682092 => 87
	i32 2978675010, ; 185: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 60
	i32 2997658596, ; 186: MQTTnet.dll => 0xb2aca3e4 => 50
	i32 3017953105, ; 187: MauiApp1 => 0xb3e24f51 => 79
	i32 3038032645, ; 188: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 189: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 190: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 67
	i32 3059408633, ; 191: Mono.Android.Runtime => 0xb65adef9 => 126
	i32 3059793426, ; 192: System.ComponentModel.Primitives => 0xb660be12 => 85
	i32 3103600923, ; 193: System.Formats.Asn1 => 0xb8fd311b => 91
	i32 3178803400, ; 194: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 68
	i32 3220365878, ; 195: System.Threading => 0xbff2e236 => 120
	i32 3258312781, ; 196: Xamarin.AndroidX.CardView => 0xc235e84d => 54
	i32 3305363605, ; 197: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 198: System.Net.Requests.dll => 0xc5b097e4 => 101
	i32 3317135071, ; 199: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 59
	i32 3346324047, ; 200: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 69
	i32 3357674450, ; 201: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 202: Xamarin.AndroidX.Core => 0xc86c06e3 => 57
	i32 3366347497, ; 203: Java.Interop => 0xc8a662e9 => 125
	i32 3374999561, ; 204: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 71
	i32 3381016424, ; 205: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 206: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 39
	i32 3458724246, ; 207: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 208: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 86
	i32 3476120550, ; 209: Mono.Android => 0xcf3163e6 => 127
	i32 3484440000, ; 210: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 211: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 212: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3598340787, ; 213: System.Net.WebSockets.Client => 0xd67a52b3 => 106
	i32 3608519521, ; 214: System.Linq.dll => 0xd715a361 => 95
	i32 3641597786, ; 215: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 63
	i32 3643446276, ; 216: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 217: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 68
	i32 3657292374, ; 218: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 38
	i32 3660523487, ; 219: System.Net.NetworkInformation => 0xda2f27df => 99
	i32 3672681054, ; 220: Mono.Android.dll => 0xdae8aa5e => 127
	i32 3700866549, ; 221: System.Net.WebProxy.dll => 0xdc96bdf5 => 105
	i32 3724971120, ; 222: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 67
	i32 3732100267, ; 223: System.Net.NameResolution => 0xde7354ab => 98
	i32 3748608112, ; 224: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 89
	i32 3751619990, ; 225: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 226: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 55
	i32 3792276235, ; 227: System.Collections.NonGeneric => 0xe2098b0b => 82
	i32 3802395368, ; 228: System.Collections.Specialized.dll => 0xe2a3f2e8 => 83
	i32 3819260425, ; 229: System.Net.WebProxy => 0xe3a54a09 => 105
	i32 3823082795, ; 230: System.Security.Cryptography.dll => 0xe3df9d2b => 116
	i32 3841636137, ; 231: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3849253459, ; 232: System.Runtime.InteropServices.dll => 0xe56ef253 => 112
	i32 3885497537, ; 233: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 104
	i32 3896106733, ; 234: System.Collections.Concurrent.dll => 0xe839deed => 80
	i32 3896760992, ; 235: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 57
	i32 3920221145, ; 236: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 237: System.Xml.ReaderWriter => 0xea213423 => 122
	i32 3931092270, ; 238: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 70
	i32 3955647286, ; 239: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 52
	i32 4025784931, ; 240: System.Memory => 0xeff49a63 => 96
	i32 4046471985, ; 241: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 46
	i32 4073602200, ; 242: System.Threading.dll => 0xf2ce3c98 => 120
	i32 4091086043, ; 243: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 244: Microsoft.Maui.Essentials.dll => 0xf40add04 => 48
	i32 4100113165, ; 245: System.Private.Uri => 0xf462c30d => 110
	i32 4103439459, ; 246: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 247: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 39
	i32 4150914736, ; 248: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 249: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 65
	i32 4213026141, ; 250: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 89
	i32 4249188766, ; 251: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 252: Microsoft.Maui.Controls.dll => 0xfea12dee => 45
	i32 4274623895, ; 253: CommunityToolkit.Mvvm.dll => 0xfec99597 => 36
	i32 4274976490, ; 254: System.Runtime.Numerics => 0xfecef6ea => 114
	i32 4292120959 ; 255: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 65
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [256 x i32] [
	i32 99, ; 0
	i32 98, ; 1
	i32 0, ; 2
	i32 107, ; 3
	i32 9, ; 4
	i32 119, ; 5
	i32 33, ; 6
	i32 49, ; 7
	i32 17, ; 8
	i32 112, ; 9
	i32 118, ; 10
	i32 32, ; 11
	i32 25, ; 12
	i32 104, ; 13
	i32 55, ; 14
	i32 73, ; 15
	i32 87, ; 16
	i32 30, ; 17
	i32 51, ; 18
	i32 8, ; 19
	i32 62, ; 20
	i32 119, ; 21
	i32 96, ; 22
	i32 34, ; 23
	i32 28, ; 24
	i32 84, ; 25
	i32 61, ; 26
	i32 121, ; 27
	i32 123, ; 28
	i32 50, ; 29
	i32 6, ; 30
	i32 109, ; 31
	i32 44, ; 32
	i32 27, ; 33
	i32 41, ; 34
	i32 59, ; 35
	i32 19, ; 36
	i32 80, ; 37
	i32 102, ; 38
	i32 79, ; 39
	i32 113, ; 40
	i32 101, ; 41
	i32 93, ; 42
	i32 25, ; 43
	i32 43, ; 44
	i32 110, ; 45
	i32 92, ; 46
	i32 10, ; 47
	i32 24, ; 48
	i32 85, ; 49
	i32 21, ; 50
	i32 14, ; 51
	i32 62, ; 52
	i32 23, ; 53
	i32 84, ; 54
	i32 72, ; 55
	i32 40, ; 56
	i32 52, ; 57
	i32 4, ; 58
	i32 94, ; 59
	i32 64, ; 60
	i32 86, ; 61
	i32 77, ; 62
	i32 123, ; 63
	i32 26, ; 64
	i32 20, ; 65
	i32 16, ; 66
	i32 22, ; 67
	i32 69, ; 68
	i32 36, ; 69
	i32 2, ; 70
	i32 60, ; 71
	i32 11, ; 72
	i32 95, ; 73
	i32 31, ; 74
	i32 32, ; 75
	i32 72, ; 76
	i32 56, ; 77
	i32 0, ; 78
	i32 91, ; 79
	i32 102, ; 80
	i32 6, ; 81
	i32 81, ; 82
	i32 93, ; 83
	i32 53, ; 84
	i32 44, ; 85
	i32 81, ; 86
	i32 92, ; 87
	i32 30, ; 88
	i32 117, ; 89
	i32 106, ; 90
	i32 66, ; 91
	i32 75, ; 92
	i32 35, ; 93
	i32 58, ; 94
	i32 97, ; 95
	i32 117, ; 96
	i32 115, ; 97
	i32 76, ; 98
	i32 100, ; 99
	i32 107, ; 100
	i32 116, ; 101
	i32 54, ; 102
	i32 1, ; 103
	i32 90, ; 104
	i32 73, ; 105
	i32 41, ; 106
	i32 126, ; 107
	i32 17, ; 108
	i32 61, ; 109
	i32 9, ; 110
	i32 66, ; 111
	i32 77, ; 112
	i32 76, ; 113
	i32 70, ; 114
	i32 42, ; 115
	i32 26, ; 116
	i32 94, ; 117
	i32 8, ; 118
	i32 2, ; 119
	i32 82, ; 120
	i32 13, ; 121
	i32 37, ; 122
	i32 5, ; 123
	i32 64, ; 124
	i32 111, ; 125
	i32 63, ; 126
	i32 4, ; 127
	i32 90, ; 128
	i32 115, ; 129
	i32 108, ; 130
	i32 88, ; 131
	i32 83, ; 132
	i32 47, ; 133
	i32 12, ; 134
	i32 43, ; 135
	i32 42, ; 136
	i32 109, ; 137
	i32 78, ; 138
	i32 97, ; 139
	i32 14, ; 140
	i32 38, ; 141
	i32 71, ; 142
	i32 103, ; 143
	i32 18, ; 144
	i32 124, ; 145
	i32 100, ; 146
	i32 12, ; 147
	i32 122, ; 148
	i32 37, ; 149
	i32 13, ; 150
	i32 121, ; 151
	i32 10, ; 152
	i32 88, ; 153
	i32 103, ; 154
	i32 125, ; 155
	i32 45, ; 156
	i32 16, ; 157
	i32 11, ; 158
	i32 15, ; 159
	i32 20, ; 160
	i32 78, ; 161
	i32 111, ; 162
	i32 58, ; 163
	i32 15, ; 164
	i32 113, ; 165
	i32 114, ; 166
	i32 51, ; 167
	i32 118, ; 168
	i32 53, ; 169
	i32 1, ; 170
	i32 21, ; 171
	i32 46, ; 172
	i32 47, ; 173
	i32 74, ; 174
	i32 27, ; 175
	i32 49, ; 176
	i32 56, ; 177
	i32 74, ; 178
	i32 48, ; 179
	i32 35, ; 180
	i32 124, ; 181
	i32 75, ; 182
	i32 108, ; 183
	i32 87, ; 184
	i32 60, ; 185
	i32 50, ; 186
	i32 79, ; 187
	i32 34, ; 188
	i32 7, ; 189
	i32 67, ; 190
	i32 126, ; 191
	i32 85, ; 192
	i32 91, ; 193
	i32 68, ; 194
	i32 120, ; 195
	i32 54, ; 196
	i32 7, ; 197
	i32 101, ; 198
	i32 59, ; 199
	i32 69, ; 200
	i32 24, ; 201
	i32 57, ; 202
	i32 125, ; 203
	i32 71, ; 204
	i32 3, ; 205
	i32 39, ; 206
	i32 22, ; 207
	i32 86, ; 208
	i32 127, ; 209
	i32 23, ; 210
	i32 31, ; 211
	i32 33, ; 212
	i32 106, ; 213
	i32 95, ; 214
	i32 63, ; 215
	i32 28, ; 216
	i32 68, ; 217
	i32 38, ; 218
	i32 99, ; 219
	i32 127, ; 220
	i32 105, ; 221
	i32 67, ; 222
	i32 98, ; 223
	i32 89, ; 224
	i32 3, ; 225
	i32 55, ; 226
	i32 82, ; 227
	i32 83, ; 228
	i32 105, ; 229
	i32 116, ; 230
	i32 40, ; 231
	i32 112, ; 232
	i32 104, ; 233
	i32 80, ; 234
	i32 57, ; 235
	i32 19, ; 236
	i32 122, ; 237
	i32 70, ; 238
	i32 52, ; 239
	i32 96, ; 240
	i32 46, ; 241
	i32 120, ; 242
	i32 5, ; 243
	i32 48, ; 244
	i32 110, ; 245
	i32 29, ; 246
	i32 39, ; 247
	i32 29, ; 248
	i32 65, ; 249
	i32 89, ; 250
	i32 18, ; 251
	i32 45, ; 252
	i32 36, ; 253
	i32 114, ; 254
	i32 65 ; 255
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
