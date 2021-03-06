use ganshahao;
set names utf8;

truncate user;
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick1', 'a@a.com', '13800000000', '111', 'description1', 200011, '/doc/resume/id1.doc', '["1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户1', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick2', 'a@b.com', '13800000000', '222', 'description2', 200022, '/doc/resume/id2.doc', '["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户2', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick3', 'a@c.com', '13800000000', '333', 'description3', 200033, '/doc/resume/id3.doc', '["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户3', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick4', 'a@a.com', '13800000000', '111', 'description1', 200011, '/doc/resume/id1.doc', '["1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户4', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick5', 'a@b.com', '13800000000', '222', 'description2', 200022, '/doc/resume/id2.doc', '["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户5', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick6', 'a@c.com', '13800000000', '333', 'description3', 200033, '/doc/resume/id3.doc', '["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户6', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick7', 'a@a.com', '13800000000', '111', 'description1', 200011, '/doc/resume/id1.doc', '["1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户7', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick8', 'a@b.com', '13800000000', '222', 'description2', 200022, '/doc/resume/id2.doc', '["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户8', 0);
insert into user(nick_name, email, mobile, password, description, zipcode, resume, available_time, real_name, is_veteran) values ('test_nick9', 'a@c.com', '13800000000', '333', 'description3', 200033, '/doc/resume/id3.doc', '["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"]', '用户9', 0);

truncate company;
insert into company(account, name, logo, description) values ('gsh1', '数据测试数据测试数据1', 'logo.png', '1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于2000年1月1日在中关村创建了百度公司。从最初的不足10人发展至今，员工人数超过18000人。如今的百度，已成为中国最受欢迎、影响力最大的中文网站。百度拥有数千名研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。');
insert into company(account, name, logo, description) values ('gsh2', '数据测试数据测试数据2', 'logo.png', "McDonald's Plaza麦当劳餐厅（McDonald's Corporation）是大型的连锁快餐集团，在世界上大约拥有三万间分店，主要售卖汉堡包、薯条、炸鸡、汽水、沙拉等。麦当劳餐厅遍布在全世界六大洲百余个国家。在很多国家麦当劳代表着一种美国式的生活方式。在中国大陆地区的早期的译名是“麦克唐纳快餐”。2010年7月4日，美国媒体报道麦当劳出售的麦乐鸡，含有泥胶和石油成分的化学物质，即聚二甲基硅氧烷和特丁基对苯二酚。2012年1月中旬，麦当劳提高中国市场部分产品价格。2012年5月，麦当劳悄然启动年内第二次涨价，涨幅16.6%。");
insert into company(account, name, logo, description) values ('gsh3', '数据测试数据测试数据3', 'logo.png', '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据');
insert into company(account, name, logo, description) values ('gsh4', '数据测试数据测试数据4', 'logo.png', '1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于2000年1月1日在中关村创建了百度公司。从最初的不足10人发展至今，员工人数超过18000人。如今的百度，已成为中国最受欢迎、影响力最大的中文网站。百度拥有数千名研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。');
insert into company(account, name, logo, description) values ('gsh5', '数据测试数据测试数据5', 'logo.png', "McDonald's Plaza麦当劳餐厅（McDonald's Corporation）是大型的连锁快餐集团，在世界上大约拥有三万间分店，主要售卖汉堡包、薯条、炸鸡、汽水、沙拉等。麦当劳餐厅遍布在全世界六大洲百余个国家。在很多国家麦当劳代表着一种美国式的生活方式。在中国大陆地区的早期的译名是“麦克唐纳快餐”。2010年7月4日，美国媒体报道麦当劳出售的麦乐鸡，含有泥胶和石油成分的化学物质，即聚二甲基硅氧烷和特丁基对苯二酚。2012年1月中旬，麦当劳提高中国市场部分产品价格。2012年5月，麦当劳悄然启动年内第二次涨价，涨幅16.6%。");
insert into company(account, name, logo, description) values ('gsh6', '数据测试数据测试数据6', 'logo.png', '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据');
insert into company(account, name, logo, description) values ('gsh7', '数据测试数据测试数据7', 'logo.png', '1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于2000年1月1日在中关村创建了百度公司。从最初的不足10人发展至今，员工人数超过18000人。如今的百度，已成为中国最受欢迎、影响力最大的中文网站。百度拥有数千名研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。');
insert into company(account, name, logo, description) values ('gsh8', '数据测试数据测试数据8', 'logo.png', "McDonald's Plaza麦当劳餐厅（McDonald's Corporation）是大型的连锁快餐集团，在世界上大约拥有三万间分店，主要售卖汉堡包、薯条、炸鸡、汽水、沙拉等。麦当劳餐厅遍布在全世界六大洲百余个国家。在很多国家麦当劳代表着一种美国式的生活方式。在中国大陆地区的早期的译名是“麦克唐纳快餐”。2010年7月4日，美国媒体报道麦当劳出售的麦乐鸡，含有泥胶和石油成分的化学物质，即聚二甲基硅氧烷和特丁基对苯二酚。2012年1月中旬，麦当劳提高中国市场部分产品价格。2012年5月，麦当劳悄然启动年内第二次涨价，涨幅16.6%。");
insert into company(account, name, logo, description) values ('gsh9', '数据测试数据测试数据9', 'logo.png', '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据');

truncate job;
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (1, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (1, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (1, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (2, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (2, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (2, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (3, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (3, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (3, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (3, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (4, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (4, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (4, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (5, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (5, '临时工1', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 10);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (5, '临时工2', 0, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200011', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (6, '临时工3', 1, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200022', 20);
insert into job(company_id, name, status, updated_time, description, address, zipcode, salary) values (7, '临时工3', 1, NOW(), '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '花还东路', '200033', 30);

truncate training;
insert into training(job_id, training_type, name, description, link) values (1, 1, '给连四你1', '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '');
insert into training(job_id, training_type, name, description, link) values (1, 2, '给连四你2', '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', 'test_description.png');
insert into training(job_id, training_type, name, description, link) values (1, 3, '给连四你2', '测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据', '<embed src="http://player.youku.com/player.php/sid/XNTYxMTg2MTQ4/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>');

truncate question;
insert into question(training_id, content, choices, answer) values (1, '怎么扫地？', '["方法1", "方法2", "方法3", "方法4"]', 1);
insert into question(training_id, content, choices, answer) values (1, '怎么提水？', '["方法1", "方法2", "方法3", "方法4"]', 2);
insert into question(training_id, content, choices, answer) values (1, '怎么炒菜？', '["方法1", "方法2", "方法3", "方法4"]', 3);
insert into question(training_id, content, choices, answer) values (2, '怎么扫地2？', '["方法1", "方法2", "方法3", "方法4"]', 3);
insert into question(training_id, content, choices, answer) values (2, '怎么提水2？', '["方法1", "方法2", "方法3", "方法4"]', 2);
insert into question(training_id, content, choices, answer) values (2, '怎么炒菜2？', '["方法1", "方法2", "方法3", "方法4"]', 1);
insert into question(training_id, content, choices, answer) values (3, '怎么扫地3？', '["方法1", "方法2", "方法3", "方法4"]', 3);
insert into question(training_id, content, choices, answer) values (3, '怎么提水3？', '["方法1", "方法2", "方法3", "方法4"]', 2);
insert into question(training_id, content, choices, answer) values (3, '怎么炒菜3？', '["方法1", "方法2", "方法3", "方法4"]', 1);

truncate training_completed;
insert into training_completed(training_id, user_id, updated_time, score) values (1, 1, NOW(), 80);
insert into training_completed(training_id, user_id, updated_time, score) values (2, 1, NOW(), 90);
insert into training_completed(training_id, user_id, updated_time, score) values (3, 2, NOW(), 100);
insert into training_completed(training_id, user_id, updated_time, score) values (4, 2, NOW(), 80);
insert into training_completed(training_id, user_id, updated_time, score) values (2, 1, NOW(), 90);
insert into training_completed(training_id, user_id, updated_time, score) values (4, 3, NOW(), 100);
insert into training_completed(training_id, user_id, updated_time, score) values (5, 3, NOW(), 80);
insert into training_completed(training_id, user_id, updated_time, score) values (1, 4, NOW(), 90);
insert into training_completed(training_id, user_id, updated_time, score) values (2, 5, NOW(), 100);
insert into training_completed(training_id, user_id, updated_time, score) values (4, 7, NOW(), 80);
insert into training_completed(training_id, user_id, updated_time, score) values (1, 7, NOW(), 90);
insert into training_completed(training_id, user_id, updated_time, score) values (2, 8, NOW(), 100);

truncate job_application;
insert into job_application(job_id, user_id, status) values (1, 1, 0);
insert into job_application(job_id, user_id, status) values (2, 1, 0);
insert into job_application(job_id, user_id, status) values (1, 2, 0);
insert into job_application(job_id, user_id, status) values (1, 1, 0);
insert into job_application(job_id, user_id, status) values (3, 1, 0);
insert into job_application(job_id, user_id, status) values (2, 2, 0);
insert into job_application(job_id, user_id, status) values (5, 1, 0);
insert into job_application(job_id, user_id, status) values (3, 1, 0);
insert into job_application(job_id, user_id, status) values (4, 2, 0);
insert into job_application(job_id, user_id, status) values (4, 1, 0);
insert into job_application(job_id, user_id, status) values (5, 1, 0);
insert into job_application(job_id, user_id, status) values (5, 2, 0);
insert into job_application(job_id, user_id, status) values (7, 1, 0);
insert into job_application(job_id, user_id, status) values (8, 2, 0);