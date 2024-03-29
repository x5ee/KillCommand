BUKKIT=../bukkit-1.8.8B1.jar
JAVA=1.6
PLUGIN=KillCommand
TARGET_DIR=net

JFLAGS = -Xlint:all -classpath $(BUKKIT) -d ./ -source $(JAVA) -target $(JAVA)
JC = javac
SOURCEFILES = $(wildcard src/*.java)

default: jar_file

class_files:
	$(JC) $(JFLAGS) $(SOURCEFILES)

jar_file: class_files
	jar -cf ./$(PLUGIN).jar ./*


clean:
	rm -f *.jar
	rm -rf $(TARGET_DIR)
