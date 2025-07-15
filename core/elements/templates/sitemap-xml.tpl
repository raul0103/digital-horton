{'pdoSitemap' | snippet : [
    'context' => $_modx->context.key,
    '-resources' => $resources,
    'where'=>'{"template:!=":0}'
    'showHidden' => 1
]}