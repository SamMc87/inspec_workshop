control 'cis-1-2-1' do
  impact 1.0
  title '1.2.2 Verify that gpgcheck is Globally Activated (Scored)'
  desc 'The gpgcheck option, found in the main seciont of the /etc/yum sees if the RPM packages signature is always checked'
  describe file('/etc/yum.conf') do
    its('content') { should match /gpgchec=1/}
  end
end
