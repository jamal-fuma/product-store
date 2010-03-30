#!/bin/bash

sed -e 's/Categories/Pages/g'   \
    -e 's/categories/pages/g'   \
    -e 's/Category/Page/g'      \
    -e 's/category/page/g'  -i.old  $1  ;

