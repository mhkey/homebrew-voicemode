# Homebrew Cask for Voice Mode
# Install: brew install --cask voicemode

cask "voicemode" do
  version "0.5.0"
  sha256 "8204c9dfc2a44f0bb4cec2af7769f6f7ad5cb7cbf3f7c4658fb87f3dc04ee96b"

  url "https://github.com/mhkey/homebrew-voicemode/releases/download/v#{version}/VoiceMode-#{version}.zip"
  name "Voice Mode"
  desc "Local voice-to-text dictation for coding on macOS — fully on-device, Apple Silicon"
  homepage "https://github.com/mhkey/voicemode"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "VoiceMode.app"

  zap trash: [
    "~/Library/Application Support/VoiceMode",
    "~/.config/voice-mode",
  ]

  caveats <<~EOS
    Voice Mode requires:
      - Apple Silicon Mac (M1/M2/M3/M4)
      - macOS 15 (Sequoia) or later
      - Microphone + Accessibility permissions (grant when prompted)

    First launch downloads ML models (~1 GB). This only happens once.

    Config: ~/.config/voice-mode/
  EOS
end
