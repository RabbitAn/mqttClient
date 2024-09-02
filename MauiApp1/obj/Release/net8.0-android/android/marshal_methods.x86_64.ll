; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [128 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [256 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 44
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 127
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 48
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 94
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 55
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 72
	i64 453419349103509061, ; 6: MQTTnet.dll => 0x64ade7ee59a7e45 => 50
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 119
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 87
	i64 805302231655005164, ; 9: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 60
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 76
	i64 1369545283391376210, ; 12: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 68
	i64 1476839205573959279, ; 13: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 100
	i64 1486715745332614827, ; 14: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 45
	i64 1513467482682125403, ; 15: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 126
	i64 1537168428375924959, ; 16: System.Threading.Thread.dll => 0x15551e8a954ae0df => 119
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 53
	i64 1628611045998245443, ; 18: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 65
	i64 1743969030606105336, ; 19: System.Memory.dll => 0x1833d297e88f2af8 => 96
	i64 1767386781656293639, ; 20: System.Private.Uri.dll => 0x188704e9f5582107 => 110
	i64 1795316252682057001, ; 21: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 52
	i64 1835311033149317475, ; 22: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 72
	i64 1881198190668717030, ; 24: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 25: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 46
	i64 1930726298510463061, ; 26: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 36
	i64 1981742497975770890, ; 27: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 64
	i64 2262844636196693701, ; 28: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 60
	i64 2287834202362508563, ; 29: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 80
	i64 2329709569556905518, ; 30: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 63
	i64 2470498323731680442, ; 31: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 56
	i64 2497223385847772520, ; 32: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 33: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 51
	i64 2602673633151553063, ; 34: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 35: System.Net.NameResolution => 0x2487b36034f808cb => 98
	i64 2656907746661064104, ; 36: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 39
	i64 2662981627730767622, ; 37: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2706075432581334785, ; 38: System.Net.WebSockets => 0x258de944be6c0701 => 107
	i64 2895129759130297543, ; 39: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017136373564924869, ; 40: System.Net.WebProxy => 0x29df058bd93f63c5 => 105
	i64 3017704767998173186, ; 41: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 76
	i64 3289520064315143713, ; 42: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 62
	i64 3311221304742556517, ; 43: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 108
	i64 3321269044039068031, ; 44: MauiApp1 => 0x2e1784994573297f => 79
	i64 3325875462027654285, ; 45: System.Runtime.Numerics => 0x2e27e21c8958b48d => 114
	i64 3328853167529574890, ; 46: System.Net.Sockets.dll => 0x2e327651a008c1ea => 103
	i64 3344514922410554693, ; 47: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 78
	i64 3429672777697402584, ; 48: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 48
	i64 3494946837667399002, ; 49: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 37
	i64 3522470458906976663, ; 50: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 73
	i64 3551103847008531295, ; 51: System.Private.CoreLib.dll => 0x31480e226177735f => 124
	i64 3567343442040498961, ; 52: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 53: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 54: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 38
	i64 3647754201059316852, ; 55: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 122
	i64 3655542548057982301, ; 56: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 37
	i64 3727469159507183293, ; 57: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 71
	i64 3869221888984012293, ; 58: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 41
	i64 3890352374528606784, ; 59: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 46
	i64 3933965368022646939, ; 60: System.Net.Requests => 0x369840a8bfadc09b => 101
	i64 3966267475168208030, ; 61: System.Memory => 0x370b03412596249e => 96
	i64 4070326265757318011, ; 62: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 63: System.Private.Xml.dll => 0x3887fb25779ae26e => 111
	i64 4120493066591692148, ; 64: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 65: System.ComponentModel => 0x39a7562737acb67e => 87
	i64 4187479170553454871, ; 66: System.Linq.Expressions => 0x3a1cea1e912fa117 => 94
	i64 4205801962323029395, ; 67: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 86
	i64 4360412976914417659, ; 68: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4477672992252076438, ; 69: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 121
	i64 4794310189461587505, ; 70: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 51
	i64 4795410492532947900, ; 71: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 73
	i64 4814660307502931973, ; 72: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 98
	i64 4853321196694829351, ; 73: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 113
	i64 4871824391508510238, ; 74: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 75: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 76: System.Collections.Specialized => 0x46d2fb5e161b6285 => 83
	i64 5182934613077526976, ; 77: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 83
	i64 5290786973231294105, ; 78: System.Runtime.Loader => 0x496ca6b869b72699 => 113
	i64 5471532531798518949, ; 79: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 80: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 81: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 92
	i64 5573260873512690141, ; 82: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 116
	i64 5692067934154308417, ; 83: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 75
	i64 5979151488806146654, ; 84: System.Formats.Asn1 => 0x52fa3699a489d25e => 91
	i64 6200764641006662125, ; 85: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6300676701234028427, ; 86: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 87: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 88: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 63
	i64 6471714727257221498, ; 89: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 90: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 91: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 59
	i64 6560151584539558821, ; 92: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 43
	i64 6743165466166707109, ; 93: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 94: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 90
	i64 6894844156784520562, ; 95: System.Numerics.Vectors => 0x5faf683aead1ad72 => 108
	i64 7270811800166795866, ; 96: System.Linq => 0x64e71ccf51a90a5a => 95
	i64 7377312882064240630, ; 97: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 86
	i64 7489048572193775167, ; 98: System.ObjectModel => 0x67ee71ff6b419e3f => 109
	i64 7654504624184590948, ; 99: System.Net.Http => 0x6a3a4366801b8264 => 97
	i64 7714652370974252055, ; 100: System.Private.CoreLib => 0x6b0ff375198b9c17 => 124
	i64 7735352534559001595, ; 101: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 77
	i64 7742555799473854801, ; 102: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 53
	i64 7975724199463739455, ; 104: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 105: System.Collections.dll => 0x6fe942efa61731bf => 84
	i64 8083354569033831015, ; 106: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 62
	i64 8087206902342787202, ; 107: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 89
	i64 8108129031893776750, ; 108: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 109: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 125
	i64 8185542183669246576, ; 110: System.Collections => 0x7198e33f4794aa70 => 84
	i64 8246048515196606205, ; 111: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 49
	i64 8368701292315763008, ; 112: System.Security.Cryptography => 0x7423997c6fd56140 => 116
	i64 8386351099740279196, ; 113: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 114: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 70
	i64 8408425347822646438, ; 115: MQTTnet => 0x74b0ba4dd95bf4a6 => 50
	i64 8518412311883997971, ; 116: System.Collections.Immutable => 0x76377add7c28e313 => 81
	i64 8563666267364444763, ; 117: System.Private.Uri => 0x76d841191140ca5b => 110
	i64 8626175481042262068, ; 118: Java.Interop => 0x77b654e585b55834 => 125
	i64 8639588376636138208, ; 119: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 69
	i64 8677882282824630478, ; 120: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 121: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 89
	i64 9045785047181495996, ; 122: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 123: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 75
	i64 9324707631942237306, ; 124: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 52
	i64 9363564275759486853, ; 125: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 126: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 127: System.Text.RegularExpressions => 0x860e407c9991dd9b => 117
	i64 9678050649315576968, ; 128: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 56
	i64 9702891218465930390, ; 129: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 82
	i64 9773637193738963987, ; 130: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 131: Mono.Android.dll => 0x881f890734e555e7 => 127
	i64 9956195530459977388, ; 132: Microsoft.Maui => 0x8a2b8315b36616ac => 47
	i64 10038780035334861115, ; 133: System.Net.Http.dll => 0x8b50e941206af13b => 97
	i64 10051358222726253779, ; 134: System.Private.Xml => 0x8b7d990c97ccccd3 => 111
	i64 10078727084704864206, ; 135: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 106
	i64 10092835686693276772, ; 136: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 45
	i64 10143853363526200146, ; 137: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 138: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 139: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 59
	i64 10406448008575299332, ; 140: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 78
	i64 10430153318873392755, ; 141: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 57
	i64 10506226065143327199, ; 142: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10761706286639228993, ; 143: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 144: System.Net.Primitives => 0x95ac8cfb68830758 => 100
	i64 11002576679268595294, ; 145: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 42
	i64 11009005086950030778, ; 146: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 47
	i64 11103970607964515343, ; 147: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 148: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 149: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 150: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 74
	i64 11220793807500858938, ; 151: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 152: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 43
	i64 11340910727871153756, ; 153: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 58
	i64 11485890710487134646, ; 154: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 112
	i64 11518296021396496455, ; 155: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 74
	i64 11530571088791430846, ; 157: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 41
	i64 11855031688536399763, ; 158: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12269460666702402136, ; 159: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 81
	i64 12341818387765915815, ; 160: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 35
	i64 12451044538927396471, ; 161: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 61
	i64 12466513435562512481, ; 162: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 66
	i64 12475113361194491050, ; 163: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 164: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 90
	i64 12538491095302438457, ; 165: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 54
	i64 12550732019250633519, ; 166: System.IO.Compression => 0xae2d28465e8e1b2f => 93
	i64 12700543734426720211, ; 167: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 55
	i64 12843321153144804894, ; 168: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 44
	i64 12859557719246324186, ; 169: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 104
	i64 12989346753972519995, ; 170: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 171: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13056519019444193772, ; 172: MauiApp1.dll => 0xb53212df2d1a49ec => 79
	i64 13343850469010654401, ; 173: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 126
	i64 13381594904270902445, ; 174: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 175: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 77
	i64 13540124433173649601, ; 176: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 177: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 71
	i64 13717397318615465333, ; 178: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 85
	i64 13881769479078963060, ; 179: System.Console.dll => 0xc0a5f3cade5c6774 => 88
	i64 13959074834287824816, ; 180: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 61
	i64 14124974489674258913, ; 181: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 54
	i64 14125464355221830302, ; 182: System.Threading.dll => 0xc407bafdbc707a9e => 120
	i64 14349907877893689639, ; 183: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 184: System.Net.Requests.dll => 0xc8afd8683afdece6 => 101
	i64 14464374589798375073, ; 185: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 186: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14556034074661724008, ; 187: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 35
	i64 14610046442689856844, ; 188: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14669215534098758659, ; 189: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 39
	i64 14690985099581930927, ; 190: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 121
	i64 14705122255218365489, ; 191: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 192: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 193: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 194: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 58
	i64 14904040806490515477, ; 195: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 196: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 40
	i64 14984936317414011727, ; 197: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 104
	i64 14987728460634540364, ; 198: System.IO.Compression.dll => 0xcfff1ba06622494c => 93
	i64 15015154896917945444, ; 199: System.Net.Security.dll => 0xd0608bd33642dc64 => 102
	i64 15076659072870671916, ; 200: System.ObjectModel.dll => 0xd13b0d8c1620662c => 109
	i64 15111608613780139878, ; 201: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 202: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 92
	i64 15133485256822086103, ; 203: System.Linq.dll => 0xd204f0a9127dd9d7 => 95
	i64 15203009853192377507, ; 204: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 205: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 38
	i64 15370334346939861994, ; 206: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 57
	i64 15391712275433856905, ; 207: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 40
	i64 15527772828719725935, ; 208: System.Console => 0xd77dbb1e38cd3d6f => 88
	i64 15536481058354060254, ; 209: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 210: System.Net.Sockets => 0xd7e790fe7a6dc536 => 103
	i64 15582737692548360875, ; 211: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 65
	i64 15609085926864131306, ; 212: System.dll => 0xd89e9cf3334914ea => 123
	i64 15661133872274321916, ; 213: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 122
	i64 15783653065526199428, ; 214: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 215: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 118
	i64 16018552496348375205, ; 216: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 99
	i64 16056281320585338352, ; 217: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 218: System => 0xe03056ea4e39aa26 => 123
	i64 16219561732052121626, ; 219: System.Net.Security => 0xe1177575db7c781a => 102
	i64 16288847719894691167, ; 220: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 221: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 42
	i64 16454459195343277943, ; 222: System.Net.NetworkInformation => 0xe459fb756d988f77 => 99
	i64 16648892297579399389, ; 223: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 36
	i64 16649148416072044166, ; 224: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 49
	i64 16677317093839702854, ; 225: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 70
	i64 16803648858859583026, ; 226: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16890310621557459193, ; 227: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 117
	i64 16933958494752847024, ; 228: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 105
	i64 16942731696432749159, ; 229: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 230: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 68
	i64 17008137082415910100, ; 231: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 82
	i64 17031351772568316411, ; 232: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 67
	i64 17062143951396181894, ; 233: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 85
	i64 17118171214553292978, ; 234: System.Threading.Channels => 0xed8ff6060fc420b2 => 118
	i64 17203614576212522419, ; 235: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17310278548634113468, ; 236: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17338386382517543202, ; 237: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 106
	i64 17342750010158924305, ; 238: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17509662556995089465, ; 239: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 107
	i64 17514990004910432069, ; 240: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 241: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17704177640604968747, ; 242: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 66
	i64 17710060891934109755, ; 243: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 64
	i64 17712670374920797664, ; 244: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 112
	i64 17777860260071588075, ; 245: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 114
	i64 17827813215687577648, ; 246: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 247: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 248: System.Threading => 0xfa28e87b91334681 => 120
	i64 18121036031235206392, ; 249: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 67
	i64 18146411883821974900, ; 250: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 91
	i64 18245806341561545090, ; 251: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 80
	i64 18305135509493619199, ; 252: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 69
	i64 18324163916253801303, ; 253: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 254: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 255: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [256 x i32] [
	i32 44, ; 0
	i32 127, ; 1
	i32 48, ; 2
	i32 94, ; 3
	i32 55, ; 4
	i32 72, ; 5
	i32 50, ; 6
	i32 119, ; 7
	i32 87, ; 8
	i32 12, ; 9
	i32 60, ; 10
	i32 76, ; 11
	i32 68, ; 12
	i32 100, ; 13
	i32 45, ; 14
	i32 126, ; 15
	i32 119, ; 16
	i32 53, ; 17
	i32 65, ; 18
	i32 96, ; 19
	i32 110, ; 20
	i32 52, ; 21
	i32 6, ; 22
	i32 72, ; 23
	i32 28, ; 24
	i32 46, ; 25
	i32 36, ; 26
	i32 64, ; 27
	i32 60, ; 28
	i32 80, ; 29
	i32 63, ; 30
	i32 56, ; 31
	i32 115, ; 32
	i32 51, ; 33
	i32 27, ; 34
	i32 98, ; 35
	i32 39, ; 36
	i32 2, ; 37
	i32 107, ; 38
	i32 7, ; 39
	i32 105, ; 40
	i32 76, ; 41
	i32 62, ; 42
	i32 108, ; 43
	i32 79, ; 44
	i32 114, ; 45
	i32 103, ; 46
	i32 78, ; 47
	i32 48, ; 48
	i32 37, ; 49
	i32 73, ; 50
	i32 124, ; 51
	i32 22, ; 52
	i32 115, ; 53
	i32 38, ; 54
	i32 122, ; 55
	i32 37, ; 56
	i32 71, ; 57
	i32 41, ; 58
	i32 46, ; 59
	i32 101, ; 60
	i32 96, ; 61
	i32 3, ; 62
	i32 111, ; 63
	i32 33, ; 64
	i32 87, ; 65
	i32 94, ; 66
	i32 86, ; 67
	i32 28, ; 68
	i32 121, ; 69
	i32 51, ; 70
	i32 73, ; 71
	i32 98, ; 72
	i32 113, ; 73
	i32 18, ; 74
	i32 26, ; 75
	i32 83, ; 76
	i32 83, ; 77
	i32 113, ; 78
	i32 26, ; 79
	i32 29, ; 80
	i32 92, ; 81
	i32 116, ; 82
	i32 75, ; 83
	i32 91, ; 84
	i32 23, ; 85
	i32 6, ; 86
	i32 34, ; 87
	i32 63, ; 88
	i32 7, ; 89
	i32 11, ; 90
	i32 59, ; 91
	i32 43, ; 92
	i32 19, ; 93
	i32 90, ; 94
	i32 108, ; 95
	i32 95, ; 96
	i32 86, ; 97
	i32 109, ; 98
	i32 97, ; 99
	i32 124, ; 100
	i32 77, ; 101
	i32 14, ; 102
	i32 53, ; 103
	i32 25, ; 104
	i32 84, ; 105
	i32 62, ; 106
	i32 89, ; 107
	i32 16, ; 108
	i32 125, ; 109
	i32 84, ; 110
	i32 49, ; 111
	i32 116, ; 112
	i32 31, ; 113
	i32 70, ; 114
	i32 50, ; 115
	i32 81, ; 116
	i32 110, ; 117
	i32 125, ; 118
	i32 69, ; 119
	i32 21, ; 120
	i32 89, ; 121
	i32 31, ; 122
	i32 75, ; 123
	i32 52, ; 124
	i32 5, ; 125
	i32 29, ; 126
	i32 117, ; 127
	i32 56, ; 128
	i32 82, ; 129
	i32 1, ; 130
	i32 127, ; 131
	i32 47, ; 132
	i32 97, ; 133
	i32 111, ; 134
	i32 106, ; 135
	i32 45, ; 136
	i32 3, ; 137
	i32 19, ; 138
	i32 59, ; 139
	i32 78, ; 140
	i32 57, ; 141
	i32 1, ; 142
	i32 33, ; 143
	i32 100, ; 144
	i32 42, ; 145
	i32 47, ; 146
	i32 12, ; 147
	i32 27, ; 148
	i32 8, ; 149
	i32 74, ; 150
	i32 15, ; 151
	i32 43, ; 152
	i32 58, ; 153
	i32 112, ; 154
	i32 13, ; 155
	i32 74, ; 156
	i32 41, ; 157
	i32 30, ; 158
	i32 81, ; 159
	i32 35, ; 160
	i32 61, ; 161
	i32 66, ; 162
	i32 34, ; 163
	i32 90, ; 164
	i32 54, ; 165
	i32 93, ; 166
	i32 55, ; 167
	i32 44, ; 168
	i32 104, ; 169
	i32 0, ; 170
	i32 21, ; 171
	i32 79, ; 172
	i32 126, ; 173
	i32 9, ; 174
	i32 77, ; 175
	i32 30, ; 176
	i32 71, ; 177
	i32 85, ; 178
	i32 88, ; 179
	i32 61, ; 180
	i32 54, ; 181
	i32 120, ; 182
	i32 23, ; 183
	i32 101, ; 184
	i32 24, ; 185
	i32 32, ; 186
	i32 35, ; 187
	i32 2, ; 188
	i32 39, ; 189
	i32 121, ; 190
	i32 16, ; 191
	i32 15, ; 192
	i32 32, ; 193
	i32 58, ; 194
	i32 0, ; 195
	i32 40, ; 196
	i32 104, ; 197
	i32 93, ; 198
	i32 102, ; 199
	i32 109, ; 200
	i32 17, ; 201
	i32 92, ; 202
	i32 95, ; 203
	i32 22, ; 204
	i32 38, ; 205
	i32 57, ; 206
	i32 40, ; 207
	i32 88, ; 208
	i32 4, ; 209
	i32 103, ; 210
	i32 65, ; 211
	i32 123, ; 212
	i32 122, ; 213
	i32 5, ; 214
	i32 118, ; 215
	i32 99, ; 216
	i32 24, ; 217
	i32 123, ; 218
	i32 102, ; 219
	i32 18, ; 220
	i32 42, ; 221
	i32 99, ; 222
	i32 36, ; 223
	i32 49, ; 224
	i32 70, ; 225
	i32 17, ; 226
	i32 117, ; 227
	i32 105, ; 228
	i32 25, ; 229
	i32 68, ; 230
	i32 82, ; 231
	i32 67, ; 232
	i32 85, ; 233
	i32 118, ; 234
	i32 20, ; 235
	i32 10, ; 236
	i32 106, ; 237
	i32 10, ; 238
	i32 107, ; 239
	i32 8, ; 240
	i32 20, ; 241
	i32 66, ; 242
	i32 64, ; 243
	i32 112, ; 244
	i32 114, ; 245
	i32 11, ; 246
	i32 4, ; 247
	i32 120, ; 248
	i32 67, ; 249
	i32 91, ; 250
	i32 80, ; 251
	i32 69, ; 252
	i32 14, ; 253
	i32 13, ; 254
	i32 9 ; 255
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
