require 'formula'

class DockerComposeDeployer < Formula
  url "https://github.com/lab-dvsoftware/homebrew-docker-compose-deployer.git", :using => :git
  version "0.0.2"
  revision 1

  depends_on 'coreutils'
  depends_on 'rsync'
  depends_on 'mutagen-io/mutagen/mutagen'

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"docker-compose-deployer"
  end

  def caveats
      s = <<~EOS
        docker-compose-deployer was installed
      EOS
      s
    end
end