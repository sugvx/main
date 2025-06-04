#!/bin/bash

while true; do
    clear
    echo "============================="
    echo "Главное меню"
    echo "============================="
    echo "1. IP"
    echo "2. Hostname"
    echo "3. Выход"
    echo "============================="
    read -p "Выберите пункт меню (1-3): " main_choice

    case $main_choice in
        1)
            echo "Вы выбрали пункт 'IP'. Здесь можно добавить функционал настройки IP."
            sleep 2
            ;;
        2)
            clear
            echo "============================="
            echo "Меню изменения хостнейма"
            echo "============================="
            echo "1. ISP"
            echo "2. HQR (hq-rtr)"
            echo "3. BRR (br-rtr)"
            echo "4. HQSRV (hq-srv)"
            echo "5. BRSRV (br-srv)"
            echo "6. CLI"
            echo "============================="
            read -p "Выберите тип устройства (1-6): " host_choice

            case $host_choice in
                1) new_host="isp" ;;
                2) new_host="hq-rtr" ;;
                3) new_host="br-rtr" ;;
                4) new_host="hq-srv" ;;
                5) new_host="br-srv" ;;
                6) new_host="cli" ;;
                *)
                    echo "Неверный выбор!"
                    sleep 2
                    continue
                    ;;
            esac

            sudo hostnamectl set-hostname "${new_host}.au-team.irpo"
            echo "Хостнейм изменён на ${new_host}.au-team.irpo"
            exec bash
            ;;
        3)
            echo "Выход из скрипта."
            exit 0
            ;;
        *)
            echo "Неверный выбор в главном меню!"
            sleep 2
            ;;
    esac
done