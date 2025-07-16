<?php

if ($_SERVER['REQUEST_METHOD'] !== 'POST') return;

$input = file_get_contents('php://input');
$data = json_decode($input, true);

if (empty($data['ajax_connect']) || empty($data['action'])) return;

$pdoTools = $modx->getService("pdoTools");

switch ($data['action']) {
    case "get-change-city-subdomain":
        $cities = [
            'Москва' => 'moskva',
            'Одинцово' => 'odincovo',
            'Раменское' => 'ramenskoe',
            'Красногорск' => 'krasnogorsk',
            'Мытищи' => 'mytishchi',
            'Химки' => 'khimki',
            'Солнечногорск' => 'solnechnogorsk',
            'Дмитров' => 'dmitrov',
            'Балашиха' => 'balashiha',
            'Подольск' => 'podolsk',
            'Истра' => 'istra',
            'Чехов' => 'chekhov',
            'Сергиев Посад' => 'sergiev-posad',
            'Воскресенск' => 'voskresensk',
            'Наро-Фоминск' => 'naro-fominsk',
            'Ступино' => 'stupino',
            'Коломна' => 'kolomna',
            'Долгопрудный' => 'dolgoprudnyj',
            'Королёв' => 'korolyov',
            'Домодедово' => 'domodedovo',
            'Пушкино' => 'pushkino',
            'Серпухов' => 'serpuhov',
            'Клин' => 'klin',
            'Видное' => 'vidnoe',
            'Щёлково' => 'shchyolkovo',
            'Электросталь' => 'elektrostal',
            'Ногинск' => 'noginsk',
            'Егорьевск' => 'egorevsk',
            'Реутов' => 'reutov',
            'Жуковский' => 'zhukovskij',
            'Можайск' => 'mozhajsk',
            'Орехово-Зуево' => 'orekhovo-zuevo',
            'Лобня' => 'lobnya',
            'Волоколамск' => 'volokolamsk',
            'Дубна' => 'dubna',
            'Павловский Посад' => 'pavlovskij-posad',
            'Кашира' => 'kashira',
            'Лыткарино' => 'lytkarino',
            'Луховицы' => 'luhovicy',
            'Шатура' => 'shatura',
            'Фрязино' => 'fryazino',
            'Дзержинский' => 'dzerzhinskij',
            'Зарайск' => 'zarajsk',
            'Краснознаменск' => 'krasnoznamensk',
            'Руза' => 'ruza',
            'Черноголовка' => 'chernogolovka',
            'Бронницы' => 'bronnicy',
            'Лосино-Петровский' => 'losino-petrovskij',
            'Котельники' => 'kotelniki',
            'Талдом' => 'taldom',
            'Шаховская' => 'shahovskaya',
            'Власиха' => 'vlasiha',
            'Серебряные Пруды' => 'serebryanye-prudy',
            'Лотошино' => 'lotoshino',
            'Конаково' => 'konakovo',
            'Кольчугино' => 'kolchugino',
            'Киржач' => 'kirzhach',
            'Озёры' => 'ozyory',
            'Пущино' => 'pushchino',
            'Кубинка' => 'kubinka',
            'Кимры' => 'kimry',
            'Зеленоград' => 'zelenograd',
            'Обнинск' => 'obninsk',
            'Ермолино' => 'ermolino',
            'Тучково' => 'tuchkovo',
            'Звенигород' => 'zvenigorod',
            'Ивантеевка' => 'ivanteevka',
            'Электроугли' => 'elektrougli',
            'Железнодорожный' => 'zheleznodorozhnyj',
            'Щербинка' => 'shcherbinka',
            'Троицк' => 'troick',
            'Климовск' => 'klimovsk',
            'Апрелевка' => 'aprelevka',
            'Голицыно' => 'golicyno',
            'Нахабино' => 'nahabino',
            'Сходня' => 'skhodnya',
            'Селятино' => 'selyatino',
            'Верея' => 'vereya',
            'Куровское' => 'kurovskoe',
            'Ликино-Дулёво' => 'likino-dulyovo',
            'Электрогорск' => 'elektrogorsk',
            'Санкт-Петербург' => 'sankt-peterburg',
            'Волосово' => 'volosovo',
            'Волхов' => 'volkhov',
            'Всеволожск' => 'vsevolozhsk',
            'Выборг' => 'vyborg',
            'Гатчина' => 'gatchina',
            'Кингисепп' => 'kingisepp',
            'Кириши' => 'kirishi',
            'Кировск' => 'kirovsk',
            'Колпино' => 'kolpino',
            'Кронштадт' => 'kronshtadt',
            'Ломоносов' => 'lomonosov',
            'Луга' => 'luga',
            'Мурино' => 'murino',
            'Пушкин' => 'pushkin',
            'Сестрорецк' => 'sestroreczk',
            'Тихвин' => 'tikhvin',
            'Токсово' => 'toksovo',
            'Тосно' => 'tosno',
            'Краснодар' => 'krasnodar',
            'Анапа' => 'anapa',
            'Сочи' => 'sochi',
            'Новороссийск' => 'novorossiysk',
            'Лабинск' => 'labinsk',
            'Крымск' => 'krymsk',
            'Геленджик' => 'gelendzhik',
            'Майкоп' => 'maykop',
            'Армавир' => 'armavir',
            'Белореченск' => 'belorechensk',
            'Ейск' => 'eysk',
            'Славянск на Кубани' => 'slavyansk-na-kubani',
            'Тимашевск' => 'timashevsk',
            'Темрюк' => 'temryuk',
            'Горячий Ключ' => 'goryachiy-klyuch',
            'Туапсе' => 'tuapse',
            'Афипский' => 'afipsky',
            'Кореновск' => 'korenovsk',
            'Кропоткин' => 'kropotkin',
            'Абинск' => 'abinsk',
            'Курганинск' => 'kurganinsk',
            'Усть-Лабинск' => 'ust-labinsk',
            'Апшеронск' => 'apsheronsk',
            'станица Северская' => 'stanitsa-severskaya',
            'Псков' => 'pskov',
            'Великие Луки' => 'velikie-luki',
            'Великий Новгород' => 'velikij-novgorod',
            'Боровичи' => 'borovichi',
            'Петрозаводск' => 'petrozavodsk',
            'Мурманск' => 'murmansk',
            'Апатиты' => 'apatity',
            'Заполярный' => 'zapolyarnyj',
            'Кандалакша' => 'kandalaksha',
            'Кировск' => 'kirovsk',
            'Ковдор' => 'kovdor',
            'Мончегорск' => 'monchegorsk',
            'Оленегорск' => 'olenegorsk',
            'Нижний Новгород' => 'nizhny-novgorod',
            'Арзамас' => 'arzamas',
            'Балахна' => 'balakhna',
            'Бор' => 'bor',
            'Выкса' => 'vyksa',
            'Дзержинск' => 'dzerzhinsk',
            'Новосибирск' => 'novosibirsk',
            'Бердск' => 'berdsk',
            'Искитим' => 'iskitim',
            'Обь' => 'ob',
            'Екатеринбург' => 'yekaterinburg',
            'Артёмовский' => 'artyomovsky',
            'Берёзовский' => 'beryozovsky',
            'Верхняя Пышма' => 'verkhnyaya-pyshma',
            'Каменск-Уральский' => 'kamensk-uralsky',
            'Кушва' => 'kushva',
            'Новоуральск' => 'novouralsk',
            'Первоуральск' => 'pervouralsk',
            'Серов' => 'serov',
            'Тюмень' => 'tyumen',
            'Красноярск' => 'krasnoyarsk',
            'Ачинск' => 'achinsk',
            'Железногорск' => 'zheleznogorsk',
            'Канск' => 'kansk',
            'Лесосибирск' => 'lesosibirsk',
            'Минусинск' => 'minusinsk',
            'Назарово' => 'nazarovo',
            'Норильск' => 'norilsk',
            'Сосновоборск' => 'sosnovoborsk',
            'Челябинск' => 'chelyabinsk',
            'Златоуст' => 'zlatoust',
            'Копейск' => 'kopeysk',
            'Магнитогорск' => 'magnitogorsk',
            'Миасс' => 'miass',
            'Самара' => 'samara',
            'Тольятти' => 'tolyatti',
            'Сызрань' => 'syzran',
            'Новокуйбышевск' => 'novokuybyshevsk',
            'Ростов-на-Дону' => 'rostov-na-donu',
            'Таганрог' => 'taganrog',
            'Шахты' => 'shakhty',
            'Новочеркасск' => 'novocherkassk',
            'Волгодонск' => 'volgodonsk',
            'Батайск' => 'bataisk',
            'Новошахтинск' => 'novoshakhtinsk',
            'Омск' => 'omsk',
            'Калачинск' => 'kalachinsk',
            'Исилькуль' => 'isilkul',
            'Называевск' => 'nazyvaevsk',
            'Тюкалинск' => 'tyukalinsk',
            'Воронеж' => 'voronezh',
            'Борисоглебск' => 'borisoglebsk',
            'Лиски' => 'liski',
            'Россошь' => 'rossosh',
            'Пермь' => 'perm',
            'Березники' => 'berezniki',
            'Краснокамск' => 'krasnokamsk',
            'Кудымкар' => 'kudymkar',
            'Кунгур' => 'kungur',
            'Лысьва' => 'lysva',
            'Соликамск' => 'solikamsk',
            'Чайковский' => 'chaikovsky',
            'Чусовой' => 'chusovoy',
            'Волгоград' => 'volgograd',
            'Волжский' => 'volzhsky',
            'Камышин' => 'kamyshin',
            'Белгород' => 'belgorod',
            'Старый Оскол' => 'stary-oskol',
            'Брянск' => 'bryansk',
            'Владимир' => 'vladimir',
            'Иваново' => 'ivanovo',
            'Калуга' => 'kaluga',
            'Кострома' => 'kostroma',
            'Курск' => 'kursk',
            'Липецк' => 'lipetsk',
            'Орёл' => 'oryol',
            'Рязань' => 'ryazan',
            'Смоленск' => 'smolensk',
            'Тамбов' => 'tambov',
            'Тверь' => 'tver',
            'Тула' => 'tula',
            'Новомосковск' => 'novomoskovsk',
            'Ярославль' => 'yaroslavl',
            'Архангельск' => 'arkhangelsk',
            'Северодвинск' => 'severodvinsk',
            'Вологда' => 'vologda',
            'Череповец' => 'cherepovets',
            'Калининград' => 'kaliningrad',
            'Сыктывкар' => 'syktyvkar',
            'Астрахань' => 'astrakhan',
            'Ставрополь' => 'stavropol',
            'Пятигорск' => 'pyatigorsk',
            'Саратов' => 'saratov',
            'Энгельс' => 'engels',
            'Балаково' => 'balakovo',
            'Пенза' => 'penza',
            'Ульяновск' => 'ulyanovsk',
            'Димитровград' => 'dimitrovgrad',
            'Оренбург' => 'orenburg',
            'Орск' => 'orsk',
            'Курган' => 'kurgan',
            'Томск' => 'tomsk',
            'Северск' => 'seversk',
            'Кемерово' => 'kemerovo',
            'Новокузнецк' => 'novokuznetsk',
            'Прокопьевск' => 'prokopyevsk',
            'Междуреченск' => 'mezhdurechensk',
            'Иркутск' => 'irkutsk',
            'Братск' => 'bratsk',
            'Ангарск' => 'angarsk',
            'Усть-Илимск' => 'ust-ilimsk',
            'Улан-Удэ' => 'ulan-ude',
            'Барнаул' => 'barnaul',
            'Бийск' => 'biysk',
            'Рубцовск' => 'rubtsovsk',
            'Владивосток' => 'vladivostok',
            'Уссурийск' => 'ussuriysk',
            'Находка' => 'nakhodka',
            'Хабаровск' => 'khabarovsk',
            'Комсомольск-на-Амуре' => 'komsomolsk-on-amur',
            'Благовещенск' => 'blagoveshchensk',
            'Биробиджан' => 'birobidzhan',
            'Южно-Сахалинск' => 'yuzhno-sakhalinsk',
            'Якутск' => 'yakutsk',
            'Белогорск' => 'belogorsk',
            'Свободный' => 'svobodny',
            'Котлас' => 'kotlas',
            'Ахтубинск' => 'akhtubinsk',
            'Губкин' => 'gubkin',
            'Шебекино' => 'shebekino',
            'Клинцы' => 'klintsy',
            'Новозыбков' => 'novozybkov',
            'Ковров' => 'kovrov',
            'Муром' => 'murom',
            'Александров' => 'aleksandrov',
            'Гусь-Хрустальный' => 'gus-khrustalnyy',
            'Михайловка' => 'mikhaylovka',
            'Урюпинск' => 'uryupinsk',
            'Нововоронеж' => 'novovoronezh',
            'Кинешма' => 'kineshma',
            'Шуя' => 'shuya',
            'Усолье-Сибирское' => 'usolye-sibirskoe',
            'Шелехов' => 'shelekhov',
            'Саянск' => 'sayansk',
            'Зима' => 'zima',
            'Нижнеудинск' => 'nizhneudinsk',
            'Тулун' => 'tulun',
            'Тайшет' => 'tayshet',
            'Черемхово' => 'cheremkhovo',
            'Советск' => 'sovetsk',
            'Малоярославец' => 'maloyaroslavets',
            'Ленинск-Кузнецкий' => 'leninsk-kuznetsky',
            'Киселёвск' => 'kiselevsk',
            'Юрга' => 'yurga',
            'Белово' => 'belovo',
            'Анжеро-Судженск' => 'anzhero-sudzhensk',
            'Осинники' => 'osinniki',
            'Мыски' => 'myski',
            'Киров' => 'kirov',
            'Кирово-Чепецк' => 'kirovo-chepetsk',
            'Слободской' => 'slobodskoy',
            'Вятские Поляны' => 'vyatskiye-polyany',
            'Шадринск' => 'shadrinsk',
            'Сосновый Бор' => 'sosnovyy-bor',
            'Кудрово' => 'kudrovo',
            'Елец' => 'yelets',
            'Грязи' => 'gryazi',
            'Магадан' => 'magadan',
            'Североморск' => 'severomorsk',
            'Саров' => 'sarov',
            'Кстово' => 'kstovo',
            'Павлово' => 'pavlovo',
            'Старая Русса' => 'staraya-russa',
            'Куйбышев' => 'kuybyshev',
            'Соль-Илецк' => 'sol-ilets',
            'Сорочинск' => 'sorochinsk',
            'Новотроицк' => 'novotrotsk',
            'Бугуруслан' => 'buguruslan',
            'Бузулук' => 'buzuluk',
            'Ливны' => 'livny',
            'Кузнецк' => 'kuznetsk',
            'Заречный' => 'zarechny',
            'Азов' => 'azov',
            'Гуково' => 'gukovo',
            'Каменск-Шахтинский' => 'kamensk-shakhtinsky',
            'Донецк' => 'donetsk',
            'Чапаевск' => 'chapayevsk',
            'Жигулёвск' => 'zhigulevsk',
            'Отрадный' => 'otradny',
            'Балашов' => 'balashov',
            'Вольск' => 'volsk',
            'Пугачёв' => 'pugachev',
            'Ртищево' => 'rtishchevo',
            'Реж' => 'rezh',
            'Сухой Лог' => 'sukhoi-log',
            'Богданович' => 'bogdanovich',
            'Полевской' => 'polevskoy',
            'Ревда' => 'revda',
            'Вязьма' => 'vyazma',
            'Сафоново' => 'safonovo',
            'Рославль' => 'roslavl',
            'Ярцево' => 'yartsevo',
            'Мичуринск' => 'michurinsk',
            'Рассказово' => 'rasskazovo',
            'Моршанск' => 'morshansk',
            'Ржев' => 'rzhev',
            'Вышний Волочёк' => 'vyshniy-volochek',
            'Торжок' => 'torzhok',
            'Стрежевой' => 'strezhvoy',
            'Щёкино' => 'shchyokino',
            'Алексин' => 'aleksin',
            'Донской' => 'donskoy',
            'Узловая' => 'uzlovaya',
            'Тобольск' => 'tobolsk',
            'Ишим' => 'ishim',
            'Ялуторовск' => 'yalutorovsk',
            'Снежинск' => 'snezhinsk',
            'Сатка' => 'satka',
            'Чебаркуль' => 'chebarkul',
            'Рыбинск' => 'rybinsk',
            'Переславль-Залесский' => 'pereslavl-zalesskiy',
        ];

        if (!$data['city_name']) exit("Не передан city_name");

        exit($cities[$data['city_name']]);
    case 'get-news-resource':
        if (!$data['resource_id']) exit("Не передан resource_id");
        $resource = $modx->getObject('modResource', $data['resource_id']);
        if (!$resource) exit("Ресурс не найден");

        $outer = $pdoTools->getChunk("@FILE templates/news/full-item.tpl", [
            "resource" => $resource
        ]);

        exit($outer);
    case 'get-product-data':
        if (!$data['product_id']) exit("Не передан product_id");
        $product = $modx->getObject('msProduct', $data['product_id']);
        if (!$product) exit("Товар не найден");

        $outer = $pdoTools->getChunk("@FILE modules/product-cards/chunks/v4/wrapper.tpl", [
            "product" => $product->toArray()
        ]);

        exit($outer);

    case 'add-order-review':
        if (!$data['content']) exit(json_encode([
            "success" => false,
            "message" => "Не передан content"
        ]));
        if (strlen($data['content']) < 4) exit(json_encode([
            "success" => false,
            "message" => "Введите больше символов"
        ]));

        $modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');

        $new_review = $modx->newObject('OrderReviews', [
            "user_id" => $modx->user->id,
            "order_id" => $data['order_id'],
            "content" => $data['content'],
        ]);

        if ($new_review->save()) {
            exit(json_encode([
                "success" => true,
                "message" => "Отзыв успешно отправлен"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при создании отзыва"
            ]));
        }

    case 'add-ticket':
        if (strlen($data['subject']) < 4 || strlen($data['content']) < 4) exit(json_encode([
            "success" => false,
            "message" => "Введите больше символов"
        ]));

        $modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');

        $new_review = $modx->newObject('UserTickets', [
            "user_id" => $modx->user->id,
            "subject" => $data['subject'],
            "content" => $data['content'],
        ]);

        if ($new_review->save()) {
            exit(json_encode([
                "success" => true,
                "message" => "Обращение успешно отправлено"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при создании обращения"
            ]));
        }

    case 'delete-account':
        $user = $modx->getObject('modUser', $modx->user->id);
        if (!$user)     exit(json_encode([
            "success" => false,
            "message" => "Аккаунт не найден"
        ]));
        if ($user->remove()) {
            exit(json_encode([
                "success" => true,
                "message" => "Аккаунт успешно удален"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при удалении аккаунта"
            ]));
        }

    case 'change-password':
        $user = $modx->getObject('modUser', $modx->user->id);
        if (!$user) exit(json_encode([
            "success" => false,
            "message" => "Аккаунт не найден"
        ]));
        if (empty($data['old_password']))  exit(json_encode([
            "success" => false,
            "message" => "Введите старый пароль"
        ]));
        if ($data['new_password'] !==  $data['new_password_confirm'])  exit(json_encode([
            "success" => false,
            "message" => "Пароли не совпадают"
        ]));
        if (strlen($data['new_password']) < 8)  exit(json_encode([
            "success" => false,
            "message" => "Пароль должен содержать больше 8 символов"
        ]));

        if ($user->changePassword($data['new_password'], $data['old_password'])) {
            exit(json_encode([
                "success" => true,
                "message" => "Пароль успешно изменен"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при смене пароля"
            ]));
        }

    case "copy-order":
        if (!$miniShop2 = $modx->getService('miniShop2')) exit(json_encode([
            "success" => false,
            "message" => "Не удалось подключить minishop2"
        ]));
        $miniShop2->initialize($modx->context->key);

        $user = $modx->getObject('modUser', $modx->user->id);
        if (!$user) exit(json_encode([
            "success" => false,
            "message" => "Пользователь не найден"
        ]));

        $user_discount = $pdoTools->runSnippet("@FILE snippets/getUserDiscount.php");

        // >>> Получаем заказы этого пользователя для проверки
        $q = $modx->newQuery('msOrder');
        $q->where([
            'user_id' => $user->get('id')
        ]);
        $q->sortby('createdon', 'DESC');
        $orders = $modx->getCollection('msOrder', $q);
        $user_order_ids = [];
        foreach ($orders as $order) {
            $user_order_ids[] = $order->id;
        }

        if (!in_array($data['order_id'], $user_order_ids)) exit(json_encode([
            "success" => false,
            "message" => "Заказ не пренадлежит данному пользователю"
        ]));
        // <<<

        // >>> Товары в новый заказ
        $order = $modx->getObject('msOrder', $data['order_id']);
        if (!$order) exit(json_encode([
            "success" => false,
            "message" => "Заказ не найден"
        ]));
        foreach ($order->Products as $product) {
            $miniShop2->cart->add($product->product_id, $product->count, [
                'user_discount' => $user_discount
            ]);
        }
        // <<<


        // Добавляем данные пользователя в заказ
        $order_data = $order->toArray();
        $order_address_data = $order->Address->toArray();

        $miniShop2->order->add('email', $order_address_data['email']);
        $miniShop2->order->add('receiver', $ororder_address_datader_data['name']);
        $miniShop2->order->add('phone', $order_address_data['phone']);
        $miniShop2->order->add('street', $order_address_data['street']);
        $miniShop2->order->add('city', $order_address_data['city']);
        $miniShop2->order->add('comment', $order_address_data['comment']);
        $miniShop2->order->add('delivery', $order_data['delivery']);
        $miniShop2->order->add('payment', $order_data['payment']);


        $profile = $user->getOne('Profile');
        if ($profile) {
            $miniShop2->order->add('email', $profile->email);
            $miniShop2->order->add('receiver', $profile->fullname);
            $miniShop2->order->add('phone', $profile->phone);
        }

        // Отправка заказа
        $response = $miniShop2->order->submit();
        if (!$response->success) exit(json_encode([
            "success" => true,
            "message" => "Ошибка при добавлении товаров в корзину"
        ]));

        exit(json_encode([
            "success" => true,
            "message" => "Заказ скопирован"
        ]));;


        // case 'get-catalog':
        //     $cache_options = [
        //         xPDO::OPT_CACHE_KEY => 'default/map-resources/' . $modx->context->key . '/',
        //     ];

        //     if ($cache_data = $modx->cacheManager->get($data['cache_name'], $cache_options)) {
        //         if ($data['device'] == 'desktop') {
        //             $output = $pdoTools->runSnippet("@FILE modules/catalog/snippets/html-desktop.php", [
        //                 'data' => $cache_data
        //             ]);
        //         } elseif ($data['device'] == 'mobile') {
        //             $output = $pdoTools->runSnippet("@FILE modules/mobile-menu/snippets/html-mobile.php", [
        //                 'data' => $cache_data
        //             ]);
        //             $output = json_encode($output);
        //         }

        //         exit($output);
        //     }
}
