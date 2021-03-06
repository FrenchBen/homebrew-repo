class Flutter < Formula
  desc "Google’s UI toolkit for mobile, web, and desktop from a single codebase"
  homepage "https://flutter.dev"
  version "1.12.13"
  actual_version = "1.12.13+hotfix.9"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v#{actual_version}-stable.zip"
  sha256 "395c44e40399150cddf459216ac4e4d70a1c20b48ac8476576a8b36230c3701e"

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
