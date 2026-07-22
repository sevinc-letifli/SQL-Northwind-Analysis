# Northwind SQL Data Analysis
## 📌 Layihə haqqında

Bu layihə Northwind verilənlər bazası üzərində SQL vasitəsilə müxtəlif biznes suallarının araşdırılmasını, məlumatların analiz edilməsini və SQL sorğularının optimallaşdırılmasını əhatə edir.

Layihənin əsas məqsədi real biznes ssenarilərinə uyğun suallar formalaşdırmaq, həmin suallara SQL sorğuları vasitəsilə cavab tapmaq, analiz zamanı qarşılaşılan texniki və biznes problemlərini müəyyənləşdirmək və mümkün həll yollarını təqdim etməkdir.

Layihə çərçivəsində SQL-in əsas və qabaqcıl mövzuları sadədən mürəkkəbə doğru mərhələli şəkildə tətbiq edilmişdir. Hər bir analiz zamanı yalnız SQL sorğusunun yazılması deyil, əldə olunan nəticələrin biznes baxımından şərh edilməsi, qarşılaşılan problemlərin müəyyənləşdirilməsi və mümkün həll yollarının təklif edilməsi də nəzərə alınmışdır.

## 🎯 Layihənin məqsədləri

- Biznes suallarını SQL vasitəsilə analiz etmək;
- Müxtəlif JOIN növlərindən istifadə edərək cədvəllər arasında əlaqələr qurmaq;
- Aqreqasiya funksiyaları ilə biznes göstəricilərini hesablamaq;
- CTE və Subquery vasitəsilə mürəkkəb sorğuları analiz etmək;
- SQL sorğularının performansını qiymətləndirmək;
- INDEX və JOIN kimi yanaşmalarla sorğuları optimallaşdırmaq;
- Analiz zamanı qarşılaşılan texniki problemləri müəyyənləşdirmək;
- Məlumat keyfiyyəti və NULL dəyərlərlə bağlı problemləri nəzərə almaq;
- Analitik nəticələri biznes problemləri ilə əlaqələndirmək;
- Analiz nəticələrinə əsaslanaraq biznes yönümlü tövsiyələr hazırlamaq.

## 🛠️ İstifadə olunan alət

- DB Browser for SQLite

## 🗃️ Dataset haqqında

Layihədə Northwind verilənlər bazasından istifadə edilmişdir.

Northwind verilənlər bazası məhsullar, müştərilər, sifarişlər, işçilər və digər biznes məlumatlarını özündə birləşdirən nümunə verilənlər bazasıdır.

Layihədə əsas istifadə olunan cədvəllər:

- Customers
- Orders
- Order Details
- Products
- Employees

Bu cədvəllərdən istifadə etməklə satış, müştəri davranışı, məhsul ehtiyatları, işçi fəaliyyəti və sifarişlərin icrası ilə bağlı müxtəlif analizlər aparılmışdır.

# 📂 Layihənin strukturu

Layihə 6 əsas hissədən ibarətdir:

### 1️⃣ Basic SQL Analysis
SELECT, WHERE, ORDER BY və LIMIT

### 2️⃣ JOIN Analysis
INNER JOIN, LEFT JOIN və SELF JOIN

### 3️⃣ Aggregation Analysis
GROUP BY, HAVING və aqreqasiya funksiyaları

### 4️⃣ CTE & Subquery Analysis
CTE, WITH və Subquery

### 5️⃣ Window Functions
RANK(), DENSE_RANK() və ROW_NUMBER()

### 6️⃣ Query Optimization
INDEX, Correlated Subquery, JOIN, EXPLAIN QUERY PLAN və performans müqayisəsi

SQL mövzuları sadədən mürəkkəbə doğru mərhələli şəkildə tətbiq edilmişdir.

---

# 1️⃣ Basic SQL Analysis

Bu bölmədə SELECT, WHERE, ORDER BY və LIMIT operatorlarından istifadə etməklə məhsul, stok və sifariş məlumatları analiz edilmişdir.

## Araşdırılan biznes sualları

1) Hazırda satışda olan ən yüksək qiymətli 10 məhsul hansılardır?
2) Stok səviyyəsi müəyyən edilmiş limitdən aşağı olan və yenidən sifariş tələb edən məhsullar hansılardır?
3) Tələb olunan çatdırılma tarixindən gec göndərilən sifarişlər hansılardır?
4) Qiyməti yüksək, stok səviyyəsi kritik olan məhsullar hansılardır?
5) Satışdan çıxarılan, lakin hələ də stokda qalan məhsullar hansılardır?
6) Göndərilmə vaxtı yaxınlaşan, lakin hələ göndərilməyən sifarişlər hansılardır?

## Əsas SQL mövzuları

- `SELECT`  
- `WHERE`  
- `AND`  
- `ORDER BY`  
- `LIMIT`

## Əsas biznes istiqamətləri

- Məhsul qiymətlərinin analizi;
- Stok risklərinin müəyyən edilməsi;
- Gecikmiş sifarişlərin analizi;
- Yüksək qiymətli məhsullarda stok riskinin müəyyənləşdirilməsi;
- Satışdan çıxarılmış məhsulların stokda qalmasının araşdırılması;
- Təcili göndərilməli sifarişlərin prioritetləşdirilməsi.


# 2️⃣ JOIN Analysis

Bu bölmədə müxtəlif cədvəllər arasında əlaqələr qurularaq satış, işçi strukturu və müştəri aktivliyi analiz edilmişdir.

## İstifadə olunan JOIN növləri

- `INNER JOIN`
- `LEFT JOIN`
- `SELF JOIN`

## Araşdırılan biznes sualları

1) Şirkətin ən çox satış etdiyi ölkələr hansılardır?
2) Şirkətdə hər bir işçi kimə hesabat verir və struktur necə qurulub?
3) Son 1 ildə sifariş verməyən müştərilər hansılardır?

## Əsas biznes istiqamətləri

- Ölkələr üzrə satış performansının müəyyənləşdirilməsi;
- İşçi-rəhbər əlaqələrinin və təşkilati strukturun araşdırılması;
- Uzun müddət aktiv olmayan müştərilərin müəyyən edilməsi.

## Texniki müşahidələr

JOIN-lərdən istifadə zamanı cədvəllər arasındakı əlaqələrin düzgün başa düşülməsi vacibdir.

Xüsusilə one-to-many əlaqələrdə aqreqasiyanın düzgün səviyyədə aparılmasına və məlumatların yanlış şəkildə təkrarlanmamasına diqqət yetirilmişdir.

Bundan əlavə, NULL dəyərlərin nəticələrə təsiri və tarixi verilənlər bazası ilə cari tarix arasındakı uyğunsuzluq kimi məsələlər də nəzərə alınmışdır.


# 3️⃣ Aggregation Analysis

Bu bölmədə GROUP BY, HAVING və aqreqasiya funksiyalarından istifadə etməklə müştəri və məhsul göstəriciləri analiz edilmişdir.

## Araşdırılan biznes sualları

1) Gəlirə görə TOP 5 müştərilər kimlərdir?
2) Hansı məhsullar daha çox satılır və yüksək tələbat görür?

## İstifadə olunan əsas funksiyalar

- `SUM()`
- `COUNT()`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`

## Əsas biznes istiqamətləri

- Ən yüksək gəlir gətirən müştərilərin müəyyənləşdirilməsi;
- Müştəri loyallığının artırılması;
- Yüksək tələbatlı məhsulların müəyyən edilməsi;
- Stok planlaşdırılması;
- Yüksək tələbatlı məhsullarda stockout riskinin azaldılması.

## Əsas analitik müşahidə

Yüksək gəlir gətirən müştərilər şirkət üçün vacib müştəri seqmentini təşkil edə bilər.

Eyni zamanda, yüksək tələbatlı məhsulların stok səviyyəsinin nəzarətdə saxlanılması satış itkilərinin qarşısını almağa kömək edə bilər.


# 4️⃣ CTE & Subquery Analysis

Bu bölmədə CTE və Subquery istifadə edilərək orta göstəricidən daha yüksək gəlir gətirən müştərilər müəyyən edilmişdir.

## Biznes sualı

 - Hansı müştərilər şirkətin orta müştəri gəlirindən daha çox gəlir gətirir?

## İstifadə olunan texnologiyalar

- `CTE`
- `WITH`
- `Subquery`
- `SUM()`
- `AVG()`
- `GROUP BY`

## Analiz yanaşması

Əvvəlcə hər bir müştərinin ümumi gəliri hesablanmış və nəticə CTE daxilində formalaşdırılmışdır.

Daha sonra Subquery vasitəsilə bütün müştərilər üzrə orta gəlir hesablanmışdır.

Sonda isə ümumi gəliri orta müştəri gəlirindən yüksək olan müştərilər müəyyən edilmişdir.

## Biznes əhəmiyyəti

Orta göstəricidən daha yüksək gəlir gətirən müştərilər şirkət üçün yüksək dəyərli müştəri seqmenti hesab edilə bilər.

Bu müştərilər üçün fərdi təkliflər, loyallıq proqramları, xüsusi kampaniyalar, uzunmüddətli əməkdaşlıq strategiyaları tətbiq edilə bilər.

Qeyd etmək lazımdır ki, müştəri dəyərinin tam qiymətləndirilməsi üçün yalnız gəlir deyil, sifariş tezliyi, son sifariş tarixi, orta sifariş məbləği və mənfəətlilik kimi göstəricilər də nəzərə alınmalıdır.


# 5️⃣ Window Functions

Bu bölmədə işçilərin idarə etdikləri sifariş sayına əsasən sıralanması və müxtəlif Window Function-ların nəticələrinin müqayisəsi aparılmışdır.

## Biznes sualı

- İşçilərin idarə etdikləri sifariş sayına əsasən performans sıralaması necədir və müxtəlif sıralama funksiyaları bərabər nəticələri necə idarə edir?

## İstifadə olunan funksiyalar

- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`

## Nəticələrin müqayisəsi

 RANK() - Eyni nəticəyə eyni rank verir və boşluq yaradır: 1, 2, 2, 4; 
 DENSE_RANK() - Eyni nəticəyə eyni rank verir, boşluq yaratmır: 1, 2, 2, 3; 
 ROW_NUMBER() - Hər sətrə unikal sıra nömrəsi verir: 1, 2, 3, 4 

## Əsas biznes istiqamətləri

İşçilərin idarə etdiyi sifariş sayı onların iş yükünü qiymətləndirmək üçün göstəricilərdən biri kimi istifadə edilə bilər.

Bu analiz iş yükünün bölüşdürülməsini, əlavə resursa ehtiyac olan sahələri, işçilər arasındakı sifariş həcmi fərqlərini müəyyənləşdirməyə kömək edə bilər.

Lakin sifariş sayı işçi performansının tam ölçüsü hesab edilmir. Daha əhatəli qiymətləndirmə üçün gəlir, sifariş dəyəri, müştəri münasibətləri və çatdırılma performansı kimi göstəricilər də nəzərə alınmalıdır.

# 6️⃣ Query Optimization

Bu bölmədə SQL sorğularının performansının yaxşılaşdırılması üçün müxtəlif optimallaşdırma yanaşmaları araşdırılmışdır.

## Əsas mövzular

- INDEX
- Correlated Subquery
- JOIN
- EXPLAIN QUERY PLAN
- Execution Plan
- Execution Time
- Query Cost


## INDEX ilə optimallaşdırma

Orders cədvəlində CustomerID sütunu üzrə filtrasiya aparan sorğunun optimallaşdırılması üçün index yaradılmışdır.

Index-lər verilənlər bazasında müəyyən sütunlar üzrə məlumatların daha səmərəli axtarılmasına kömək edən xüsusi strukturlardır.

Onları kitabın mündəricatına bənzətmək olar. Mündəricat kitabda lazımi mövzunun daha sürətli tapılmasına kömək etdiyi kimi, uyğun index də verilənlər bazasında tələb olunan məlumatlara daha səmərəli çıxış imkanı yarada bilər.

Lakin index-lərin mənfi tərəfləri də mövcuddur. Onlar əlavə yaddaş tələb edir və INSERT, UPDATE və DELETE əməliyyatları zamanı əlavə maintenance xərci yarada bilər.

Bundan əlavə, verilənlər bazası optimallaşdırıcısı hər zaman index-dən istifadə etmir. Index-in seçilib-seçilməməsi cədvəlin ölçüsü, məlumatların paylanması, sorğunun strukturu və verilənlər bazası sisteminin optimallaşdırma mexanizmindən asılıdır.


## Correlated Subquery və JOIN müqayisəsi

Müştərilərin sifariş sayını hesablamaq üçün əvvəlcə correlated subquery, daha sonra isə JOIN əsaslı yanaşma tətbiq edilmişdir.

### Nəticələr
- Correlated Subquery istifadəsi zamanı icra müddəti: 309 ms 
- JOIN istifadəsi zamanı icra müddəti: 38 ms 

Aparılan test zamanı JOIN əsaslı sorğu Correlated Subquery ilə müqayisədə təxminən 8.1 dəfə daha sürətli icra edilmişdir.

Lakin bu nəticə konkret dataset və test mühiti üçün keçərlidir. Sorğuların performansı verilənlər bazası sistemi, hardware, məlumat həcmi, index-lər, cache və execution plan kimi amillərdən asılı olaraq dəyişə bilər.
