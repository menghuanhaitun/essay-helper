-- ========================================
-- 补全 add-vocab.sql 中60个词的例句
-- 执行：npx wrangler d1 execute essay-helper-db --remote --file=fix-vocab-examples.sql
-- ========================================

-- ══════════════════════════════════════
-- 写景自然（10词）
-- ══════════════════════════════════════
UPDATE vocab_library SET example = '远处湖面烟波浩渺，水天一色，仿佛没有尽头。' WHERE type='word' AND category='写景自然' AND content='烟波浩渺';
UPDATE vocab_library SET example = '远处层峦叠嶂，一座挨着一座，像波浪一样高低起伏。' WHERE type='word' AND category='写景自然' AND content='层峦叠嶂';
UPDATE vocab_library SET example = '山清水秀的小村庄坐落在山脚下，像一幅美丽的风景画。' WHERE type='word' AND category='写景自然' AND content='山清水秀';
UPDATE vocab_library SET example = '春天的公园里鸟语花香，蝴蝶在花丛中翩翩起舞。' WHERE type='word' AND category='写景自然' AND content='鸟语花香';
UPDATE vocab_library SET example = '冬天到了，山顶白雪皑皑，在阳光下闪着耀眼的光芒。' WHERE type='word' AND category='写景自然' AND content='白雪皑皑';
UPDATE vocab_library SET example = '一场春雨过后，山上的树木苍翠欲滴，绿得让人心醉。' WHERE type='word' AND category='写景自然' AND content='苍翠欲滴';
UPDATE vocab_library SET example = '雨后的天空碧空如洗，蓝得像一块巨大的宝石。' WHERE type='word' AND category='写景自然' AND content='碧空如洗';
UPDATE vocab_library SET example = '晨光熹微中，远处的山峦若隐若现，像披了一层薄纱。' WHERE type='word' AND category='写景自然' AND content='晨光熹微';
UPDATE vocab_library SET example = '日出时分，霞光万道，天边被染成了绚丽的橙红色。' WHERE type='word' AND category='写景自然' AND content='霞光万道';
UPDATE vocab_library SET example = '今天风和日丽，一家人去郊外踏青，别提多开心了。' WHERE type='word' AND category='写景自然' AND content='风和日丽';

-- ══════════════════════════════════════
-- 写人外貌（10词）
-- ══════════════════════════════════════
UPDATE vocab_library SET example = '老师仪表堂堂地走上讲台，同学们立刻安静了下来。' WHERE type='word' AND category='写人外貌' AND content='仪表堂堂';
UPDATE vocab_library SET example = '解放军叔叔英姿飒爽地走过天安门广场，步伐整齐有力。' WHERE type='word' AND category='写人外貌' AND content='英姿飒爽';
UPDATE vocab_library SET example = '运动完后，他的面色红润，额头上还挂着晶莹的汗珠。' WHERE type='word' AND category='写人外貌' AND content='面色红润';
UPDATE vocab_library SET example = '听到获奖的消息，他神采飞扬地跑回家，一路都在笑着。' WHERE type='word' AND category='写人外貌' AND content='神采飞扬';
UPDATE vocab_library SET example = '那个小女孩眉清目秀，笑起来眼睛弯弯的，特别好看。' WHERE type='word' AND category='写人外貌' AND content='眉清目秀';
UPDATE vocab_library SET example = '奶奶慈眉善目，见谁都笑呵呵的，村里人都喜欢她。' WHERE type='word' AND category='写人外貌' AND content='慈眉善目';
UPDATE vocab_library SET example = '流浪汉蓬头垢面地蜷缩在角落里，看起来让人心酸。' WHERE type='word' AND category='写人外貌' AND content='蓬头垢面';
UPDATE vocab_library SET example = '他衣冠楚楚地出现在宴会上，吸引了所有人的目光。' WHERE type='word' AND category='写人外貌' AND content='衣冠楚楚';
UPDATE vocab_library SET example = '爷爷鹤发童颜，虽然头发全白了，精神却比年轻人还足。' WHERE type='word' AND category='写人外貌' AND content='鹤发童颜';
UPDATE vocab_library SET example = '她明眸皓齿，一笑起来，整间教室都仿佛亮了几分。' WHERE type='word' AND category='写人外貌' AND content='明眸皓齿';

-- ══════════════════════════════════════
-- 写事记叙（10词）
-- ══════════════════════════════════════
UPDATE vocab_library SET example = '考试前的最后几天，同学们都在争分夺秒地复习功课。' WHERE type='word' AND category='写事记叙' AND content='争分夺秒';
UPDATE vocab_library SET example = '为了准备科技比赛，小明废寝忘食地查资料、做实验。' WHERE type='word' AND category='写事记叙' AND content='废寝忘食';
UPDATE vocab_library SET example = '趁热打铁，同学们一鼓作气把教室打扫得干干净净。' WHERE type='word' AND category='写事记叙' AND content='一鼓作气';
UPDATE vocab_library SET example = '爸爸出差回来，马不停蹄地赶去学校参加家长会。' WHERE type='word' AND category='写事记叙' AND content='马不停蹄';
UPDATE vocab_library SET example = '拔河比赛中，全班同学齐心协力，终于赢了隔壁班。' WHERE type='word' AND category='写事记叙' AND content='齐心协力';
UPDATE vocab_library SET example = '遇到困难不要怕，只要勇往直前，就一定能克服。' WHERE type='word' AND category='写事记叙' AND content='勇往直前';
UPDATE vocab_library SET example = '面对这么多选择，我站在货架前无所适从，不知道该买哪个。' WHERE type='word' AND category='写事记叙' AND content='无所适从';
UPDATE vocab_library SET example = '第一次做饭时，我手忙脚乱地翻了半天调料，差点把锅烧糊。' WHERE type='word' AND category='写事记叙' AND content='手忙脚乱';
UPDATE vocab_library SET example = '放学铃一响，同学们迫不及待地冲出教室奔向操场。' WHERE type='word' AND category='写事记叙' AND content='迫不及待';
UPDATE vocab_library SET example = '听说要举行足球赛，男生们个个跃跃欲试，都想上场一显身手。' WHERE type='word' AND category='写事记叙' AND content='跃跃欲试';

-- ══════════════════════════════════════
-- 写景家乡（10词）
-- ══════════════════════════════════════
UPDATE vocab_library SET example = '家乡的老祠堂古朴典雅，青砖灰瓦间透着岁月的痕迹。' WHERE type='word' AND category='写景家乡' AND content='古朴典雅';
UPDATE vocab_library SET example = '秋天，果园里瓜果飘香，苹果、梨子挂满了枝头。' WHERE type='word' AND category='写景家乡' AND content='瓜果飘香';
UPDATE vocab_library SET example = '傍晚时分，村子里炊烟袅袅升起，饭菜的香味飘满了整个巷子。' WHERE type='word' AND category='写景家乡' AND content='炊烟袅袅';
UPDATE vocab_library SET example = '走在田埂上，稻花飘香，一阵阵清香扑鼻而来。' WHERE type='word' AND category='写景家乡' AND content='稻花飘香';
UPDATE vocab_library SET example = '家乡的田野阡陌纵横，一条条田埂把大地分割成整齐的方块。' WHERE type='word' AND category='写景家乡' AND content='阡陌纵横';
UPDATE vocab_library SET example = '村口的那条路两旁绿树成荫，夏天走在下面特别凉快。' WHERE type='word' AND category='写景家乡' AND content='绿树成荫';
UPDATE vocab_library SET example = '赶集的日子，小镇上热闹非凡，叫卖声此起彼伏。' WHERE type='word' AND category='写景家乡' AND content='热闹非凡';
UPDATE vocab_library SET example = '家乡的人们民风淳朴，谁家有困难，邻居们都会主动帮忙。' WHERE type='word' AND category='写景家乡' AND content='民风淳朴';
UPDATE vocab_library SET example = '我的家乡依山傍水，前面是清澈的小河，后面是翠绿的山。' WHERE type='word' AND category='写景家乡' AND content='依山傍水';
UPDATE vocab_library SET example = '岁月悠悠，老村口的石桥已经走过了一百多年的风雨。' WHERE type='word' AND category='写景家乡' AND content='岁月悠悠';

-- ══════════════════════════════════════
-- 状物动植物（10词）
-- ══════════════════════════════════════
UPDATE vocab_library SET example = '春雨过后，草坪上一片生机勃勃，小草悄悄探出了头。' WHERE type='word' AND category='状物动植物' AND content='生机勃勃';
UPDATE vocab_library SET example = '院子里的老槐树根深叶茂，夏天在树下乘凉最舒服了。' WHERE type='word' AND category='状物动植物' AND content='根深叶茂';
UPDATE vocab_library SET example = '那棵梧桐树枝繁叶茂，像一把绿色的大伞遮住了整条街道。' WHERE type='word' AND category='状物动植物' AND content='枝繁叶茂';
UPDATE vocab_library SET example = '花骨朵含苞待放，像一个个害羞的小姑娘躲在叶子后面。' WHERE type='word' AND category='状物动植物' AND content='含苞待放';
UPDATE vocab_library SET example = '花园里百花争奇斗艳，红的、黄的、紫的，美不胜收。' WHERE type='word' AND category='状物动植物' AND content='争奇斗艳';
UPDATE vocab_library SET example = '一群小鸡活蹦乱跳地在院子里追着虫子跑，叽叽喳喳叫个不停。' WHERE type='word' AND category='状物动植物' AND content='活蹦乱跳';
UPDATE vocab_library SET example = '老鹰展翅高飞，在蔚蓝的天空中盘旋，姿态矫健极了。' WHERE type='word' AND category='状物动植物' AND content='展翅高飞';
UPDATE vocab_library SET example = '得知春游的消息，同学们欢呼雀跃，教室里顿时炸开了锅。' WHERE type='word' AND category='状物动植物' AND content='欢呼雀跃';
UPDATE vocab_library SET example = '深夜的森林悄然无声，只有偶尔传来的猫头鹰叫声。' WHERE type='word' AND category='状物动植物' AND content='悄然无声';
UPDATE vocab_library SET example = '春雨过后，嫩绿的小芽破土而出，充满了生命的力量。' WHERE type='word' AND category='状物动植物' AND content='破土而出';

-- ══════════════════════════════════════
-- 表情心理（10词）
-- ══════════════════════════════════════
UPDATE vocab_library SET example = '上台演讲前，我忐忑不安地搓着手，心跳得像要从嗓子眼蹦出来。' WHERE type='word' AND category='表情心理' AND content='忐忑不安';
UPDATE vocab_library SET example = '等待考试成绩的时候，我心里七上八下的，坐也不是站也不是。' WHERE type='word' AND category='表情心理' AND content='七上八下';
UPDATE vocab_library SET example = '第一次见校长，小男孩诚惶诚恐地站在门口，不敢迈步。' WHERE type='word' AND category='表情心理' AND content='诚惶诚恐';
UPDATE vocab_library SET example = '考完最后一科，我如释重负地长长叹了口气，终于可以放松了。' WHERE type='word' AND category='表情心理' AND content='如释重负';
UPDATE vocab_library SET example = '听到自己得了第一名，他喜形于色，嘴角怎么也压不下去。' WHERE type='word' AND category='表情心理' AND content='喜形于色';
UPDATE vocab_library SET example = '虽然摔了一跤很疼，他却若无其事地拍拍裤子站起来，继续跑。' WHERE type='word' AND category='表情心理' AND content='若无其事';
UPDATE vocab_library SET example = '没评上三好学生，她愁眉苦脸地坐在座位上，一句话也不说。' WHERE type='word' AND category='表情心理' AND content='愁眉苦脸';
UPDATE vocab_library SET example = '比赛输了，队员们垂头丧气地走下赛场，谁都不说话。' WHERE type='word' AND category='表情心理' AND content='垂头丧气';
UPDATE vocab_library SET example = '同学们满腔热情地投入到植树活动中，干得热火朝天。' WHERE type='word' AND category='表情心理' AND content='满腔热情';
UPDATE vocab_library SET example = '爷爷看着全家团圆的合影，不禁热泪盈眶，嘴上却笑着说"好，好"。' WHERE type='word' AND category='表情心理' AND content='热泪盈眶';
