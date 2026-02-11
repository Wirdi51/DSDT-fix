OUT=out
SRC=src
OPT=

all: p35-s3

clean:
	rm -rf $(OUT)

p35-s3:
	mkdir -p $(OUT)/Gygabyte/P35-S3
	cp $(SRC)/Gygabyte/P35-S3/dsdt-f8.dsl $(OUT)/Gygabyte/P35-S3/
	iasl $(OPT) $(OUT)/Gygabyte/P35-S3/dsdt-f8.dsl > $(OUT)/Gygabyte/P35-S3/dsdt-f8.log 2>&1
	rm $(OUT)/Gygabyte/P35-S3/dsdt-f8.dsl
