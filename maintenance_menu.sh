#!/bin/bash
# Menu-driven System Maintenance Script

while true; do
    echo ""
    echo "=============================="
    echo " 🧰 SYSTEM MAINTENANCE MENU "
    echo "=============================="
    echo "1. Run Backup"
    echo "2. Update & Clean System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo "=============================="
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            bash backup.sh
            ;;
        2)
            bash update_clean.sh
            ;;
        3)
            bash log_monitor.sh
            ;;
        4)
            echo "Exiting... ✅"
            break
            ;;
        *)
            echo "❌ Invalid choice, please try again!"
            ;;
    esac
done

