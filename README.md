liuchangxiang@h-partners.com


问题单号	Enno_No	SG_Tag	Enno_Msg	DEV	PV	现场PV	Case	Case数量	Reason	Issue	修复状态	详细说明	预估解决时间		
											（定位中/修复中/差异/已完成/未复现）			回归状态	备注
DTS2025101608974	E0022	W175	DefinedParamNotUsed	李龙	majie	蒋蕊	B4_176	1	1误报1漏报	#47068	已完成	支持针对E0022 parameter出现的特殊情况	2025.10.17		
DTS2025101617418	E0027	W495	InoutNotSet	程君	kaiyang	蒋蕊	B4_102	1	1误报1漏报	#47093	差异	elint和22版sg报的完全一致  18版复现是对象不匹配，不是误报漏报，和凯阳确认过	2025.10.17	pass	
DTS2025101619804	E0027	W495	InoutNotSet	程君	kaiyang	蒋蕊	B4_103	1	1漏报	#47094	差异	elint和22版sg报的完全一致  18版复现	2025.10.17	pass	
DTS2025101620433	E0149	STARC05-2.3.6.2b	PosEdgeUsedInAsyncRS	陈谢天	kaiyang	张凯阳	B4_502	1	1误报	#47070	已完成	rule检查逻辑问题，已重构	2025.10.17	pass	
DTS2025101618023	E0149	STARC05-2.3.6.2b	PosEdgeUsedInAsyncRS	陈谢天	kaiyang	张凯阳	B4_128	3	3漏报	#47071	差异	因为elint会预先进行always综合错误检测，所以被阻塞了	2025.10.16	pass	
							B4_180								
							B4_198								
DTS2025101620345	E0033	W240	DeclaredInputNotRead	程君	majie	熊刘玲	B4_172	2	误报	#47095	已完成	错误的敏感列表格式错误，elint读取不出来，认为变量没有被读	2025.10.20		
							B4_173								
DTS2025101620783	E0033	W240	DeclaredInputNotRead	程君	majie	熊刘玲	B4_078	2	误报	#47097	B4_078 已完成	B4_078 E0033 增加 inst .* 处理	2025.10.20		
							B4_351				B4_351 未复现	B4_351 elint和22版sg报的完全一致，18版也和elint 完全一致（已经请凯阳调查原因）			
DTS2025101621120	E0094	W182g	NetDeclWithTri0	吴俊毅	kaiyang	陈海洋	B4_336	2	漏报tri0类型	#47077	已完成	漏检测dataDecl中的net	2025.10.17		
							B4_376								
DTS2025101619057	E0095	W182h	NetDeclWithTri1	吴俊毅	kaiyang	陈海洋	B4_337	2	漏报tri1类型	#47078	已完成	漏检测dataDecl中的net	2025.10.17		
							B4_454								
DTS2025101622795	E0096	W182k	NetDeclWithTrireg	吴俊毅	kaiyang	陈海洋	B4_338	2	漏报trireg类型	#47079	已完成	漏检测dataDecl中的net	2025.10.17		
							B4_455								
DTS2025101623667	E0118	W17	BusRangeInSensNotFullUsed	吴俊毅	xianlu_majie	陈海洋	B4_105	2	漏报多位宽	#47083	已完成	在genfor下面使用的变量，展开之后带有hier，不被当成在同一个always list	2025.10.20		
							B4_168								
DTS2025101623927	E0136	W456a	AllBitsNotUsedInBlock	王柯杰	xianlu_majie	王涵	B4_176	4	sgbug：涉及2条误报，1条漏报，涉及3个case（B4_195/B4_210/B4_376）	#47075	B4_176,B4_210：已完成	B4_176：always_ff不应该被检查，lint需要修复；	2025.10.21		
							B4_210		误报：涉及1条误报，涉及1个case（B4_176），报告了时序逻辑中的敏感列表信号		B4_376,B4_195：差异	B4_210：always_ff不应该被检查，lint需要修复；			
							B4_376					B4_376：lint误报，因为elint考虑了deadcode，而sg没有考虑deadcode，此为差异			
							B4_195					B4_195：lint漏报，因为sg对敏感列表中常量被read的情况总是会报告，此为差异			
DTS2025101621206	E0151	W122	SigNotInSensList	王柯杰	xianlu_majie	张凯阳	B4_037	2	误报2个	#47076	差异	B4_037：lint误报，因为sg对某些信号read但没有出现在敏感列表的不报，初步认为是sg的bug	2025.10.17	pass	
							B4_053					B4_053：lint误报，因为sg对某些信号read但没有出现在敏感列表的不报，初步认为是sg的bug			
DTS2025101622566	E0151	W122	SigNotInSensList	王柯杰	xianlu_majie	张凯阳	B4_054	1	对象不匹配1个	#47137	差异	B4_054：lint对象不匹配；因为sg对某些信号read但没有出现在敏感列表的不报，初步认为是sg的bug	2025.10.17	pass	
DTS2025101625499	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_107	15		#47112	版本差异	B4_107：elint漏报，但在22版sg实际行为和19版本不一致，elint和22版一致，所以认为是差异；	2025.10.17		
							B4_158					....			
							B4_083					B4_448同上；			
							B4_349								
							B4_042					大部分位漏报，根本原因在于W241在2019版sg上的行为存在较大问题，而我们与2022版sg一致，应为版本差异			
							B4_070								
							B4_215								
							B4_250								
							B4_252								
							B4_351								
							B4_365								
							B4_376								
							B4_408								
							B4_414								
							B4_448								
DTS2025101632177	E0036	STARC05-1.1.4.6a	OutputTiedToConst	王柯杰	majie	蒋蕊	B4_372	1		#47115	综合差异	B4_372：综合差异，检查输出是否从常值连接，lint仅有out_z第0位连接常值，sg中out_z全连接常值；	2025.10.17	pass	
DTS2025101632715	E0036	STARC05-1.1.4.6a	OutputTiedToConst	王柯杰	majie	蒋蕊	B4_379	1		#47117	综合差异	B4_379：综合差异，检查输出是否从常值连接，lint中dout是常量0和din经过与门相连，而sg中dout是与常量0相连；	2025.10.17	pass	
DTS2025101624510	E0065	W443	XUsedInBasedNum	王柯杰	majie	刘瑞风	B4_376	1	漏报2条	#47119	差异	B4_376：elint漏报2条，因为elint考虑if的deadcode，而sg不考虑，此为差异	2025.10.17		
DTS2025101624227	E0065	W443	XUsedInBasedNum	王柯杰	majie	刘瑞风	B4_391	1	误报1条	#47120	已完成	B4_391：elint误报1条，lint现在都不检查delay，而sg的bug导致不检查赋值左侧的delay，只检查右侧的delay，对于该case中赋值左侧delay情况来说需要修复	2025.10.21		
DTS2025101623856	E0065	W443	XUsedInBasedNum	王柯杰	majie	刘瑞风	B4_392	1	漏报1条	#47121	差异	B4_392：elint漏报1条，lint现在都不检查delay，而sg的bug导致不检查赋值左侧的delay，只检查右侧的delay，对于该case中赋值右侧delay情况来说是差异	2025.10.21		
DTS2025101625287	E0067	W444	ZQUsedInBasedNum	王柯杰	majie	刘瑞风	B4_391	1	一条误报	#47122	已完成	B4_391：elint误报1条，lint现在都不检查delay，而sg的bug导致不检查赋值左侧的delay，只检查右侧的delay，对于该case中赋值左侧delay情况来说需要修复	2025.10.21		
DTS2025101632732	E0084	ResetName	RSNameNonstandard	李龙	changxiang	刘昌祥	B4_037	1	一条误报	#47113	差异	sg ResetName对于三元表达式推断成同步ff的写法且out被用作reset的情况支持不好，我们可以认到	2025.10.20		
DTS2025101631827	E0089	TriStateName    	TristateNameNonstandard	吴俊毅	majie	刘瑞风	B4_318	2	两条误报	#47128	差异	B4_318: elint bus合并之后跟定义的位宽相同，则不报index	2025.10.17	fail	
							B4_372					B4_372: 综合差异			
DTS2025101632538	E0089	TriStateName    	TristateNameNonstandard	吴俊毅	majie	刘瑞风	B4_371	2	两条漏报	#47129	差异	B4_371: 综合差异	2025.10.17	fail	
							B4_376					B4_376: 行号差异			
DTS2025101634516	E0089	TriStateName    	TristateNameNonstandard	吴俊毅	majie	刘瑞风	B4_451	2	七条误报，三条漏报	#47130	差异	B4_451: 综合差异	2025.10.17	fail	
							B4_452					B4_452: 综合差异			
DTS2025101626595	E0134	W456	NotAllBitsUsedInBlock	李龙	xianlu_majie	陈海洋	B4_088	5	误报漏报两条；行号差异；1case	#47114	已完成	B4_088: sg报在always那一行 elint报在event那一行，已修复	2025.10.20		
							B4_195		漏报3条；3case			B4_195: elint和18版本/22版本行为一致，经现场pv确认现场回来的结果有问题，无需修复			
							B4_210		误报1条，sgbug；1case			B4_210: sg对always_ff支持不好，报不出，记作差异			
							B4_343					B4_343: sg会检查写在@后的event类型的signal是否后续被wait()调用，elint不支持，已修复			
							B4_458					B4_458: 同B4_343，已修复			
DTS2025101628300	E0180	SYNTH_5230	LoopIterExceedMax	程君	kaiyang	陈海洋	B4_166	2	漏报两条	#47118	已完成	支持forever	2025.10.20		
							B4_321								
DTS2025101631500	E0331	HangingInstInput-ML	HangingInstInput	王柯杰	changxiang	尚一航	B4_414	2	行号不同	#47131	差异	报的对象是primitive类型，该对象在SG是不能see through的，但在elint可以	2025.10.17		
							B4_203					B4_203报的对象和个数无问题，elint行号报在inst例化行，SG报在声明端口连接关系行			
DTS2025101628715	E0331	HangingInstInput-ML	HangingInstInput	王柯杰	changxiang	尚一航	B4_205	4	B4_205漏报1条	#47132	已完成	检查逻辑有误，只有连接到具体的comb inst才算drive（排除buf），去掉多驱不报的情况	2025.10.17		
							B4_058		B4_058漏报1条						
							B4_083		B4_083漏报7条						
							B4_088		B4_088漏报3条						
DTS2025101714528	E0036	STARC05-1.1.4.6a	OutputTiedToConst	王柯杰	majie	蒋蕊	B4_280	1	漏报1条	#47162	综合差异	B4_280：综合差异，检查输出是否从常值连接，elint的out1不是直接连接常量，而是连到mux，sg中out1直接连接常量；	2025.10.20	pass	
DTS2025101714922	E0036	STARC05-1.1.4.6a	OutputTiedToConst	王柯杰	majie	蒋蕊	B4_356	6	B4_356：误报1条	#47166	综合差异	B4_356：误报1条，sg报SYNTH_5257	2025.10.20	fail	E0036是Structural_DeclUse，只需要根据我们的电路看报的合不合理，不需要和SG的电路比较，之前确认lint不会把1‘bx当作1'b0，因此不应该报OutputTiedToConst
							B4_515		B4_515：误报1条			B4_515：误报1条，sg报SYNTH_5251			
							B4_516		B4_516：误报1条			B4_516：误报1条，sg报SYNTH_5257			
							B4_518		B4_518：误报1条			B4_518：误报1条，sg报SYNTH_5257			
							B4_528		B4_528：误报1条			B4_528：误报1条，综合差异，elint连接1'bx，而sg是undriven			
							B4_529		B4_529：误报1条			B4_529：同上			
DTS2025101717770	E0070	STARC05-2.10.3.5	ConstNoBaseType	王柯杰	majie	刘昌祥	B4_464	3	B4_464：误报1条，漏报2条	#47183	B4_464，B4_557：差异	B4_464：误报1条，漏报2条，lint漏检查if语句中的'<=5'，而sg漏报real类型赋值语句，待修复后填差异；	2025.10.23		
							B4_522		B4_522：漏报1条		B4_522：修复中	B4_522：漏报1条，lint漏检查if语句中的'<=4'，待修复			
							B4_557		B4_557：漏报1条			B4_557：漏报1条，lint漏检查if语句中的'HIP'，修复漏报后仍存在差异，sg报"10,2,4,5,8"，lint报"10,8,4,5,4,2"；			
DTS2025101714453	E0084	ResetName	RSNameNonstandard	李龙	changxiang	刘昌祥	B4_265	2	漏报1条	#47163	修复中	同步复位不同条件分支bit不同的推断未支持	if嵌套 3天		
							B4_507					if嵌套多层的同步复位推断未支持	bus trace到bit 5天		
DTS2025101722065	E0292	W164b	LhsGreaterThanRhs	吴俊毅	kaiyang	陈海洋	多个		位宽			width报错，需借用脚本	width		
DTS2025101723020	E0293	W163	IntConstBitTruncation	吴俊毅	kaiyang	陈海洋	B4_404	1	位宽			width报错，需借用脚本	width		
DTS2025101714741	E0306	AlwaysFalseTrueCond-ML	AlwaysFalseTrueCond	吴俊毅	majie	陈海洋	B4_244	2				elint报错与18版本一致			
							B4_351				B4_244 差异				
											B4_351 差异				
DTS2025101716187	E0308	W498	NotAllBusBitRead	程君	changxiang	陈海洋	B4_253	3		#47160	B4_253 差异	B4_253 (按照凯阳的更新后，和家里的18版sg结果对比，elint漏报了一个	2025.10.22		
							B4_376				B4_376 差异	               漏报那个和B4_376一样：做成差异)			
							B4_515				B4_515 差异	B4_376 （差异，sg 处理unpacket时，input要报，普通reg 不报，和伟豪确认都不报）			
												B4_515 （差异）			
												规律：			
												sg unpacked：			
												input： 报			
												其他：   不报			
															
												elint unpacked：			
												全部不报			
DTS 7个	E0321	UndrivenNUnloaded-ML	NetUndrivenAndUnloaded	王柯杰	changxiang	尚一航	多个		driveload			driveload报错，需借用脚本	driveload		
DTS 2个	E0320	UnloadedNet-ML	DrivenNetUnloaded	王柯杰	kaiyang	尚一航	多个		driveload			driveload报错，需借用脚本	driveload		
DTS2025102128288	E0078	W528	SigAndVarSetNotRead	程君	changxiang	刘昌祥	B4_244			#47238	修复中	elint  expand loop limit is 3000; sg is 2048	2025.10.23		
DTS2025102130516	E0078	W528	SigAndVarSetNotRead	程君	changxiang	刘昌祥	B4_249			#47230	修复中	UsedAssignedFinder 没有处理i++	2025.10.22		
DTS2025102049663	E0236	W402b	AsyncRSNotInput	陈谢天	changxiang	蒋蕊	B4_180	3	共3误报	#47248	差异	B4_180：SG报SYNTH_149和SYNTH_162，导致always不综合	2025.10.22	pass	
							B4_199					B4_199：SG报SYNTH_149和SYNTH_162，导致always不综合			
							B4_200					B4_200：SG报SYNTH_149和SYNTH_162，导致always不综合			
DTS2025102052379	E0236	W402b	AsyncRSNotInput	陈谢天	changxiang	蒋蕊	B4_045	1	共16误报	#47251	差异	综合差异，同一个obj，SG综合成latch，elint综合成FF	2025.10.22	pass	
DTS2025102053452	E0236	W402b	AsyncRSNotInput	陈谢天	changxiang	蒋蕊	B4_201	3	共3误报	#47257	差异	B4_201：综合差异，SG综合成带enable pin的FF，elint会综合出逻辑门实现if的优先级	2025.10.22	pass	
							B4_314					B4_314：综合差异，综合模型存在差异，elint会综合出逻辑门实现if的优先级			
							B4_399					B4_399：综合差异，同一个obj，SG综合成latch，elint综合成FF			
DTS2025101630922	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_349		B4_349：漏报1条	#47249	修复中	B4_349：漏报1条，lint漏报一个release的output；	2025.10.28		
							B4_042		B4_042：漏报1条		版本差异	B4_042：漏报1条，18版sg报了一个，而22版sg不报，elint和22版一致，认定为版本差异			
DTS2025101631446	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_215		B4_215：漏报2条	#47252	版本差异	B4_215：漏报2条，18版sg报了22个，而22版sg报20个，elint和22版一致，认定为版本差异	2025.10.22		
DTS2025101632876	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_351		B4_351：漏报3条	#47253	版本差异	B4_351：漏报3条，18版sg报了三个，而22版sg不报，elint和22版一致，认定为版本差异	2025.10.22		
							B4_365		B4_365：漏报1条			B4_365：漏报1条，18版sg报了一个，而22版sg不报，elint和22版一致，认定为版本差异			
DTS2025101634014	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_376		B4_376：漏报3条	#47254	版本差异	B4_376：漏报3条，18版sg报了三个，而22版sg不报，elint和22版一致，认定为版本差异	2025.10.22		
DTS2025101634550	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_414		B4_414：误报1条	#47255	修复中	B4_414：误报1条，elint误报primitive中的output，不应检查，待修复	2025.10.28		
DTS2025101634732	E0035	W241	OutputNotFullySet	王柯杰	majie	熊刘玲	B4_448		B4_448：漏报1条	#47256	版本差异	B4_448：漏报1条，18版sg报了一个，而22版sg不报，elint和22版一致，认定为版本差异	2025.10.22		
DTS2025101716950	E0070	STARC05-2.10.3.5	ConstNoBaseType	王柯杰	majie	田晓燕	B4_464				和'DTS2025101717770'重复				
							B4_522								
							B4_557								
DTS2025102032757	E0155	W553	BusDiffBitDrivenInDiffComb 	吴俊毅	xianlu_majie	张凯阳	B4_213	4	全部未复现	#47231	已完成	B4_213: 未复现	2025/10/22	pass	盘本差异，15号包可复现，新包pass
							B4_214					B4_214: 未复现			
							B4_447					B4_447: 未复现			
							B4_505					B4_505: 抄错case，有语法错			
												与现场确认，全部为那边反馈结果有误			
DTS2025102039278	E0220	W111	NotAllArrayElemAreRead	程君	kangkai	张凯阳	B4_036			#47235	未复现	反馈给凯阳: 家里18版sg未复现arr1[2],  现场18版sg结果arr1,对象不匹配	2025.10.23	comfired	现象明确，请PE确认以哪个结果为准
DTS2025102050332	divein	/	/	/		张凯阳	B4_037				定位中	定位中			
DTS2025102052795	E0220	W111	NotAllArrayElemAreRead	程君	kangkai	张凯阳	B4_067			#47236	差异	Diff_722 同Diff_475	2025.10.23	pass	
DTS2025102053473	E0205	W489	FuncLastStmtNoReturn	李龙	majie	刘瑞风	B4_285	1	漏报一条	#47223	修复中	返回值写在then分支而else没有写then分支当作没有被返回	2025/10/23		
DTS2025102105518	E0243	STARC05-1.3.2.2	FFOutputUsedAsRS	李龙	majie	马杰	B4_105	1	漏报一条	#47233	修复中	这条rule latch也算flip-flop	2025/10/23		
DTS2025102110962	E0240	STARC05-1,3,2,1b	RSSigNotFromTop	李龙	kaiyang	刘瑞风	B4_105	1	漏报一条	#47234	修复中	trav中有bug（老逻辑漏洞过多，需重构，重新写逻辑），后续分配给新继承这条rule的人	待实现		
DTS2025102113209	E0239	STARC05-1.3.1.3	AsyncRSUsedAsNonAsyncRS	程君	majie	蒋蕊	B4_399			#47239	差异	elint 漏报, 综合差异，sg 把out1综合成组合逻辑(non-set/rst)，elint把out1综合成ff	2025.10.24	fail	E0239是Structural_Rst，只需要根据我们的电路看报的合不合理，不需要和SG的电路比较，从电路来看，rst虽然连到了MUX的选择端，但是MUX最终是连在了DFF out1的reset/set pin，因此不应该报AsyncRSUsedAsNonAsyncRS
DTS2025102114329	E0260	LatchFeedback	LatchWithCombFeedback	李龙	xianlu_majie	尚一航	B4_054	1	obj diff	#47241	差异	bus中某些bit，elint综合不出latch，综合差异	2025/10/22		
DTS2025102121104	E0241	STARC05-2.3.1.6	RSLogicDiffWithSensList	李龙	changxiang	蒋蕊	B4_179	1	漏报一条	#47242	差异	我们的行为对标SYNTH-5192,暂不与STARC05-2.3.1.6一致，STARC05-2.3.1.6 sg实现的不好	2025/10/22	fail	rst在敏感列表里是negedge，但实际使用时却不是，和elint的spec不符合
