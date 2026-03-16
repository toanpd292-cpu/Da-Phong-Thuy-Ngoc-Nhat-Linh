-- SQL script to create and populate the products table for Ngọc Nhất Linh
-- Run this in your Supabase SQL Editor

-- 1. Create the products table if it doesn't exist
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price TEXT NOT NULL,
  old_price TEXT,
  tag TEXT,
  img TEXT,
  description TEXT,
  category TEXT,
  affinities TEXT[],
  specs JSONB,
  images TEXT[],
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. Clear existing data (optional, use with caution)
-- DELETE FROM products;

-- 3. Insert real product data
INSERT INTO products (name, price, old_price, tag, img, description, category, affinities, specs, images)
VALUES 
(
  'Vòng Tay Thạch Anh Tóc Vàng 12ly', 
  '4.500.000đ', 
  '5.200.000đ', 
  'Mệnh Kim / Thổ', 
  'https://images.unsplash.com/photo-1615655114865-4cc1bda5901e?q=80&w=1000&auto=format&fit=crop',
  'Thạch anh tóc vàng (Rutilated Quartz) là một trong những loại đá quý phong thủy được ưa chuộng nhất bởi vẻ đẹp lộng lẫy và năng lượng mạnh mẽ. Những sợi "tóc" vàng bên trong thực chất là các tinh thể rutil, mang lại hiệu ứng ánh kim rực rỡ dưới ánh sáng. Trong phong thủy, màu vàng tượng trưng cho hành Thổ và hành Kim. Do đó, vòng tay thạch anh tóc vàng cực kỳ phù hợp cho những người thuộc hai cung mệnh này. Nó giúp kích hoạt cung tài lộc, mang lại sự quyết đoán trong kinh doanh và bảo vệ chủ nhân khỏi những năng lượng tiêu cực.',
  'Vòng tay phong thủy',
  ARRAY['Mệnh Kim', 'Mệnh Thổ'],
  '[{"label": "Chất liệu", "value": "Đá Thạch Anh Tóc Vàng Tự Nhiên"}, {"label": "Kích thước hạt", "value": "12mm (12ly)"}, {"label": "Số lượng hạt", "value": "17 - 19 hạt (Tùy size tay)"}, {"label": "Hợp mệnh", "value": "Mệnh Kim, Mệnh Thổ"}, {"label": "Xuất xứ", "value": "Brazil / Madagascar"}]'::jsonb,
  ARRAY['https://images.unsplash.com/photo-1615655114865-4cc1bda5901e?q=80&w=1000&auto=format&fit=crop', 'https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?q=80&w=1000&auto=format&fit=crop']
),
(
  'Vòng Tay Trầm Hương Tốc Kiến 108 Hạt', 
  '2.800.000đ', 
  '3.500.000đ', 
  'Mọi Cung Mệnh', 
  'https://images.unsplash.com/photo-1605100804763-247f67b3557e?q=80&w=1000&auto=format&fit=crop',
  'Vòng tay Trầm Hương 108 hạt mang ý nghĩa đoạn trừ 108 loại phiền não, mang lại sự bình an, thư thái trong tâm hồn. Hương thơm dịu nhẹ của trầm giúp xua đuổi tà khí, thu hút vượng khí và may mắn cho chủ nhân.',
  'Vòng tay phong thủy',
  ARRAY['Mệnh Kim', 'Mệnh Mộc', 'Mệnh Thủy', 'Mệnh Hỏa', 'Mệnh Thổ'],
  '[{"label": "Chất liệu", "value": "Trầm Hương Tốc Kiến Tự Nhiên"}, {"label": "Số lượng hạt", "value": "108 hạt"}, {"label": "Kích thước hạt", "value": "6mm"}, {"label": "Hợp mệnh", "value": "Tất cả các mệnh"}]'::jsonb,
  ARRAY['https://images.unsplash.com/photo-1605100804763-247f67b3557e?q=80&w=1000&auto=format&fit=crop']
),
(
  'Tượng Phật Di Lặc Ngọc Hoàng Long', 
  '18.500.000đ', 
  NULL, 
  'Mệnh Thổ / Kim', 
  'https://images.unsplash.com/photo-1544124499-58912cbddaad?q=80&w=1000&auto=format&fit=crop',
  'Phật Di Lặc là biểu tượng của niềm vui, hạnh phúc và sự sung túc. Tượng được tạc từ đá Ngọc Hoàng Long tự nhiên với sắc vàng rực rỡ, mang lại năng lượng tích cực và tài lộc cho gia chủ.',
  'Vật phẩm phong thủy',
  ARRAY['Mệnh Thổ', 'Mệnh Kim'],
  '[{"label": "Chất liệu", "value": "Đá Ngọc Hoàng Long Tự Nhiên"}, {"label": "Kích thước", "value": "Cao 20cm, Rộng 15cm"}, {"label": "Hợp mệnh", "value": "Mệnh Thổ, Mệnh Kim"}]'::jsonb,
  ARRAY['https://images.unsplash.com/photo-1544124499-58912cbddaad?q=80&w=1000&auto=format&fit=crop']
),
(
  'Quả Cầu Thạch Anh Hồng Tự Nhiên', 
  '5.200.000đ', 
  NULL, 
  'Mệnh Hỏa / Thổ', 
  'https://images.unsplash.com/photo-1569003339405-ea396a5a8a90?q=80&w=1000&auto=format&fit=crop',
  'Thạch anh hồng là viên đá của tình yêu và sự bao dung. Quả cầu thạch anh hồng giúp cân bằng cảm xúc, cải thiện các mối quan hệ và mang lại sự bình an cho không gian sống.',
  'Vật phẩm phong thủy',
  ARRAY['Mệnh Hỏa', 'Mệnh Thổ'],
  '[{"label": "Chất liệu", "value": "Đá Thạch Anh Hồng Tự Nhiên"}, {"label": "Đường kính", "value": "12cm"}, {"label": "Hợp mệnh", "value": "Mệnh Hỏa, Mệnh Thổ"}]'::jsonb,
  ARRAY['https://images.unsplash.com/photo-1569003339405-ea396a5a8a90?q=80&w=1000&auto=format&fit=crop']
),
(
  'Mặt Dây Chuyền Phật Bản Mệnh Thạch Anh Đen', 
  '1.500.000đ', 
  NULL, 
  'Mệnh Thủy / Mộc', 
  'https://images.unsplash.com/photo-1611085583191-a3b13b24424a?q=80&w=1000&auto=format&fit=crop',
  'Phật Bản Mệnh giúp bảo hộ, mang lại bình an và may mắn cho mỗi con giáp. Mặt dây chuyền được tạc từ đá thạch anh đen tự nhiên, mang năng lượng bảo vệ mạnh mẽ.',
  'Trang sức phong thủy',
  ARRAY['Mệnh Thủy', 'Mệnh Mộc'],
  '[{"label": "Chất liệu", "value": "Đá Thạch Anh Đen Tự Nhiên"}, {"label": "Kích thước", "value": "4cm x 2.5cm"}, {"label": "Hợp mệnh", "value": "Mệnh Thủy, Mệnh Mộc"}]'::jsonb,
  ARRAY['https://images.unsplash.com/photo-1611085583191-a3b13b24424a?q=80&w=1000&auto=format&fit=crop']
),
(
  'Tỳ Hưu Cõng Tiền Đá Cẩm Thủy', 
  '12.000.000đ', 
  NULL, 
  'Mệnh Mộc / Hỏa', 
  'https://images.unsplash.com/photo-1590548784585-645d2b60493e?q=80&w=1000&auto=format&fit=crop',
  'Tỳ Hưu là linh vật chiêu tài giữ lộc hàng đầu trong phong thủy. Cặp Tỳ Hưu được tạc từ đá cẩm thủy tự nhiên, giúp thu hút tài lộc và bảo vệ của cải cho gia chủ.',
  'Linh vật chiêu tài',
  ARRAY['Mệnh Mộc', 'Mệnh Hỏa'],
  '[{"label": "Chất liệu", "value": "Đá Cẩm Thủy Tự Nhiên"}, {"label": "Kích thước", "value": "Dài 15cm"}, {"label": "Hợp mệnh", "value": "Mệnh Mộc, Mệnh Hỏa"}]'::jsonb,
  ARRAY['https://images.unsplash.com/photo-1590548784585-645d2b60493e?q=80&w=1000&auto=format&fit=crop']
);
