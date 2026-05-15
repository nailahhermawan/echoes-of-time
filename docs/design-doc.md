# Game Design Document — Echoes of Time

## Ringkasan

| | |
|---|---|
| **Judul** | Echoes of Time |
| **Genre** | 2D Adventure / Edukasi Sejarah / Sci-Fi |
| **Engine** | Godot 4 |
| **Platform** | PC (Windows / Web Export) |
| **Target Pemain** | Pelajar SMA–Mahasiswa |

---

## Konsep Inti

> Setiap tindakan di masa lalu tidak pernah benar-benar hilang — ia meninggalkan jejak yang terus bergema ke masa depan.

Pemain menemukan artefak misterius yang memungkinkan perjalanan waktu ke era-era penting sejarah Indonesia. Setiap keputusan mengubah timeline dan berdampak pada era berikutnya.

---

## Mekanik Utama

### Time Travel
- Pemain berpindah antar era melalui portal / artefak
- Kondisi tiap era bergantung pada keputusan di era sebelumnya
- Maksimal 3 kali "rewind" per sesi

### Choice & Consequence
- Dialog pilihan dengan NPC memengaruhi state dunia
- Keputusan dicatat di **Timeline Log** yang bisa dilihat pemain
- Ending berbeda tergantung akumulasi pilihan

### Puzzle Sejarah
- Puzzle terinspirasi dari peristiwa sejarah nyata
- Contoh: menyusun kembali artefak Majapahit yang tersebar

---

## Era & Level

### Era 1: Kerajaan Majapahit (Abad 14)
- **Setting:** Pusat kerajaan, candi, hutan tropis
- **NPC Kunci:** Prajurit, pedagang, pendeta
- **Puzzle:** Menemukan prasasti yang hilang
- **Palette:** Emas `#C9A84C`, coklat tua `#5C3317`, merah gelap `#8B1A1A`

### Era 2: Kolonial Belanda (Abad 18–19)
- **Setting:** Kota kolonial, pelabuhan, perkebunan
- **NPC Kunci:** Pejuang lokal, pedagang VOC, petani
- **Puzzle:** Menyelundupkan pesan rahasia para pejuang
- **Palette:** Abu-biru `#6B7C8C`, putih kusam `#D9D5C5`, hijau tua `#2D5016`

### Era 3: Kemerdekaan (1945)
- **Setting:** Jakarta, medan pertempuran, rumah penduduk
- **NPC Kunci:** Pejuang kemerdekaan, warga sipil
- **Puzzle:** Menyebarkan teks proklamasi
- **Palette:** Merah `#CE1126`, putih `#FFFFFF`, hitam `#1A1A1A`, krem `#F5E6C8`

---

## UI/UX

- **HUD:** Timeline indicator, stamina bar, artefak yang dimiliki
- **Dialog Box:** Style disesuaikan per era (ukiran = Majapahit, kertas kusam = Kolonial)
- **Pause Menu:** Bisa lihat Timeline Log & peta era

---

## Audio

| Situasi | Deskripsi |
|---------|-----------|
| Era Majapahit | Gamelan Jawa, suasana mistis |
| Era Kolonial | Instrumen Eropa abad 18, tegang |
| Era Kemerdekaan | Patriotik, semi-orkestra |
| Time Travel | SFX distorsi, reverb panjang |

---

## Teknik Grafika (KOM1304)

| Teknik | Implementasi di Godot |
|--------|----------------------|
| Lighting | `Light2D` + `CanvasModulate` per era |
| Texturing | Pixel art 16×16 tile, palette per era |
| Animation | `AnimatedSprite2D` dari Aseprite |
| Particle | `GPUParticles2D` untuk portal time travel |
| Shader | Color grading 2D via `ShaderMaterial` |

---

*Dokumen ini akan diupdate seiring perkembangan project.*  
*Last updated: Mei 2026*
