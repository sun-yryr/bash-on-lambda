build-BashFunction:
	cp function/*.sh $(ARTIFACTS_DIR)

build-BashLayer:
	cp runtime/bootstrap $(ARTIFACTS_DIR)
	mkdir temp && cd temp
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	./aws/install --install-dir . --bin-dir .
	mv ./v2/dist/* $(ARTIFACTS_DIR)
	cd ../ && rm -rf temp
