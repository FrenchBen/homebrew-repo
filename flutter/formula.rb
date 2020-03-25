class Flutter < Formula
  desc "Google’s UI toolkit for mobile, web, and desktop from a single codebase"
  homepage "https://flutter.dev"
  version "1.12.13"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.12.13+hotfix.8-stable.zip"
  sha256 "5b5308a400bddbc29874f8fd8de7b39bb5dd8707da499c42feb3721524e784a1"

  def install
    prefix.install Dir["packages",".git*"]
    bin.install Dir["bin/*"]
  end

  def post_install
    puts "Updating cache folder permissions to u+rw for: #{prefix}/bin/cache"
    chmod "u+rw", Dir["#{prefix}/bin/cache/", "#{prefix}/bin/cache/*"]
  end

  test do
    system bin/"flutter", "--help"
    system bin/"flutter", "create my_app"
    assert_predicate testpath/"my_app.iml", :exist?
  end
end
