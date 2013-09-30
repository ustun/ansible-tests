provision:
	ansible-playbook playbook.yml
provision_with_restart:
	vagrant reload

take_screenshot:
	VBoxManage controlvm `VBoxManage list runningvms | awk 'BEGIN{FS="\042"} {print $$2;}'` screenshotpng foo.png                
	open foo.png
