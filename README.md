# Creallo Homebrew tap

크렐로 앱을 `brew` 로 설치합니다.

```bash
brew tap creallo/tap
brew install --cask creallo-3d-viewer
```

한 줄로도 됩니다.

```bash
brew install --cask creallo/tap/creallo-3d-viewer
```

## Creallo 3D Viewer

제조를 위한 로컬 3D 뷰어입니다. STEP·STL 등 13종을 열고, 치수를 재고, 살두께와
메쉬 상태를 검사하고, 가벼운 오류를 고칩니다. **모델 파일은 업로드되지 않습니다** —
계산은 내 컴퓨터에서 합니다.

* 홈페이지 · 내려받기: <https://download.creallo.com>
* Apple Silicon(M1 이후) 맥에서 돕니다. 애플 공증을 받았습니다.

### 업데이트

**앱이 스스로 갱신합니다.** 그래서 cask 에 `auto_updates true` 를 두었고,
`brew upgrade` 가 앱이 올라간 판을 옛것으로 되돌리지 않습니다.

베타를 먼저 써 보시려면 앱 안에서 켜세요 — 설정 → **베타 버전 받기**.
brew 로는 정식만 나갑니다.

---

이 저장소는 cask 파일만 담습니다. 앱 소스는 따로 있습니다.
