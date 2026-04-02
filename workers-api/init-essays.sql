-- 创建范文表
CREATE TABLE IF NOT EXISTS essays (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  sort_order INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS essay_paras (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  essay_id INTEGER NOT NULL,
  para_order INTEGER DEFAULT 0,
  text_html TEXT NOT NULL,
  skills TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS essay_annos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  para_id INTEGER NOT NULL,
  color TEXT NOT NULL,
  key_text TEXT NOT NULL,
  anno_text TEXT NOT NULL,
  sort_order INTEGER DEFAULT 0
);

-- ══════════════════════
-- 原有 4 篇范文
-- ══════════════════════
INSERT INTO essays (title, sort_order) VALUES ('写景·开头', 1);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  1, 1,
  '家乡有一条小河，<span class="hl-green">弯弯曲曲地从村子中间流过</span>，像一条<span class="hl-blue">碧绿的玉带</span>，把整个村庄装扮得格外美丽。<span class="hl-orange">清晨，薄薄的雾气笼罩着河面，阳光透过雾气照下来，把水面染成了金色。</span>河边的柳树<span class="hl-pink">舞动着长长的发丝</span>，倒映在水中，美不胜收。',
  '比喻,拟人,视觉描写,动静结合'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (1, 'green',  '弯弯曲曲……流过',    '动态描写，写出河流的形态', 1),
  (1, 'blue',   '碧绿的玉带',         '比喻修辞，形象贴切，色彩鲜明', 2),
  (1, 'orange', '清晨……染成了金色',   '时间+视觉，光影变化描写精准', 3),
  (1, 'pink',   '舞动着长长的发丝',   '拟人修辞，赋予柳树生命', 4);

INSERT INTO essays (title, sort_order) VALUES ('写人·神态动作', 2);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  2, 1,
  '李老师是我最喜欢的语文老师。<span class="hl-green">她不高，圆圆的脸上总是挂着和蔼的笑容。</span>讲课的时候，<span class="hl-blue">她的眼睛会随着情节变化而变化</span>——讲到有趣的地方，眼睛弯成了月牙；<span class="hl-orange">讲到感人的段落，声音也不由自主地轻了下来，</span>整个教室静得只剩下她那温柔的声音。<span class="hl-pink">有一次我上课走神，她轻轻走到我桌边，没有批评，只是用手指轻轻敲了敲我的课本。</span>那一声敲，胜过了千言万语。',
  '外貌描写,细节描写,动作传情,侧面烘托'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (2, 'green',  '圆圆的脸上……笑容',   '外貌特征突出，与性格相符', 1),
  (2, 'blue',   '眼睛会随着情节变化',  '通过眼神变化展现人物投入', 2),
  (2, 'orange', '声音轻了下来',        '细节描写，声音与情绪联动', 3),
  (2, 'pink',   '轻轻敲了敲我的课本',  '用动作代替语言，更有感染力', 4);

INSERT INTO essays (title, sort_order) VALUES ('写事·高潮', 3);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  3, 1,
  '跑道上，我咬紧牙关，<span class="hl-green">两腿像灌了铅一样沉，每迈出一步都要用尽全力。</span>耳边是同学们的加油声，<span class="hl-blue">那声音像浪潮一样一浪一浪地涌来，把我快要熄灭的斗志重新点燃。</span><span class="hl-orange">"快了，就快到终点了！"我在心里一遍遍告诉自己。</span>终于，我感到胸前那根彩带"嗖"的一声绷断了——<span class="hl-pink">我冲过了终点线！</span>',
  '身体感受,心理描写,比喻,细节冲刺'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (3, 'green',  '两腿像灌了铅',        '比喻写疲劳感，真实有力', 1),
  (3, 'blue',   '像浪潮一样……点燃',   '比喻+通感，展现呐喊的力量', 2),
  (3, 'orange', '心里一遍遍告诉自己',  '心理描写，展现坚持的意志', 3),
  (3, 'pink',   '彩带绷断……冲过终点', '动作+声音，高潮处戛然而止', 4);

INSERT INTO essays (title, sort_order) VALUES ('状物·细描', 4);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  4, 1,
  '我家阳台上养了一盆多肉植物，<span class="hl-green">叶片肥厚饱满，像一颗颗圆滚滚的绿色雨滴，</span>整齐地围成一个玫瑰花的形状。<span class="hl-blue">阳光照上去，叶片的边缘透出一圈淡淡的粉红色，</span>像是精心涂上去的腮红。<span class="hl-orange">轻轻用手指碰一下，滑滑的、凉凉的，里面好像蓄满了水。</span><span class="hl-pink">我有时候觉得它像一个安静的小孩，不言不语，却用自己的方式告诉你：认真活着，就已经很美了。</span>',
  '比喻,触觉描写,光影观察,借物喻人'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (4, 'green',  '圆滚滚的绿色雨滴',    '比喻形象，写出叶片质感', 1),
  (4, 'blue',   '淡淡的粉红色……腮红', '光影+比喻，细节观察精准', 2),
  (4, 'orange', '滑滑的……蓄满了水',   '触觉描写，让读者身临其境', 3),
  (4, 'pink',   '像一个安静的小孩',    '由物及人，点出文章主旨', 4);

-- ══════════════════════
-- 新增 4 篇范文
-- ══════════════════════

-- 新篇5：写景·四季变化
INSERT INTO essays (title, sort_order) VALUES ('写景·四季', 5);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  5, 1,
  '学校操场边有一排梧桐树，<span class="hl-green">四季里变换着不同的模样，像四幅挂在走廊上的画。</span>春天，新叶冒出嫩绿的尖，风一吹，哗哗轻响，像孩子们的笑声。夏天，<span class="hl-blue">浓密的树冠撑起一片绿荫，无数片叶子叠在一起，把阳光筛成碎碎的光斑，</span>洒在地上闪啊闪的。<span class="hl-orange">秋风一来，叶子先是变黄，再变橙，再变褐，一片片飘下来，像是树在一页一页地翻着自己的日记。</span>冬天只剩下光秃秃的枝条，<span class="hl-pink">却反而有一种简洁的美，像一幅用墨线勾出的素描，安静，有力。</span>',
  '四季对比,比喻,动态描写,情感升华'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (5, 'green',  '像四幅挂在走廊上的画',   '总起比喻，统领全段，结构清晰', 1),
  (5, 'blue',   '把阳光筛成碎碎的光斑',   '动词"筛"精准传神，视觉感强', 2),
  (5, 'orange', '一页一页地翻着自己的日记','拟人+比喻，赋予落叶诗意', 3),
  (5, 'pink',   '像一幅用墨线勾出的素描',  '以画喻景，意境深远，余味悠长', 4);

-- 新篇6：写人·品质
INSERT INTO essays (title, sort_order) VALUES ('写人·品质', 6);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  6, 1,
  '爷爷是个沉默的人，话不多，却从来不让家人操心。<span class="hl-green">他每天天不亮就起来，扫院子、喂鸡、浇菜，把每件小事都做得仔仔细细，</span>从不嫌烦。有一年冬天下大雪，路面结了冰，<span class="hl-blue">他拿着铁锹，一锹一锹地铲，从自家门口一直铲到胡同口，</span>来来往往的邻居都说谢谢，他只是点点头，继续铲。<span class="hl-orange">我问他累不累，他停下来，看了我一眼，说："不做，路不就堵着了吗。"</span>就这么一句话，让我半天没说出话来。<span class="hl-pink">我想，那些做了却不说的人，比只说不做的人，要可敬得多。</span>',
  '典型事例,语言描写,细节刻画,议论升华'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (6, 'green',  '扫院子、喂鸡、浇菜',         '动作排比，勤劳形象跃然纸上', 1),
  (6, 'blue',   '一锹一锹地铲……胡同口',       '动作细节，量词反复，写出坚持', 2),
  (6, 'orange', '"不做，路不就堵着了吗"',       '语言描写，朴实有力，人物性格鲜明', 3),
  (6, 'pink',   '做了却不说……要可敬得多',      '议论结尾，点明主旨，引发共鸣', 4);

-- 新篇7：写事·转折
INSERT INTO essays (title, sort_order) VALUES ('写事·转折', 7);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  7, 1,
  '那次演讲比赛，我以为自己一定会失败。<span class="hl-green">走上台的时候，腿在抖，手里的稿子也跟着抖，台下黑压压的一片人，让我觉得自己像站在悬崖边上。</span>开口的第一句话，声音小得连自己都听不清。<span class="hl-blue">就在这时，我突然看见班主任在台下朝我点了点头，嘴角微微上扬。</span>不知道为什么，那个笑容像一双手，轻轻把我从悬崖边拉了回来。<span class="hl-orange">我深吸一口气，抬起头，把稿子折起来放进口袋，</span>决定不再照着念，就说自己想说的话。<span class="hl-pink">后来的事我不太记得了，只记得讲完最后一句话，台下响起了掌声，那掌声是我听过的最好听的声音。</span>',
  '心理描写,转折叙事,细节铺垫,情感收尾'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (7, 'green',  '像站在悬崖边上',             '比喻紧张感，代入感强', 1),
  (7, 'blue',   '朝我点了点头，嘴角微微上扬', '细节动作，无声胜有声', 2),
  (7, 'orange', '把稿子折起来放进口袋',        '动作是心理的外化，转折自然', 3),
  (7, 'pink',   '那掌声是我听过的最好听的声音','用听觉收尾，余音绕梁', 4);

-- 新篇8：写景·夜晚
INSERT INTO essays (title, sort_order) VALUES ('写景·夜晚', 8);
INSERT INTO essay_paras (essay_id, para_order, text_html, skills) VALUES (
  8, 1,
  '夜幕落下来，村子里的灯一盏一盏地亮起，<span class="hl-green">远远望去，像是谁把一把碎星撒在了山脚下。</span>虫鸣声从草丛里涌出来，此起彼伏，<span class="hl-blue">把整个夜晚填得满满当当，反而让人觉得心里踏实。</span>奶奶坐在院子里摇着蒲扇，<span class="hl-orange">扇出来的风带着淡淡的草木香，轻轻拂过脸颊，比空调凉快，也比空调温柔。</span>我躺在竹椅上仰望天空，<span class="hl-pink">星星一颗一颗地露出来，密密麻麻，好像天幕是一张蓝黑色的幕布，被谁从背后用针扎满了小孔，每一个孔里都透出光来。</span>',
  '视觉远近,听觉烘托,嗅觉+触觉,丰富比喻'
);
INSERT INTO essay_annos (para_id, color, key_text, anno_text, sort_order) VALUES
  (8, 'green',  '像是谁把一把碎星撒在山脚下', '远景比喻，灯光如星，画面感强', 1),
  (8, 'blue',   '把整个夜晚填得满满当当',      '虫鸣拟物，反衬宁静踏实感', 2),
  (8, 'orange', '带着淡淡的草木香……温柔',      '嗅觉+触觉，生活气息浓郁', 3),
  (8, 'pink',   '被谁从背后用针扎满了小孔',    '奇特比喻，想象力丰富，意境独特', 4);
