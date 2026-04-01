# Voice Mode

Local voice-to-text dictation for coding on macOS. Fully on-device, nothing leaves your machine.

Hold the **Right Option key**, speak, release. Your words appear as text wherever your cursor is.

## Requirements

- Apple Silicon Mac (M1/M2/M3/M4)
- macOS 14 Sonoma or later
- [Homebrew](https://brew.sh) installed

## Install

```bash
brew tap mhkey/voicemode-dev
brew install --cask voicemode
```

This installs the app, pyenv (if not present), Python 3.11, and all ML dependencies. Takes 3-5 minutes.

### Step 3: First launch

1. Open **Finder** > **Applications** > **VoiceMode**
2. macOS will warn about an unidentified developer. Fix:
   ```bash
   xattr -cr /Applications/VoiceMode.app
   open /Applications/VoiceMode.app
   ```
3. Grant **Microphone** permission when prompted
4. Grant **Accessibility** permission when prompted (System Settings opens — toggle Voice Mode on)
5. Wait for ML models to download (~2.4 GB, one-time, takes 2-5 minutes)

### Step 4: Use it

A mic icon appears in your menu bar (top-right). Hold **Right Option key** > speak > release. Text appears at your cursor.

## Update

The app checks for updates automatically on launch. Or manually:

```bash
brew upgrade --cask voicemode
```

## Uninstall

```bash
brew uninstall --cask voicemode
```

To also remove config and cached models:

```bash
brew zap voicemode
rm -rf ~/.cache/huggingface/hub
```

## Troubleshooting

| Problem | Fix |
|---------|-----|
| `brew tap` fails | Check internet connection and try again |
| App won't open / Gatekeeper | `xattr -cr /Applications/VoiceMode.app` then try again |
| Splash screen shows error | Run `/Applications/VoiceMode.app/Contents/MacOS/VoiceMode` in Terminal to see full error |
| "Python not found" | Should auto-install via pyenv. Manual fix: `pyenv install 3.11` |
| Models stuck downloading | Quit (menu bar icon > Quit), reopen. Check internet. |
| Accessibility not working | System Settings > Privacy & Security > Accessibility > toggle Voice Mode off then on |
| Microphone not working | System Settings > Privacy & Security > Microphone > ensure Voice Mode is checked |
