cask "creallo-atlas" do
  version "1.8.9"
  sha256 "d07b6628288545fc0556d4d9e1491ec9ff3ed928712eb53e738ca9fcf775b522"

  url "https://download.creallo.com/CrealloAtlas-Setup-#{version}.dmg"
  name "Creallo Atlas"
  desc "Local 3D viewer for manufacturing - measure, inspect and repair STEP/STL models"
  homepage "https://creallo.com/"

  # 최신 판을 어디서 보는지 알려 준다. brew 가 이 파일을 갱신할 때와,
  # `brew livecheck` 로 사람이 확인할 때 쓴다.
  #
  # **정식 매니페스트를 본다.** 베타 쪽(-beta)을 보면 brew 사용자에게 시험판이
  # 흘러간다. 베타는 앱 안 설정에서 켜는 것이다.
  livecheck do
    url "https://download.creallo.com/latest-macos-arm64.json"
    strategy :json do |json|
      json["latestVersion"]
    end
  end

  # **앱이 스스로 갱신한다**(2026-09-05 대표 결정: 자동 업데이트를 그대로 둔다).
  #
  # 이 줄이 없으면 brew 가 자기가 버전을 맡는다고 여겨, 앱이 이미 새 판으로
  # 올라간 뒤에도 `brew upgrade` 가 옛 dmg 를 다시 덮어씌운다. 켜 두면 brew 는
  # 설치만 해 주고 갱신은 앱에 맡긴다.
  auto_updates true

  # 우리 dmg 는 arm64 하나뿐이다(macos-14 러너에서 굽는다). 인텔 맥에서 받으면
  # 열리지 않으므로 brew 가 먼저 막게 한다.
  depends_on arch: :arm64

  app "Creallo Atlas.app"

  # `brew uninstall --zap` 이 지울 것. 평소 삭제에서는 건드리지 않는다 -
  # 사용자가 만든 자료(불러오기 캐시·설정)를 말없이 지우면 안 된다.
  zap trash: [
    "~/Library/Application Support/Creallo3DViewer",
    "~/Library/Saved Application State/com.creallo.viewer3d.savedState",
  ]
end
