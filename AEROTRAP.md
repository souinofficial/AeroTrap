# GitHub kaynak paketi notu

Bu pakette WorryUltraSlowed.mp3 bulunmaz. Aşağıdaki müzik bilgileri özel Windows derlemesini anlatır. GitHub paketi kendi README.md ve BUILDING-AEROTRAP.md talimatlarıyla kullanılmalıdır.

# AeroTrap 1.4.5

AeroTrap tabanlı Roblox başlatıcısı.

## Kullanım

AeroTrap çalışırken Windows bildirim alanında simgesi görünür. Simgeye tıklayınca pencere öne gelir; sağ tık menüsünde Aç, Ayarlar ve Çıkış bulunur. Windows simgeyi gizli simgeler bölümüne koyabilir. Çıkış, ayar penceresinin kaydedilmemiş değişiklikler kontrolünü korur. Discord RPC ana menüde ve ayarlarda açık olan entegrasyon seçeneğiyle başlatılır. Discord RPC kullanıcının AeroTrap uygulama kimliğine bağlandı: 1556417413233512498. Büyük görsel anahtarı aerotrap; bu görsel Developer Portal üzerinden yüklenmelidir.

AeroTrap.exe açıldığında ana menü gösterilir; Roblox kendiliğinden açılmaz. Oyna düğmesi Roblox Player'ı başlatır. Yanındaki ok üzerinden Roblox Studio seçilebilir. Ayarlar düğmesi AeroTrap'ın mevcut ayar ekranını açar.

Ayar ekranında FastFlag ayarları, modlar, görünüm, entegrasyonlar, Roblox sürüm/kanal yönetimi, bölge seçimi, hızlı oynama ve kısayollar bulunur. Özelliklerin çalışması, ilgili Roblox desteğine ve hesap izinlerine bağlıdır.

Başlatıcının zaten açık bir Roblox oturumu için gösterdiği onay varsayılan olarak kapalıdır. Bu değişiklik Roblox'un kendi hesap veya oturum kurallarını değiştirmez. Onay istenirse başlatma ayarlarından yeniden açılabilir.

.NET 10 uygulamanın içindedir; ayrıca yüklemek gerekmez. GIF de uygulamanın içine gömülüdür. Windows aramasında AeroTrap, AeroTrap.exe ve AeroTrap Ayarlar kısayolları oluşturulur.

## Görünüm

Entegrasyonlar → Discord görseli: AeroTrap logosu (varsayılan), Yeşilli karakter veya Animasyonlu GIF bağlantısı seçilebilir. Karakter için outputs/AeroTrap-Character.png görseli Discord Developer Portal → Rich Presence → Art Assets bölümüne aero_character adıyla yüklenmelidir. Animasyonlu görsel için herkese açık doğrudan HTTPS GIF bağlantısı gerekir. Boş veya geçersiz bağlantıda AeroTrap logosuna dönülür. Discord kartında müzik çalınmaz. Görsel seçimleri kaydedilir; RPC açıkken seçim anında güncellenir.

İlk açılışta Everforest paleti seçilir. Sonraki palet seçimleri kaydedilir. Ana menü ve modern başlatıcıdaki yuvarlak karakterin üzerine gelince LONOWN, riserayss — worry (ultra slowed) yüzde 30 ses düzeyinde baştan çalar; fare ayrıldığında, pencere odağı kaybolduğunda veya pencere kapandığında durur. Kayıt uygulamaya gömülüdür.

Ses kaynağı: https://immnnt.bandcamp.com/track/worry-ultra-slowed
Müzik telifleri ilgili hak sahiplerine aittir; müzik kaydı uygulamanın MPL kaynak kodu lisansına dahil değildir.

Görünüm ayarlarına dört renk paleti eklendi: Everforest / Adaçayı, Nane, Zümrüt ve Siyah beyaz. Palet seçimi kaydedilir; açık, koyu ve sistem temalarıyla birlikte çalışır. Kaydedilmemiş değişiklikler uyarısı ve Discord RPC sayfa, sunucu, hesap ve düğme metinleri Türkçeleştirildi. Discord bağlantısı canlı bir Discord oturumunda test edilmedi; AeroTrap uygulama kimliği kullanılır.

Everforest paletinden esinlenen adaçayı yeşili, koyu gri ve kırık beyaz renk düzeni; açık/koyu tema ve sistem temasını izleme desteği. Yuvarlak karakter görseli fare üzerine geldiğinde döner. Logo temiz geometrik çizgilerle yeniden oluşturuldu; Windows simgesi 16–256 piksel arasında yedi çözünürlük içerir.

Sloganlar kaldırıldı. Kısa menü adları AeroTrap'ın kaynak çevirilerinden alındı; Türkçedeki hatalı çeviriler düzeltildi. AeroTrap'a özgü etiketler Türkçe/İngilizce kaynaklara eklendi.

## Kontroller

Windows derlemesi başarılıdır. Gerçek uygulama menüsü görüntülenerek Roblox'un menü açılışında başlatılmadığı, Oyna düğmesinin Player başlatma eylemini seçtiği ve Ayarlar düğmesinin ayar ekranını seçtiği doğrulandı. Önceki kontrollerde karakter dönüşü, açık tema, Windows sistem teması ve sistem diline dönüş doğrulandı. Roblox'ta bir oyuna katılma bu ortamda test edilmedi.

## Kaynaklar ve lisans

Tema paleti: https://github.com/sainnhe/everforest/blob/master/palette.md

AeroTrap kaynak kodu ve arayüz etiketleri: https://github.com/souinofficial/AeroTrap

Bu bağımsız bir özelleştirmedir. Orijinal telif başlıkları, LICENSE ve LICENSES korunmuştur; AeroTrap kaynak değişiklikleri MPL-2.0 kapsamındadır. Kullanıcının sağladığı iki karakter görseli korunmuştur. Temiz logo kaynağı: AeroTrap/Resources/AeroTrap/Logo.svg.

GIF: IC 63 Ghost Nebula Optical to Infrared Animation — NASA / ESA / J. DePasquale (STScI).
https://science.nasa.gov/asset/hubble/ic-63-ghost-nebula-optical-to-infrared-animation/

Derleme için .NET 10 SDK, Rust MSVC ve Visual Studio C++ araçları gerekir:

```powershell
dotnet publish AeroTrap/AeroTrap.csproj -c Release -r win-x64 -p:SelfContained=true -p:AppVersion=1.4.5 -o publish
```

