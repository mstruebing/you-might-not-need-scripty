#!/usr/bin/env bash

yarn run alex &> test_output_package.txt
sed -i '$ d' test_output_package.txt
yarn run alex &> test_output_shell.txt
sed -i '$ d' test_output_shell.txt
diff test_output_package.txt test_output_shell.txt
rm test_output_package.txt test_output_shell.txt
