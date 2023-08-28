#!/bin/bash
#10to16

test_var () {
    decNum=$1
    if [ -z "$1" ] ;
            then
                10to16 $@ ;
            else
                clear
                echo ""
                echo -n "Перевод из десятичной системы в шестнадцатиричную $decNum="
                echo "obase=16; ibase=10; $decNum" | bc ;
                echo ""
    fi
}

10to16 () {
                clear
                echo ""
                echo "Введите десятичное число"
                echo ""
                read decNum
                echo ""
                echo -n "Перевод из десятичной системы в шестнадцатиричную $decNum="
                echo "obase=16; ibase=10; $decNum" | bc ;
                echo ""
}

10to16_help () {
    if [ "$1" = "-h" ] || [ "$1" = "--help" ] ;
        then
        echo "
        Формат команды:
        10to16 10

        10to16 ARG1
                ARG1 - десятичное число

                При отсутствии аргументов идёт запрос на ввод числа.
        "
        else
        test_var $@ ;
    fi
};

10to16_help $@ ;

exit 0
