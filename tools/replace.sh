#!/bin/bash

cat $1 |
sed -e 's/Categories/Pages/g'   | 
sed -e 's/categories/pages/g'   | 
sed -e 's/Category/Page/g'      | 
sed -e 's/category/page/g'      ;

