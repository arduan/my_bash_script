echo "System Information:"
echo "-------------------"

# Версия ядра
echo "Kernel Version: $(uname -r)"

# Общая память
echo "Total Memory: $(free -h | awk '/Mem/ {print $2}')"

# Процессор
echo "CPU Model: $(lscpu | grep 'Model name' | awk -F ': ' '{print $2}')"

# Сетевые интерфейсы
echo "Network Interfaces:"
ip a | awk '/^[0-9]+:/ {print $2}'

