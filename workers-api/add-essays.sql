-- ══════════════════════════════════════════
-- 50篇新范文数据（id从9开始，接续现有8篇）
-- ══════════════════════════════════════════

-- ──────────── 写景类 ────────────

-- 9. 写景·春雨
INSERT INTO essays (title, sort_order) VALUES ('写景·春雨', 9);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  9, 1,
  '<span class="hl-green">春雨悄悄地来了，细细的，柔柔的，像蚕宝宝吐出的丝线，密密地织成一张轻纱。</span>雨打在新绿的叶子上，发出<span class="hl-blue">"沙沙沙"的轻响，像有人在耳边低声说话。</span>泥土的气息随着雨水漫开来，<span class="hl-orange">那是大地深深呼出的一口气，带着青草和泥土混合的芬芳。</span>远处的山被雨雾包裹着，<span class="hl-pink">模模糊糊，像一幅没有画完的水墨画。</span>',
  '比喻,通感,嗅觉描写,虚实结合'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (9, 'green',  '像蚕宝宝吐出的丝线',    '比喻新颖，写出春雨细密的质感', 1),
  (9, 'blue',   '沙沙沙……低声说话',      '拟人+听觉，赋予雨声情感', 2),
  (9, 'orange', '大地深深呼出的一口气',  '拟人手法，嗅觉与触觉融合', 3),
  (9, 'pink',   '没有画完的水墨画',      '远景虚化，意境悠远', 4);

-- 10. 写景·夏荷
INSERT INTO essays (title, sort_order) VALUES ('写景·夏荷', 10);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  10, 1,
  '荷花开了。<span class="hl-green">有的才展开两三片花瓣，像一位害羞的少女刚刚探出头来；有的全开了，白里透粉，在阳光下像一盏盏点亮的灯。</span><span class="hl-blue">荷叶把荷花衬托得格外美丽，大圆叶子上滚动着晶莹的水珠，</span>一阵微风吹来，<span class="hl-orange">水珠在叶面上滑来滑去，却始终不肯掉下去，</span>真像一群顽皮的孩子在做游戏。荷叶的清香<span class="hl-pink">一阵一阵飘来，让人觉得全身舒畅。</span>',
  '排比,比喻,动态描写,嗅觉'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (10, 'green',  '有的……有的……',         '排比写不同花态，层次丰富', 1),
  (10, 'blue',   '滚动着晶莹的水珠',     '动词"滚动"精准，画面感强', 2),
  (10, 'orange', '滑来滑去，不肯掉下去', '拟人写水珠，趣味横生', 3),
  (10, 'pink',   '一阵一阵飘来',         '嗅觉收尾，余韵悠长', 4);

-- 11. 写景·秋林
INSERT INTO essays (title, sort_order) VALUES ('写景·秋林', 11);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  11, 1,
  '秋天的树林像被打翻了调色盘。<span class="hl-green">枫叶红得像火，银杏黄得像金，松针绿得像翡翠，</span>三种颜色层层叠叠地交织在一起，美得让人睁不开眼。<span class="hl-blue">一阵风来，树叶纷纷飘落，像一只只蝴蝶在空中翻飞。</span><span class="hl-orange">踩上去，发出"咔嚓咔嚓"的脆响，那声音清脆而满足，</span>像是秋天在轻声说："我来了。"<span class="hl-pink">林子里散发着松脂和落叶混合的香气，那是秋天独有的气息。</span>',
  '色彩对比,比喻,听觉,嗅觉'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (11, 'green',  '红得像火……黄得像金',   '三组比喻，色彩鲜明，对仗工整', 1),
  (11, 'blue',   '像一只只蝴蝶翻飞',     '比喻落叶，动态优美', 2),
  (11, 'orange', '咔嚓咔嚓的脆响',       '听觉描写，让读者身临其境', 3),
  (11, 'pink',   '秋天独有的气息',       '嗅觉收尾，点明季节特征', 4);

-- 12. 写景·冬雪
INSERT INTO essays (title, sort_order) VALUES ('写景·冬雪', 12);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  12, 1,
  '<span class="hl-green">雪是悄悄来的，没有一点声响。一夜之间，整个世界变成了白色。</span>屋顶上盖了厚厚的雪被，树枝上挂满了晶莹的冰晶，<span class="hl-blue">远处的山披着一件洁白的斗篷，庄严而沉静。</span><span class="hl-orange">小路上留着几行脚印，深深浅浅，歪歪扭扭，不知是谁匆匆走过。</span>我站在窗前，<span class="hl-pink">呵出一口热气，白雾在玻璃上晕开，像一朵转瞬即逝的小花。</span>',
  '静态描写,拟人,细节观察,对比'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (12, 'green',  '悄悄来的，没有声响',   '以静衬静，突出冬雪的悄然', 1),
  (12, 'blue',   '披着洁白的斗篷',       '拟人，山的形象庄重而生动', 2),
  (12, 'orange', '深深浅浅，歪歪扭扭',   '叠词描写脚印，细节真实有趣', 3),
  (12, 'pink',   '晕开，像一朵小花',     '微小细节，情感温暖细腻', 4);

-- 13. 写景·日出
INSERT INTO essays (title, sort_order) VALUES ('写景·日出', 13);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  13, 1,
  '我们爬上山顶，静静等待着日出。<span class="hl-green">天边先泛起一片鱼肚白，然后是淡淡的橘色，接着橘色越来越深，越来越红，</span>像是有人在天边慢慢燃起了一把火。<span class="hl-blue">突然，一轮红日从山背后缓缓升起，那一刻，天地之间仿佛都静止了。</span><span class="hl-orange">阳光铺洒下来，山谷里的薄雾开始消散，露出下面绿色的村庄和银色的河流。</span><span class="hl-pink">我深吸一口气，觉得胸腔里充满了光亮。</span>',
  '颜色渐变,动态描写,视觉,抒情'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (13, 'green',  '鱼肚白……橘色……红',    '色彩变化层次清晰，写出日出过程', 1),
  (13, 'blue',   '天地之间仿佛都静止了', '以静衬动，突出日出瞬间的震撼', 2),
  (13, 'orange', '薄雾开始消散',         '日出后的变化，动感十足', 3),
  (13, 'pink',   '胸腔里充满了光亮',     '以景衬情，情感自然升华', 4);

-- 14. 写景·落日
INSERT INTO essays (title, sort_order) VALUES ('写景·落日', 14);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  14, 1,
  '<span class="hl-green">傍晚，太阳慢慢沉向西方，天空像一块被浸染的画布，从金黄到橙红，从橙红到深紫，</span>颜色一层层地叠着，美得让人不敢出声。<span class="hl-blue">河面上倒映着落日的余晖，一道金色的光带从对岸一直延伸到脚下，</span>随着水波轻轻荡漾。<span class="hl-orange">远处，几只鸟儿剪影般地飞过，在那片橙红里留下小小的弧线，</span>转眼消失在树林里。<span class="hl-pink">妈妈喊我回家吃饭，我恋恋不舍地转身，却又忍不住回头多看了一眼。</span>',
  '色彩描写,动静结合,剪影手法,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (14, 'green',  '从金黄到橙红到深紫',   '三层色彩过渡，描绘晚霞层次', 1),
  (14, 'blue',   '金色的光带延伸到脚下', '倒影描写，画面有纵深感', 2),
  (14, 'orange', '剪影般地飞过',         '剪影手法，简练而有美感', 3),
  (14, 'pink',   '忍不住回头多看一眼',   '细节动作，情感真实感人', 4);

-- 15. 写景·大海
INSERT INTO essays (title, sort_order) VALUES ('写景·大海', 15);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  15, 1,
  '我第一次见到大海。<span class="hl-green">那蓝，是深邃的蓝，是没有边际的蓝，和天空的蓝连在一起，分不清哪里是天，哪里是海。</span><span class="hl-blue">浪花一层层涌来，拍打着礁石，发出"哗——哗——"的声音，像雷声，又像鼓声。</span><span class="hl-orange">浪退去时，沙滩上留下一道白色的泡沫，像大海亲吻大地留下的印记。</span><span class="hl-pink">我脱掉鞋子，光脚踩在湿沙上，感受着海水漫过脚背时那凉凉的、痒痒的感觉，忍不住笑出声来。</span>',
  '视觉,听觉,触觉,比喻'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (15, 'green',  '深邃的蓝，没有边际的蓝', '反复强调，突出大海的辽阔', 1),
  (15, 'blue',   '像雷声，又像鼓声',        '比喻+听觉，写出浪声的震撼', 2),
  (15, 'orange', '大海亲吻大地留下的印记',  '拟人，画面温柔而有诗意', 3),
  (15, 'pink',   '凉凉的、痒痒的感觉',      '触觉描写，真实自然，充满童趣', 4);

-- 16. 写景·山间小路
INSERT INTO essays (title, sort_order) VALUES ('写景·山间小路', 16);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  16, 1,
  '<span class="hl-green">山间的小路又窄又弯，两旁的树枝在头顶交织成一道绿色的拱廊，阳光从缝隙里透下来，</span>在地面上印出一个个金色的圆点，随风轻轻晃动。<span class="hl-blue">脚下的石板路凹凸不平，每一块石头都被岁月磨得光滑圆润，</span>不知踩过了多少双脚。<span class="hl-orange">路边开着不知名的小花，白的、紫的、黄的，小小的，却开得热烈，</span>仿佛在向每一位路人招手。<span class="hl-pink">深吸一口气，树木和泥土的清香立刻充满胸腔，所有的烦恼都随之消散了。</span>',
  '通道描写,光影细节,色彩点缀,嗅觉抒情'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (16, 'green',  '绿色的拱廊',           '比喻树枝，形象营造出幽静氛围', 1),
  (16, 'blue',   '磨得光滑圆润',         '细节描写，暗含岁月痕迹', 2),
  (16, 'orange', '白的、紫的、黄的',     '色彩列举，小而热烈的生命气息', 3),
  (16, 'pink',   '所有的烦恼都消散了',   '以景抒情，自然而然', 4);

-- 17. 写景·操场傍晚
INSERT INTO essays (title, sort_order) VALUES ('写景·操场傍晚', 17);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  17, 1,
  '放学后的操场安静下来。<span class="hl-green">落日的余晖把跑道染成了淡淡的金色，操场中央的旗杆投下一道长长的影子，</span>像一根指针，指着某个方向。<span class="hl-blue">几只麻雀落在单杠上，叽叽喳喳地说着什么，</span>见到我走近，扑棱一声飞走了。<span class="hl-orange">风吹过，旗子哗哗作响，这声音在空旷的操场上显得格外响亮。</span><span class="hl-pink">我在台阶上坐下来，看着远处天边的云彩，突然觉得，这一天其实挺好的。</span>',
  '光影描写,拟人,听觉,心理抒情'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (17, 'green',  '像一根指针',           '旗杆影子比喻，构图独特', 1),
  (17, 'blue',   '叽叽喳喳地说着什么',   '拟人写麻雀，轻松有趣', 2),
  (17, 'orange', '格外响亮',             '以响衬静，突出操场的空旷', 3),
  (17, 'pink',   '这一天其实挺好的',     '平淡收尾，情感真实温暖', 4);

-- 18. 写景·雨后
INSERT INTO essays (title, sort_order) VALUES ('写景·雨后', 18);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  18, 1,
  '<span class="hl-green">雨刚停，空气变得格外清新，好像整个世界都被洗了一遍。</span>树叶上挂满了水珠，<span class="hl-blue">阳光一照，每一颗水珠都变成了一粒小钻石，闪闪发光。</span>路面上积着浅浅的水洼，<span class="hl-orange">映出天空的蓝和路旁树木的绿，像一面破碎的镜子。</span>一只小鸟落在枝头，<span class="hl-pink">抖了抖翅膀，把水珠甩了一圈，然后亮起嗓子，唱起了雨后的第一首歌。</span>',
  '比喻,光影,倒影,动态收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (18, 'green',  '被洗了一遍',           '拟人化的新鲜感，雨后清爽', 1),
  (18, 'blue',   '变成了一粒小钻石',     '比喻精准，水珠的光感极强', 2),
  (18, 'orange', '破碎的镜子',           '水洼倒影的比喻，有画面感', 3),
  (18, 'pink',   '抖了抖翅膀',           '细节动作，生动活泼，充满生机', 4);

-- ──────────── 写人类 ────────────

-- 19. 写人·爷爷的手
INSERT INTO essays (title, sort_order) VALUES ('写人·爷爷的手', 19);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  19, 1,
  '爷爷的手是我见过的最粗糙的手。<span class="hl-green">手背上布满了深深浅浅的皱纹，像干裂的田地；指节突出，皮肤粗糙得像砂纸，</span>一看就是干了一辈子农活的手。<span class="hl-blue">可是就是这双手，在我小时候托着我学走路，在我害怕时紧紧握住我的手，</span>给我最踏实的安全感。<span class="hl-orange">我握着爷爷的手，感受着那粗糙的纹路，</span><span class="hl-pink">心里忽然涌起一阵酸意——这双手，装满了爷爷的一生。</span>',
  '外貌描写,比喻,对比,情感升华'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (19, 'green',  '像干裂的田地',         '比喻爷爷的手，粗糙感跃然纸上', 1),
  (19, 'blue',   '托着我学走路',         '具体事例，写出手的温暖与力量', 2),
  (19, 'orange', '感受着那粗糙的纹路',   '触觉描写，拉近情感距离', 3),
  (19, 'pink',   '装满了爷爷的一生',     '点睛之笔，情感深沉有力', 4);

-- 20. 写人·同桌
INSERT INTO essays (title, sort_order) VALUES ('写人·同桌', 20);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  20, 1,
  '<span class="hl-green">我的同桌叫小雨，是班里最爱笑的女生。她的笑声脆生生的，像一串银铃，只要她一笑，整排同学都跟着乐。</span><span class="hl-blue">她学习很认真，笔记记得密密麻麻，每个字都工工整整，看起来比课本还整洁。</span>有一次我忘带橡皮，<span class="hl-orange">她二话不说把自己的橡皮推到我桌上，然后低下头继续写作业，</span>好像这是再平常不过的事。<span class="hl-pink">这就是小雨，不多话，但总在你需要的时候出现。</span>',
  '外貌描写,比喻,细节,性格点睛'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (20, 'green',  '像一串银铃',           '比喻笑声，清脆悦耳感极强', 1),
  (20, 'blue',   '密密麻麻，工工整整',   '叠词对比，突出同桌认真的性格', 2),
  (20, 'orange', '二话不说推到我桌上',   '动作细节，写出慷慨自然的品质', 3),
  (20, 'pink',   '总在你需要的时候出现', '总结句，概括人物性格，温暖有力', 4);

-- 21. 写人·妈妈的背影
INSERT INTO essays (title, sort_order) VALUES ('写人·妈妈的背影', 21);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  21, 1,
  '那天早晨，我在教室里透过窗户往外看，<span class="hl-green">恰好看到妈妈送完我正要离开的背影——她走得很慢，不时回头张望，</span>手里还提着我早上没来得及带走的水杯。<span class="hl-blue">我看见她停下来，整了整衣角，然后深吸一口气，大步走向公交站，</span>那一刻，她看起来又忙碌又孤单。<span class="hl-orange">我突然想冲出去叫她，却不知道为什么，喉咙里有什么东西堵住了，</span>只能站在原地看着她的背影消失在人群里。<span class="hl-pink">以后，我再也没有叫过妈妈帮我补送东西。</span>',
  '细节观察,动作描写,心理活动,行为转变'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (21, 'green',  '走得很慢，不时回头',   '细节动作，满满的母爱与不舍', 1),
  (21, 'blue',   '整了整衣角，深吸一口气', '细节动作，刻画妈妈的坚强', 2),
  (21, 'orange', '喉咙里有什么东西堵住', '心理描写，情感真实细腻', 3),
  (21, 'pink',   '再也没有叫过妈妈补送', '行动转变，情感升华无需多言', 4);

-- 22. 写人·严格的爸爸
INSERT INTO essays (title, sort_order) VALUES ('写人·严格的爸爸', 22);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  22, 1,
  '爸爸是个严格的人。<span class="hl-green">作业写完了，他要检查；考试成绩出来了，他要分析哪道题为什么错。</span>有一次我偷懒少写了一道数学题，<span class="hl-blue">他发现了，只是静静地坐在旁边，等我自己补上，那种沉默比批评更让我难受。</span><span class="hl-orange">但也是爸爸，在我最难过的时候会递来一杯热牛奶，什么都不说，</span>就那么坐在旁边。<span class="hl-pink">我后来才明白，严格，是他表达爱的方式。</span>',
  '举例对比,心理描写,细节,议论点题'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (22, 'green',  '检查……分析……',         '举例具体，写出爸爸的严格习惯', 1),
  (22, 'blue',   '沉默比批评更让我难受', '心理描写，侧面烘托爸爸的力量', 2),
  (22, 'orange', '递来一杯热牛奶',        '细节反转，写出严中有爱', 3),
  (22, 'pink',   '严格，是他表达爱的方式', '议论收尾，升华主题', 4);

-- 23. 写人·图书管理员阿姨
INSERT INTO essays (title, sort_order) VALUES ('写人·图书馆阿姨', 23);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  23, 1,
  '图书馆里有一位阿姨，我不知道她的名字，但我记得她。<span class="hl-green">她总是安安静静地坐在借书台后面，头微微低着，手指轻轻翻着页码，</span>和周围的喧嚣完全隔绝。<span class="hl-blue">每次我还书，她都会抬起头，对我微微一笑，那笑容安静而温暖，</span>像图书馆里一盏常亮的灯。<span class="hl-orange">有一次我找不到想借的书，急得团团转，是她放下手里的工作，带我找了整整五分钟。</span><span class="hl-pink">我想，图书馆里最美的风景，就是她翻书时专注的样子。</span>',
  '细节描写,比喻,行为,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (23, 'green',  '安安静静，头微微低着',   '细节刻画，沉静的书卷气', 1),
  (23, 'blue',   '像图书馆里一盏常亮的灯', '比喻，温暖而持久', 2),
  (23, 'orange', '放下工作带我找了五分钟', '具体行为，写出默默的善意', 3),
  (23, 'pink',   '翻书时专注的样子',       '以画面结尾，意境悠长', 4);

-- 24. 写人·奶奶
INSERT INTO essays (title, sort_order) VALUES ('写人·奶奶的厨房', 24);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  24, 1,
  '奶奶的厨房是我小时候最爱去的地方。<span class="hl-green">一推开门，锅里蒸腾的热气就扑面而来，混合着葱姜和米饭的香气，</span>那种气味会让我瞬间放松，好像一切都好了。<span class="hl-blue">奶奶站在灶台前，围裙上沾着油渍，手上挂着水，转身看见我就乐了，</span>说："来了，快去洗手，马上开饭。"<span class="hl-orange">那些平淡的话，却是我记忆里最温暖的声音。</span><span class="hl-pink">后来我搬走了，再也闻不到那个味道，才知道那是家的味道。</span>',
  '嗅觉,人物语言,情感对比,主题升华'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (24, 'green',  '热气扑面而来，混合香气', '嗅觉+触觉，强烈的感官记忆', 1),
  (24, 'blue',   '转身看见我就乐了',       '神态动作，奶奶的慈爱跃然纸上', 2),
  (24, 'orange', '最温暖的声音',           '普通的话，最深的情，对比有力', 3),
  (24, 'pink',   '那是家的味道',           '点明主旨，情感深厚', 4);

-- ──────────── 写事类 ────────────

-- 25. 写事·第一次骑自行车
INSERT INTO essays (title, sort_order) VALUES ('写事·第一次骑车', 25);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  25, 1,
  '爸爸松开手的那一刻，我吓得心跳加速。<span class="hl-green">车子开始晃动，我死死握住车把，两条腿慌乱地踩着踏板，根本不敢往前看。</span><span class="hl-blue">"保持平衡！眼睛看远一点！"爸爸在身后喊，声音越来越远，</span>我这才意识到——我真的在骑了！<span class="hl-orange">那几秒钟，整个世界好像慢下来了，风从脸颊飞过，地面在脚下飞速退去，</span>一种从未有过的自由感充满了我的胸腔。<span class="hl-pink">我大喊了一声，车子摇摇晃晃冲了出去，歪歪扭扭，却无比骄傲。</span>',
  '心理描写,语言描写,感官细节,情感爆发'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (25, 'green',  '死死握住车把，慌乱踩踏板', '细节动作，紧张感十足', 1),
  (25, 'blue',   '声音越来越远',             '侧面写出距离，暗示成功', 2),
  (25, 'orange', '整个世界好像慢下来了',     '主观感受，把握成功瞬间', 3),
  (25, 'pink',   '歪歪扭扭，却无比骄傲',     '对比，突出成功的喜悦', 4);

-- 26. 写事·一次道歉
INSERT INTO essays (title, sort_order) VALUES ('写事·一次道歉', 26);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  26, 1,
  '我鼓起了好久的勇气，才走到小明面前。<span class="hl-green">他正在看书，听到我叫他，抬起头，眼神里还带着一丝疑惑。</span>我深吸一口气，<span class="hl-blue">"上次的事……是我不对，对不起。"话说出口的那一刻，我感觉身上的石头掉下去了一块。</span><span class="hl-orange">他愣了一秒，然后咧嘴笑了，说："没事了，早忘了。"</span>我知道他没忘，但他选择了翻篇。<span class="hl-pink">那一刻我明白，道歉从来不难，难的是迈出那一步的勇气。</span>',
  '心理铺垫,语言描写,神态细节,议论收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (26, 'green',  '眼神里还带着疑惑',     '神态细节，增加真实感', 1),
  (26, 'blue',   '身上的石头掉下去了一块', '比喻心理，道歉后的轻松感', 2),
  (26, 'orange', '愣了一秒，然后笑了',   '对方反应真实，推进情节', 3),
  (26, 'pink',   '难的是迈出那一步',     '议论点题，提升文章深度', 4);

-- 27. 写事·运动会接力赛
INSERT INTO essays (title, sort_order) VALUES ('写事·接力赛', 27);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  27, 1,
  '交棒的那一秒，我屏住了呼吸。<span class="hl-green">小林冲过来，我们的手在空中短暂地碰了一下，棒子稳稳地换了手，</span>就那么一秒钟，决定了整场比赛的胜负。<span class="hl-blue">我转过身，看见小林已经飞奔而去，那个背影像一支离弦的箭，</span>笔直地冲向终点。<span class="hl-orange">周围的加油声震耳欲聋，我的心跳也随着跑道上那个身影一起加速。</span><span class="hl-pink">最终，我们班冲过终点，那一刻，我跳起来大喊，把憋了好久的劲全喊出去了。</span>',
  '细节动作,比喻,听觉,情感爆发'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (27, 'green',  '手在空中短暂地碰了一下', '精准细节，交棒关键瞬间', 1),
  (27, 'blue',   '像一支离弦的箭',         '比喻奔跑，速度感极强', 2),
  (27, 'orange', '心跳随着身影一起加速',   '心理与视觉同步，紧张感强', 3),
  (27, 'pink',   '把憋了好久的劲全喊出去', '情感爆发，结局喜悦有感染力', 4);

-- 28. 写事·考试失败
INSERT INTO essays (title, sort_order) VALUES ('写事·考试失败', 28);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  28, 1,
  '成绩单拿到手的那一刻，我站在原地，半天没动。<span class="hl-green">那个红色的数字像一颗石子，落进了我的心里，</span>激起一圈又一圈的涟漪。<span class="hl-blue">我没有哭，只是把成绩单叠了一下，放进书包最深处，</span>好像这样就能把它藏起来。<span class="hl-orange">回家路上，我一句话都没说，妈妈看了我一眼，也没多问，</span>只是在经过面包店时，默默买了我最喜欢的奶酪包。<span class="hl-pink">那个奶酪包，我吃了好久。</span>',
  '比喻心理,动作细节,无声关爱,留白结尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (28, 'green',  '像一颗石子落进心里',   '比喻心理，失落感细腻', 1),
  (28, 'blue',   '叠了一下，放进最深处', '动作写心理，细节真实', 2),
  (28, 'orange', '一句话都没说，也没多问', '无声的理解，写出母爱', 3),
  (28, 'pink',   '那个奶酪包，我吃了好久', '留白结尾，情感余味悠长', 4);

-- 29. 写事·帮同学补课
INSERT INTO essays (title, sort_order) VALUES ('写事·帮同学补课', 29);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  29, 1,
  '小杰数学不好，上课听不懂，总是皱着眉头。<span class="hl-green">有一次课间，我看见他对着一道应用题发呆，题目旁边写满了涂掉的算式，</span>密密麻麻，每一个都是试错。<span class="hl-blue">我走过去，把解题步骤一步步讲给他听，他听得很认真，眼睛里慢慢亮了起来。</span><span class="hl-orange">"哦！原来这样！"他拍了一下桌子，那声音在安静的教室里特别响，</span>引得周围同学都回头看，他却完全顾不上，已经开始动笔了。<span class="hl-pink">那一刻，我忽然觉得，帮助别人，也是一件很快乐的事。</span>',
  '场景铺垫,神态变化,语言细节,情感点题'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (29, 'green',  '密密麻麻的涂掉算式',   '细节铺垫，写出小杰的努力', 1),
  (29, 'blue',   '眼睛里慢慢亮了起来',   '神态变化，理解瞬间的欣喜', 2),
  (29, 'orange', '拍了一下桌子',         '真实反应，童趣十足', 3),
  (29, 'pink',   '帮助别人也是快乐的事', '议论收尾，升华主题', 4);

-- 30. 写事·捡到钱包
INSERT INTO essays (title, sort_order) VALUES ('写事·捡到钱包', 30);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  30, 1,
  '我在路边捡到了一个钱包。<span class="hl-green">皮革有点旧，角上磨损了，拉链是金色的，打开一看，里面有几张百元钞票和一张合影照片。</span><span class="hl-blue">我犹豫了一下——如果就这么拿走，又有谁知道呢？</span>这个念头只在脑子里转了一秒，<span class="hl-orange">我就把钱包塞进口袋，往派出所走去。</span>交出钱包的时候，叔叔说谢谢，我摆摆手，<span class="hl-pink">突然想到那张照片里的人，不知道能不能找回来，心里希望能。</span>',
  '细节描写,心理活动,转折,真实情感'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (30, 'green',  '角上磨损……合影照片',   '细节描写，让钱包变得真实有温度', 1),
  (30, 'blue',   '又有谁知道呢',         '心理独白，真实写出内心挣扎', 2),
  (30, 'orange', '只转了一秒',           '转折果断，性格自然流露', 3),
  (30, 'pink',   '希望能找回来',         '真实情感结尾，质朴而感人', 4);

-- 31. 写事·拔河比赛
INSERT INTO essays (title, sort_order) VALUES ('写事·拔河比赛', 31);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  31, 1,
  '哨声一响，绳子立刻绷紧了。<span class="hl-green">我弯着腰，两手死死攥住麻绳，绳子的粗糙感透过手心传来，</span>让我反而踏实了。<span class="hl-blue">对面的同学一阵猛拉，我们踉跄了两步，红布飘向了他们那边，</span>全班同学倒吸一口冷气。<span class="hl-orange">"坚住！再使劲！"旁边同学在喊，我低下头，牙关一咬，脚用力蹬地，</span>一寸一寸往回拽。<span class="hl-pink">最后那一拉，对面的人群"哗"地倒了，我们赢了——赢得那么累，又那么痛快。</span>',
  '触觉,场面描写,语言助推,结局对比'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (31, 'green',  '粗糙感透过手心传来',   '触觉细节，真实感强', 1),
  (31, 'blue',   '倒吸一口冷气',         '侧面写紧张气氛', 2),
  (31, 'orange', '一寸一寸往回拽',       '动作细节，坚持的力量', 3),
  (31, 'pink',   '累，又那么痛快',       '矛盾对比，胜利的喜悦更真实', 4);

-- 32. 写事·义卖
INSERT INTO essays (title, sort_order) VALUES ('写事·义卖活动', 32);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  32, 1,
  '我们班参加了学校的义卖活动。<span class="hl-green">摆摊的时候，我们把课桌推到走廊里，把带来的书和小玩具一件件摆好，</span>看着眼前这些东西，心里有说不出的满足感。<span class="hl-blue">第一个顾客是个一年级的小弟弟，他盯着一辆玩具小车，眼睛亮亮的，</span>摸了又摸，掏出几枚硬币问我够不够。<span class="hl-orange">我数了数，其实差一点，但我还是说够了。</span>看着他小心翼翼地抱着小车离开，<span class="hl-pink">我比赚到钱还高兴。</span>',
  '场景描写,细节,心理决定,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (32, 'green',  '一件件摆好',           '细节动作，认真准备的心情', 1),
  (32, 'blue',   '眼睛亮亮的，摸了又摸', '神态+动作，写出小弟弟的喜爱', 2),
  (32, 'orange', '差一点，但说够了',     '心理决定，善良自然流露', 3),
  (32, 'pink',   '比赚到钱还高兴',       '对比，突出给予的快乐', 4);

-- 33. 写事·第一次做饭
INSERT INTO essays (title, sort_order) VALUES ('写事·第一次做饭', 33);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  33, 1,
  '妈妈不在家，我决定自己做一顿晚饭。<span class="hl-green">打开冰箱，鸡蛋、西红柿、几根葱，这就是今晚全部的食材。</span><span class="hl-blue">油下锅的那一声"哗"，把我吓了一跳，锅里油星四溅，我慌忙往后退了一步，</span>险些撞倒调料架。<span class="hl-orange">最终端出来的西红柿炒蛋，颜色有点深，但香味飘出来的时候，我自己先咽了咽口水。</span><span class="hl-pink">妈妈回来吃了一口，没说好不好吃，只是把碗都吃光了。</span>',
  '场景铺垫,动作惊险,感官描写,无声评价'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (33, 'green',  '鸡蛋、西红柿、几根葱', '简单列举，接地气的细节', 1),
  (33, 'blue',   '吓了一跳，往后退一步', '动作写紧张，真实有趣', 2),
  (33, 'orange', '先咽了咽口水',         '自我评价，自豪感溢出来', 3),
  (33, 'pink',   '把碗都吃光了',         '无声的赞美，情感温暖', 4);

-- 34. 写事·照顾生病的奶奶
INSERT INTO essays (title, sort_order) VALUES ('写事·照顾生病的奶奶', 34);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  34, 1,
  '奶奶生病了，爸妈都不在。我一个人在家，不知所措。<span class="hl-green">奶奶躺在床上，脸色有些苍白，我端着一碗粥走进去，手有点抖，</span>怕洒了。<span class="hl-blue">奶奶看见我，眼睛里先是意外，然后变成了笑，她说："你会做粥？"</span>我说不太会，就是把米放进锅里加水，煮开了。<span class="hl-orange">奶奶笑了，说这就是最好的粥。我知道她是哄我，但我还是很高兴。</span><span class="hl-pink">那天我第一次觉得，原来长大这件事，不是很遥远。</span>',
  '细节铺垫,语言神态,议论心理,成长主题'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (34, 'green',  '手有点抖，怕洒了',     '细节写紧张，真实可爱', 1),
  (34, 'blue',   '先是意外，然后是笑',   '神态变化，奶奶的欣慰感人', 2),
  (34, 'orange', '知道是哄我，但很高兴', '心理真实，充满童趣', 3),
  (34, 'pink',   '长大这件事不是很遥远', '成长主题，点睛有力', 4);

-- ──────────── 状物类 ────────────

-- 35. 状物·文具盒
INSERT INTO essays (title, sort_order) VALUES ('状物·文具盒', 35);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  35, 1,
  '我的文具盒是妈妈三年前送我的。<span class="hl-green">铁皮的盒子已经有了几处细小的划痕，盖子的铰链有些松了，开合时会发出"咔哒"的声音，</span>像是在说话。<span class="hl-blue">盒子里住着一支支铅笔，有短有长，短的已经用到了手指长，那是我最爱用的那支。</span><span class="hl-orange">每次打开文具盒，就有一种准备好了的感觉，好像打开它，我就打开了一天的认真。</span><span class="hl-pink">妈妈说可以换一个新的，我摇摇头——这个不换，用坏了再说。</span>',
  '外形细节,拟人,比喻,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (35, 'green',  '咔哒的声音，像在说话', '拟人，赋予文具盒生命感', 1),
  (35, 'blue',   '住着一支支铅笔',       '拟人，文具盒是铅笔的家', 2),
  (35, 'orange', '打开了一天的认真',     '比喻，行为与情感联结', 3),
  (35, 'pink',   '用坏了再说',           '简短有力，情感真实', 4);

-- 36. 状物·小闹钟
INSERT INTO essays (title, sort_order) VALUES ('状物·小闹钟', 36);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  36, 1,
  '书桌上有一只小闹钟，圆圆的，红色的，是奶奶送我的。<span class="hl-green">它的分针和时针是白色的，走起来悄无声息，但只要你仔细听，就能听见"嘀嗒嘀嗒"的轻响，</span>均匀而安稳，好像心跳。<span class="hl-blue">每天早晨它负责叫醒我，我负责抱怨它叫得太早，</span>但每次我们还是准时完成了这个"仪式"。<span class="hl-orange">有一次停电，闹钟也停了，那天早晨异常安静，我反而睡不着，一直等着那声"嘀嗒"响起来。</span><span class="hl-pink">原来，那个声音早就变成了我生活的一部分。</span>',
  '拟人,声音细节,对比,情感发现'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (36, 'green',  '好像心跳',             '比喻，赋予闹钟生命温度', 1),
  (36, 'blue',   '它负责叫醒，我负责抱怨', '拟人对话，轻松有趣', 2),
  (36, 'orange', '等着那声嘀嗒响起来',   '反衬，写出对声音的依赖', 3),
  (36, 'pink',   '变成了生活的一部分',   '感悟升华，情感自然', 4);

-- 37. 状物·班级里的鱼缸
INSERT INTO essays (title, sort_order) VALUES ('状物·班级鱼缸', 37);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  37, 1,
  '班级后面的角落里放着一个鱼缸，是全班同学一起养的。<span class="hl-green">里面有六条小金鱼，橙色的、白色的、黑白花纹的，它们游来游去，</span>有时候聚在一起，有时候各自散开，好像也有自己的脾气。<span class="hl-blue">上课的时候，只要偷偷往那边看一眼，就能看见它们在水草间悄悄穿梭，</span>那一刻，心里就平静了一点。<span class="hl-orange">每天轮流喂食是最受欢迎的值日，轮到谁，谁就会在鱼缸旁多站一会儿，</span>好像那六条鱼能听懂一样。<span class="hl-pink">后来那条最大的橙色金鱼走了，全班安静了一整天。</span>',
  '外形描写,拟人,观察情感,真实收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (37, 'green',  '好像也有自己的脾气',   '拟人，赋予金鱼个性', 1),
  (37, 'blue',   '心里就平静了一点',     '观察鱼缸的情感价值', 2),
  (37, 'orange', '多站一会儿，好像听懂', '拟人，表达对金鱼的感情', 3),
  (37, 'pink',   '全班安静了一整天',     '结尾含蓄，情感深厚', 4);

-- 38. 状物·书包
INSERT INTO essays (title, sort_order) VALUES ('状物·书包', 38);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  38, 1,
  '我的书包已经跟了我三年。<span class="hl-green">它是深蓝色的，背带上有一个小小的毛绒挂件，</span>是我自己选的，第一天背上学的时候，走路都带着风。<span class="hl-blue">三年里，它装过课本、作业、美术颜料，装过没吃完的零食和忘带的拖鞋，</span>什么都装进去过，从来没抱怨过太重。<span class="hl-orange">现在书包有点旧了，背带磨出了白色的痕迹，拉链也有点卡，</span>但我还是喜欢用它。<span class="hl-pink">一个陪了你三年的书包，总是有感情的。</span>',
  '外形细节,拟人列举,岁月痕迹,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (38, 'green',  '走路都带着风',         '比喻，写出第一天的自豪感', 1),
  (38, 'blue',   '从来没抱怨过太重',     '拟人，书包的忠诚形象', 2),
  (38, 'orange', '磨出了白色的痕迹',     '细节，岁月的见证', 3),
  (38, 'pink',   '总是有感情的',         '简洁有力，情感真挚', 4);

-- 39. 状物·盆景
INSERT INTO essays (title, sort_order) VALUES ('状物·爷爷的盆景', 39);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  39, 1,
  '爷爷的书桌上摆着一盆小松树盆景。<span class="hl-green">树干弯弯扭扭，像是故意长歪了，却偏偏歪得好看，</span>细细的枝条向四面伸展，每一根都显得那么有力气。<span class="hl-blue">爷爷每天都要给它浇一点水，不多，用一根细细的竹签拨松土，</span>动作轻柔得像是在照顾一个小娃娃。<span class="hl-orange">他说这棵松树陪了他二十年，经历了大雪、干旱，还有一次被猫扑倒，</span>但它都活下来了。<span class="hl-pink">我后来想，爷爷养的，是松树，也是他自己。</span>',
  '外形描写,细节动作,叙述经历,哲理收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (39, 'green',  '歪得好看',             '转折描写，个性化的美感', 1),
  (39, 'blue',   '像照顾小娃娃',         '比喻，写出爷爷的珍视', 2),
  (39, 'orange', '大雪、干旱、被猫扑倒', '经历列举，生命的坚韧', 3),
  (39, 'pink',   '养的是松树，也是自己', '哲理升华，余味深长', 4);

-- 40. 状物·橡皮泥
INSERT INTO essays (title, sort_order) VALUES ('状物·橡皮泥', 40);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  40, 1,
  '我最喜欢的玩具不是遥控车，不是积木，而是一盒橡皮泥。<span class="hl-green">打开盖子，那种混合着颜料气味的香甜气息扑面而来，</span>我深吸一口，就感觉开心了。<span class="hl-blue">橡皮泥软软的，凉凉的，捏在手心里会慢慢变暖，</span>随着你的想法变成任何形状。<span class="hl-orange">我捏过恐龙、小猫、饺子和一座歪歪扭扭的小山，虽然看起来都不太像，</span>但我觉得它们每一个都是世界上独一无二的作品。<span class="hl-pink">长大以后，我还是会记得那盒橡皮泥的味道。</span>',
  '嗅觉触觉,想象力,细节列举,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (40, 'green',  '气息扑面而来，开心了', '嗅觉触发情感，童年记忆', 1),
  (40, 'blue',   '凉凉的……慢慢变暖',    '触觉细节，橡皮泥的特性', 2),
  (40, 'orange', '恐龙、小猫、饺子……',  '列举创作，充满童趣', 3),
  (40, 'pink',   '记得那盒橡皮泥的味道', '嗅觉收尾，呼应开头，情感完整', 4);

-- ──────────── 更多写景类 ────────────

-- 41. 写景·田野
INSERT INTO essays (title, sort_order) VALUES ('写景·田野', 41);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  41, 1,
  '奶奶家门前是一片田野。<span class="hl-green">春天，田里种下了水稻，秧苗嫩绿嫩绿的，像给大地绣了一层绿毯；</span>到了夏天，秧苗长高了，风一吹，整片田野像绿色的海浪翻涌起来。<span class="hl-blue">最好看的是秋天，稻穗金黄，低着头，沉甸甸的，整片田野金灿灿的，</span>像是天上的太阳洒在了地面上。<span class="hl-orange">收割的时候，田野里全是人，说话声、割稻声、拖拉机声混成一片，</span>那是一年里最热闹的时候。<span class="hl-pink">我爱这片田野，爱它每个季节的样子。</span>',
  '季节对比,比喻,听觉,情感抒发'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (41, 'green',  '像绿毯，像绿色海浪',   '比喻展示春夏之变，画面感强', 1),
  (41, 'blue',   '低着头，沉甸甸的',     '拟人写稻穗，丰收的重量感', 2),
  (41, 'orange', '说话声、割稻声、拖拉机声', '声音列举，热闹场面立体', 3),
  (41, 'pink',   '爱它每个季节的样子',   '情感直抒，简洁有力', 4);

-- 42. 写景·公园的湖
INSERT INTO essays (title, sort_order) VALUES ('写景·公园的湖', 42);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  42, 1,
  '公园里有一个湖，不大，却安静得让人愿意多待一会儿。<span class="hl-green">湖面平静如镜，把岸边的柳树和远处的亭台倒映在水里，</span>分不清哪个是真，哪个是影。<span class="hl-blue">偶尔有小石子被孩子扔进来，涟漪一圈圈散开，那一池镜子就碎了，</span>又慢慢复原。<span class="hl-orange">几只白鸭浮在水面上，摇摇晃晃地游着，用嘴拨弄着水草，</span>悠闲得令人羡慕。<span class="hl-pink">我坐在湖边的长椅上，望着这一切，觉得时间过得格外慢。</span>',
  '倒影,动静结合,拟人,情感感受'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (42, 'green',  '分不清真与影',         '倒影描写，画面唯美', 1),
  (42, 'blue',   '碎了，又慢慢复原',     '动静对比，湖面的灵动', 2),
  (42, 'orange', '悠闲得令人羡慕',       '拟人，鸭子的自在感', 3),
  (42, 'pink',   '时间过得格外慢',       '主观感受，写出宁静之美', 4);

-- 43. 写景·清晨的校园
INSERT INTO essays (title, sort_order) VALUES ('写景·清晨校园', 43);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  43, 1,
  '早到学校的好处是，可以看见还没有被吵醒的校园。<span class="hl-green">操场上的草沾着晨露，绿得发亮，踩上去会有轻微的"噗"声，</span>那是草被压下去的声音。<span class="hl-blue">走廊里空荡荡的，脚步声回响着，听起来格外响亮，</span>有一种说不出的空旷感。<span class="hl-orange">图书馆的灯还没亮，窗玻璃上映着对面楼的轮廓，</span>朦朦胧胧的，像一幅水彩画。<span class="hl-pink">我喜欢这时候的校园，安静，清新，一切都还没开始，一切都有可能。</span>',
  '听觉触觉,空间描写,光影,情感意境'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (43, 'green',  '噗声，草被压下去的声音', '细节听觉，早晨的轻盈感', 1),
  (43, 'blue',   '回响着，格外响亮',      '空旷感烘托，以声衬静', 2),
  (43, 'orange', '朦朦胧胧，像水彩画',    '光影意境，清晨的柔和', 3),
  (43, 'pink',   '一切都有可能',          '情感升华，充满希望', 4);

-- 44. 写景·风
INSERT INTO essays (title, sort_order) VALUES ('写景·风', 44);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  44, 1,
  '风是看不见的，但你能感觉到它。<span class="hl-green">它吹过时，树叶哗哗地响，旗子猎猎地飘，路边的裙子骤然鼓起来，</span>女生笑着用手按住。<span class="hl-blue">夏天的风是热的，像从蒸笼里漏出来的气；冬天的风是冷的，能把脸颊刺得微微发疼。</span><span class="hl-orange">但我最喜欢春天的风，带着草和花的香气，轻轻拂过来，</span>让人想躺在草地上睡一觉。<span class="hl-pink">风什么都没有，却什么都带来了。</span>',
  '侧面描写,季节对比,嗅觉触觉,哲理结尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (44, 'green',  '树叶响、旗子飘、裙子鼓', '侧面写风，多角度呈现', 1),
  (44, 'blue',   '像蒸笼漏出的气',         '比喻，夏风的热感具体', 2),
  (44, 'orange', '带着草和花的香气',        '嗅觉描写，春风最美', 3),
  (44, 'pink',   '什么都没有，却什么都带来', '哲理结尾，意味深长', 4);

-- ──────────── 更多写事类 ────────────

-- 45. 写事·迷路
INSERT INTO essays (title, sort_order) VALUES ('写事·迷路', 45);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  45, 1,
  '那是我第一次一个人出门，结果迷路了。<span class="hl-green">街道忽然变得陌生，每一条巷子看起来都一样，转了两圈，越转越不认识。</span><span class="hl-blue">我站在路口，努力不让自己哭出来，手心开始出汗，</span>脑子里反复想妈妈教我的："迷路了，找警察。"<span class="hl-orange">我鼓起勇气拦住一位阿姨，用颤抖的声音问路，她弯下腰，耐心地给我指了方向，</span>还送我走了一段。<span class="hl-pink">找到回家的路那一刻，我小声哭了，然后很快擦掉，装作什么都没发生。</span>',
  '心理描写,紧张感,转机,真实结尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (45, 'green',  '越转越不认识',         '心理与环境融合，迷路感强', 1),
  (45, 'blue',   '努力不让自己哭出来',   '心理克制，写出坚强与害怕', 2),
  (45, 'orange', '弯下腰，耐心指路',     '陌生人的善意，细节温暖', 3),
  (45, 'pink',   '小声哭了，然后擦掉',   '真实结尾，自尊与脆弱并存', 4);

-- 46. 写事·送别
INSERT INTO essays (title, sort_order) VALUES ('写事·送别', 46);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  46, 1,
  '好朋友浩浩要转学了。<span class="hl-green">最后一天，他把座位收拾好，把借我的书还给我，很平静，好像只是普通的一天。</span><span class="hl-blue">放学的时候，我们在校门口站了一会儿，不知道说什么，</span>最后他说了句"拜拜"，转身走了。<span class="hl-orange">我看着他的背影，想喊他，却没有出声，</span>就这么看着他消失在人群里。<span class="hl-pink">回家的路上，我一直想，如果再见，不知道还认不认识。</span>',
  '细节铺垫,无言别离,背影,心理收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (46, 'green',  '好像只是普通的一天',   '对比手法，越平静越感人', 1),
  (46, 'blue',   '不知道说什么',         '无言的告别，真实感人', 2),
  (46, 'orange', '想喊，却没有出声',     '心理犹豫，分别的遗憾', 3),
  (46, 'pink',   '不知道还认不认识',     '留白收尾，淡淡的惆怅', 4);

-- 47. 写事·第一次上台
INSERT INTO essays (title, sort_order) VALUES ('写事·第一次上台', 47);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  47, 1,
  '报幕的同学叫到我的名字，我的腿突然变软了。<span class="hl-green">走上台的那几步，感觉走了很久，台下乌压压一片，全是眼睛，</span>看得我脑子里一片空白。<span class="hl-blue">我深吸一口气，闭眼一秒，睁开眼——就当他们都是南瓜吧。这个办法我是从书上看来的。</span><span class="hl-orange">我张开嘴，声音一开始有点抖，但说着说着，不知道从哪里来了底气，</span>越说越稳，越说越响。<span class="hl-pink">走下台的时候，我的腿还有点软，但心里是飘的。</span>',
  '心理铺垫,幽默细节,克服恐惧,对比结尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (47, 'green',  '全是眼睛，脑子空白',   '心理描写，怯场感真实', 1),
  (47, 'blue',   '当他们都是南瓜',       '幽默细节，轻松化解紧张', 2),
  (47, 'orange', '越说越稳，越说越响',   '渐进描写，克服紧张的过程', 3),
  (47, 'pink',   '腿软，但心里飘的',     '矛盾对比，成功后的喜悦', 4);

-- 48. 写事·雨天等妈妈
INSERT INTO essays (title, sort_order) VALUES ('写事·雨天等妈妈', 48);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  48, 1,
  '那天下雨，我没带伞，在校门口等妈妈。<span class="hl-green">雨越下越大，同学们陆陆续续被接走，校门口越来越安静，</span>只剩下雨声和我的脚步声。<span class="hl-blue">我给妈妈发了消息，没有回。再发，还是没有。我开始有点担心，</span>往门口探出头去看。<span class="hl-orange">远处忽然出现一把红色的伞，在雨里一步一步走过来，</span>我认出了那是妈妈的伞，然后认出了她的走路姿势，她是跑着来的。<span class="hl-pink">妈妈把伞全撑到我头上，自己半边肩膀都湿了，说：堵车，等久了吧。</span>',
  '渐进描写,等待心理,认出细节,无声关爱'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (48, 'green',  '越来越安静',           '环境渲染，等待的孤独', 1),
  (48, 'blue',   '没有回……有点担心',     '心理层次，等待的焦虑', 2),
  (48, 'orange', '认出走路姿势，跑着来', '细节识人，情感高潮', 3),
  (48, 'pink',   '自己半边肩膀都湿了',   '无声的爱，最感人的细节', 4);

-- 49. 写人·班长
INSERT INTO essays (title, sort_order) VALUES ('写人·班长', 49);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  49, 1,
  '我们班的班长叫阿明，不高，圆脸，说话声音很大，走路带风。<span class="hl-green">他从来不用老师催，自己就把黑板擦好了，把桌椅排好了，</span>有时候我们都忘了，他已经做完了。<span class="hl-blue">有一次同学发生了争执，阿明走过去，两边各说了几句话，</span>没人知道他说了什么，争执就结束了。<span class="hl-orange">老师问他是怎么处理的，他挠挠头说，就说各退一步呗，</span>好像这有什么难的一样。<span class="hl-pink">我觉得，真正有本事的人，做事不声不响的。</span>',
  '外形速描,行为细节,语言幽默,议论收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (49, 'green',  '自己就做完了',         '行动细节，写出班长的主动', 1),
  (49, 'blue',   '没人知道他说了什么',   '留白，写出班长的处理能力', 2),
  (49, 'orange', '挠挠头说，就这样呗',   '语言幽默，性格鲜活', 3),
  (49, 'pink',   '做事不声不响的',       '议论点题，概括有力', 4);

-- 50. 写景·冬日暖阳
INSERT INTO essays (title, sort_order) VALUES ('写景·冬日暖阳', 50);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  50, 1,
  '冬天的太阳来得晚，走得也早，像个忙碌又抠门的朋友。<span class="hl-green">但当它真的照下来的时候，那种暖，是那种从皮肤一直渗进心里的暖，</span>让人想眯起眼睛，就那么晒着。<span class="hl-blue">院子里的老猫找了一块日头好的地方，团起身子，把尾巴压在脚下，</span>两眼半睁半闭，无比满足。<span class="hl-orange">我坐在台阶上，把脸仰起来，感受着阳光轻轻拍打着脸颊，</span>什么也不想，什么也不做。<span class="hl-pink">这就是冬天最好的事——什么都不用做，只要晒晒太阳，就够了。</span>',
  '拟人比喻,触觉,动物细节,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (50, 'green',  '从皮肤渗进心里的暖',   '触觉加心理，暖意层次深', 1),
  (50, 'blue',   '老猫团起身子',         '动物细节，懒洋洋的冬日感', 2),
  (50, 'orange', '阳光轻轻拍打脸颊',     '拟人，阳光的温柔触感', 3),
  (50, 'pink',   '只要晒晒太阳就够了',   '简洁收尾，情感通透', 4);

-- 51. 写事·第一次露营
INSERT INTO essays (title, sort_order) VALUES ('写事·第一次露营', 51);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  51, 1,
  '帐篷搭好的时候，天已经快黑了。<span class="hl-green">我们钻进帐篷，拉上拉链，外面的风声和虫鸣顿时变得遥远，</span>只剩下手电筒的小圆光。<span class="hl-blue">爸爸说，你听，风在外面跑。我侧耳听，果然，风在帐篷布上"嗖嗖"地滑过，</span>帐篷轻轻颤动着。<span class="hl-orange">后来我们熄了手电，黑暗里慢慢出现了帐篷顶上的布纹，</span>那是星光透过来的。<span class="hl-pink">我不知道什么时候睡着的，但那晚我睡得很好，比在床上更踏实。</span>',
  '听觉触觉,对话细节,视觉变化,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (51, 'green',  '风声和虫鸣变得遥远',   '内外对比，帐篷的安全感', 1),
  (51, 'blue',   '风在外面跑',           '爸爸的拟人说法，亲切有趣', 2),
  (51, 'orange', '星光透过来的',         '细节发现，意境美好', 3),
  (51, 'pink',   '比在床上更踏实',       '感受对比，大自然的拥抱', 4);

-- 52. 写景·荒野草地
INSERT INTO essays (title, sort_order) VALUES ('写景·荒野草地', 52);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  52, 1,
  '学校围墙外面有一块没人管的草地，我们私下叫它"荒野"。<span class="hl-green">草长得乱糟糟的，高高低低，但每到春天，就冒出满地的野花，黄的、粉的、白的，</span>热热闹闹的，比花坛里的花还欢。<span class="hl-blue">风一吹，草浪起伏，像绿色的大海，</span>几只蝴蝶在花丛中穿来穿去，不知疲倦。<span class="hl-orange">有时候我们会在放学后跑过去摘几朵带回家，插在瓶子里，</span>即使第二天就蔫了，也觉得值得。<span class="hl-pink">那块荒野，是我们的小秘密。</span>',
  '对比描写,比喻,动态,情感归属'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (52, 'green',  '热热闹闹，比花坛更欢',  '对比，野生之美', 1),
  (52, 'blue',   '像绿色的大海',          '比喻，草地的辽阔感', 2),
  (52, 'orange', '即使蔫了也值得',        '心理细节，珍视的情感', 3),
  (52, 'pink',   '我们的小秘密',          '情感收尾，归属感与童年温度', 4);

-- 53. 写人·老校工
INSERT INTO essays (title, sort_order) VALUES ('写人·老校工', 53);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  53, 1,
  '学校里有个老校工，大家都叫他刘叔。<span class="hl-green">他每天天不亮就来了，等我们到学校的时候，操场已经被扫得干干净净，</span>每一个角落都没有落叶。<span class="hl-blue">他不怎么说话，但总是在的——修课桌、搬椅子、换灯泡，</span>悄无声息地把一件件事做完。<span class="hl-orange">有一次下暴雨，走廊进了水，是刘叔一个人用拖把推了一个多小时，</span>才把水推出去。<span class="hl-pink">我后来才想，学校里有些人，让你觉得有他在，什么都不用担心。</span>',
  '行为描写,细节列举,具体事件,情感感悟'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (53, 'green',  '天不亮就来了',         '时间细节，写出奉献精神', 1),
  (53, 'blue',   '悄无声息地做完',       '无声付出，人物特质鲜明', 2),
  (53, 'orange', '一个人推了一个多小时',  '具体数字，辛劳感真实', 3),
  (53, 'pink',   '有他在，什么都不担心', '情感升华，人物价值彰显', 4);

-- 54. 状物·自行车
INSERT INTO essays (title, sort_order) VALUES ('状物·自行车', 54);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  54, 1,
  '院子里停着一辆旧自行车，是爸爸年轻时买的。<span class="hl-green">车把有点锈了，坐垫开了一个小口，但轮子转起来依然顺畅，</span>踩上去，"哗哗"的声音和小时候一模一样。<span class="hl-blue">爸爸说这辆车陪他上了四年班，下了四年雨，骑坏了两条链子，</span>换了三个轮胎。<span class="hl-orange">我学会骑车，也是在这辆车上。那天爸爸扶着后座，一步一步跟着，</span>最后他笑着说：我早就放手了。<span class="hl-pink">这辆旧车，装的不只是岁月，还有我和爸爸之间的故事。</span>',
  '外形描写,历史叙述,回忆细节,情感升华'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (54, 'green',  '踩上去声音一模一样',   '听觉细节，时间感强', 1),
  (54, 'blue',   '四年班、两条链子',     '数字叙述，经历感真实', 2),
  (54, 'orange', '我早就放手了',         '爸爸的话，情感高潮', 3),
  (54, 'pink',   '装的不只是岁月',       '升华主旨，情感深厚', 4);

-- 55. 写景·冬天的早晨
INSERT INTO essays (title, sort_order) VALUES ('写景·冬天的早晨', 55);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  55, 1,
  '冬天的早晨不愿意来。<span class="hl-green">天亮得很迟，六点钟窗外还是黑的，窗玻璃上凝着一层薄霜，</span>用手指划过去，留下透明的痕迹。<span class="hl-blue">呼出来的热气变成白雾，在空气里悬着，</span>一会儿就散了，像短暂的存在。<span class="hl-orange">操场上的树挂着白白的霜，走过去一碰，霜花纷纷落下，</span>像细小的雪。<span class="hl-pink">我攥紧手，快步走进教室，玻璃门一推开，一阵暖气扑面而来——冬天的早晨，只有这一刻最好。</span>',
  '感官细节,拟人,触觉,对比结尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (55, 'green',  '划过去，留下透明的痕迹', '触觉+视觉，细节真实可感', 1),
  (55, 'blue',   '像短暂的存在',          '哲理意味，冬晨的质感', 2),
  (55, 'orange', '霜花纷纷落下，像细小的雪', '比喻精准，冬晨的美感', 3),
  (55, 'pink',   '这一刻最好',            '对比收尾，暖意突出', 4);

-- 56. 写事·学游泳
INSERT INTO essays (title, sort_order) VALUES ('写事·学游泳', 56);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  56, 1,
  '学游泳的第一天，我一直站在浅水区不敢下去。<span class="hl-green">水是冷的，青绿色的，可以看到池底的白线，</span>说不上为什么就是不想踩进去。<span class="hl-blue">教练说，把脸埋进水里，憋住气，数五秒。我蹲下来，闭上眼，把脸慢慢沉进去，</span>那五秒钟，耳朵里什么都听不见了，只剩水的沉默。<span class="hl-orange">抬起头，我大口喘气，头发贴着脸，眼睛里还有水，却突然觉得不那么怕了。</span><span class="hl-pink">原来那个水里的世界，并没有我想象的那么可怕。</span>',
  '心理铺垫,感官描写,转变时刻,感悟收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (56, 'green',  '青绿色的，可以看到池底', '视觉描写，水的透明感', 1),
  (56, 'blue',   '只剩水的沉默',          '感官描写，沉入水中的独特体验', 2),
  (56, 'orange', '突然觉得不那么怕了',    '心理转变，克服恐惧的关键', 3),
  (56, 'pink',   '并没有那么可怕',        '感悟，成长的一步', 4);

-- 57. 写人·转学来的新同学
INSERT INTO essays (title, sort_order) VALUES ('写人·新同学', 57);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  57, 1,
  '班里来了一个转学生，叫晓晨，第一天没有说一句话。<span class="hl-green">她坐在靠窗的位置，看着窗外，下课也不动，</span>好像整个教室和她没有关系。<span class="hl-blue">我去借她的铅笔，她递过来，没有说话，但轻轻点了点头。</span><span class="hl-orange">过了一个星期，她开始和我说话了，第一句是："你的文具盒上有只小熊，很可爱。"</span>我们就这样成了朋友。<span class="hl-pink">后来她说，那个星期她每天都在偷偷观察大家，想找一个可以说话的人。她选择了我。</span>',
  '细节观察,语言细节,自然转折,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (57, 'green',  '好像和教室没关系',     '外在表现，内心陌生感的写照', 1),
  (57, 'blue',   '没说话，但点了点头',   '细节动作，初步的接纳', 2),
  (57, 'orange', '文具盒上有只小熊',     '转折细节，友谊的起点', 3),
  (57, 'pink',   '她选择了我',           '意外收尾，情感温暖深厚', 4);

-- 58. 写景·图书馆
INSERT INTO essays (title, sort_order) VALUES ('写景·图书馆', 58);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  58, 1,
  '图书馆里有一种特别的气味，说不清是什么，但一闻到就知道，这里是书的地方。<span class="hl-green">书架一排排延伸进去，高高的，窄窄的，走进去就像走进了一座迷宫，</span>每次都能在意想不到的角落发现一本好书。<span class="hl-blue">阳光从高处的窗子斜射进来，照在书脊上，金色的，有些尘埃在光柱里缓缓浮动，</span>安静得几乎能听见时间流逝的声音。<span class="hl-orange">这里的人不说话，但每个人脸上都有一种专注的神情，</span>好像各自走进了自己的世界。<span class="hl-pink">我喜欢图书馆，不只是因为书，还因为这里的安静，是一种温柔的安静。</span>',
  '嗅觉,空间感,光影,情感升华'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (58, 'green',  '走进了一座迷宫',       '比喻书架，神秘感和探索欲', 1),
  (58, 'blue',   '尘埃在光柱里缓缓浮动', '光影细节，宁静感极强', 2),
  (58, 'orange', '走进了自己的世界',     '比喻，读书时的专注状态', 3),
  (58, 'pink',   '温柔的安静',           '点题，图书馆独特的氛围', 4);
