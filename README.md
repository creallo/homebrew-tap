# Creallo Homebrew tap

크렐로 앱을 `brew` 로 설치합니다.

```bash
brew tap creallo/tap
brew trust creallo/tap
brew install --cask creallo-atlas
```

## `brew trust` 가 왜 필요한가

Homebrew 는 **자기 저장소(homebrew-cask)에 없는 tap 을 그냥 설치하지 않습니다.**
빼먹으면 이렇게 멈춥니다.

```
Error: Refusing to load cask creallo/tap/creallo-atlas from untrusted tap creallo/tap.
```

남의 컴퓨터에 프로그램을 깔아 주는 파일이니 한 번은 사람이 확인하고 넘어가라는
뜻입니다. 이 저장소가 크렐로 것인지 확인하신 뒤 위 `brew trust` 를 한 번만
실행하면 됩니다. 그 tap 하나만 신뢰하는 것이고 되돌리려면 `brew untap creallo/tap`
입니다.

이 cask 하나만 신뢰해도 됩니다.

```bash
brew trust --cask creallo/tap/creallo-atlas
```

## Creallo Atlas

제조를 위한 로컬 3D 뷰어입니다. STEP·STL 등 13종을 열고, 치수를 재고, 살두께와
메쉬 상태를 검사하고, 가벼운 오류를 고칩니다.

**견적 조회 과정에서 설계 파일은 서버로 전송되지 않습니다** — 계산은 내 컴퓨터에서
합니다. 공유 링크를 만들 때는 그 파일과 이름이 크렐로에 업로드됩니다.

* 홈페이지 · 내려받기: <https://download.creallo.com>
* Apple Silicon(M1 이후) 맥에서 돕니다. 애플 공증을 받았습니다.

### 업데이트

**앱이 스스로 갱신합니다.** 그래서 cask 에 `auto_updates true` 를 두었고,
`brew upgrade` 가 앱이 올라간 판을 옛것으로 되돌리지 않습니다.

베타를 먼저 써 보시려면 앱 안에서 켜세요 — 설정 → **베타 버전 받기**.
brew 로는 정식만 나갑니다.

---

이 저장소는 cask 파일만 담습니다. 앱 소스는 따로 있습니다.
