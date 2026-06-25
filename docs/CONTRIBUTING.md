# Panduan Kontribusi — Echoes of Time

## Workflow Harian

### 1. Sebelum mulai kerja — selalu pull dulu!
Di GitHub Desktop: klik **"Fetch origin"** → **"Pull"**

```bash
# Atau via terminal:
git pull origin main
```

### 2. Buat branch baru untuk tiap tugas
```bash
git checkout -b feature/nama-fitur
# contoh:
git checkout -b art/sprite-player-idle
git checkout -b feature/dialog-system
```

### 3. Kerjakan tugasmu, lalu commit
```bash
git add .
git commit -m "art: sprite idle protagonist selesai"
```

### 4. Push ke GitHub
```bash
git push origin feature/nama-fitur
```

### 5. Buat Pull Request di GitHub
- Buka repo di browser
- Klik **"Compare & pull request"**
- Tulis deskripsi singkat apa yang kamu ubah
- Tag anggota lain untuk review

---

## Aturan Penting

- ❌ **Jangan** commit langsung ke `main`
- ❌ **Jangan** commit folder `.godot/` (sudah ada di .gitignore)
- ✅ **Selalu** pull sebelum mulai kerja
- ✅ **Satu scene, satu orang** — koordinasi dulu sebelum edit scene yang sama
- ✅ Simpan file `.aseprite` asli di repo, bukan hanya PNG-nya

---

## Konvensi Nama File

```
# Sprites
player_idle.aseprite
player_walk.aseprite
npc_prajurit_majapahit.aseprite

# Scene
level_majapahit_01.tscn
ui_dialog_box.tscn
ui_hud.tscn

# Script
player_controller.gd
dialog_system.gd
time_travel_manager.gd
```

---

## Kalau Ada Git Conflict

1. Jangan panik
2. Hubungi Lead Dev (Tesalonika)
3. Jangan force push ke `main`
4. Selesaikan conflict bareng via GitHub Desktop atau VS Code

---

## Kontak Tim

| Role | Nama | Tanggung Jawab |
|------|------|----------------|
| Lead Developer | Tesalonika | Review PR, merge ke main, setup Godot |
| Art Director | Angelina | Semua asset visual, sprite, tileset |
| Narrative | Annisa | Cerita, dialog, desain level |
| Tech + QA | Nailah | Audio, integrasi, testing, Notion |
