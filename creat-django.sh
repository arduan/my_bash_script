mkdir $1 && cd $1

create_virtualenv() {
		    echo "Создаем виртуальное окружение..."
				virtualenv venv
				source $1/venv/bin/activate
			}

			# Функция для установки Django и создания проекта
			create_django_project() {
					    echo "Устанавливаем Django..."
							source venv/bin/activate
						    pip install django

							    echo "Создаем Django проект..."
								    django-admin startproject $1
							}

							# Функция для выполнения миграций базы данных
							run_migrations() {
									    echo "Выполняем миграции базы данных..."
										    python3 $1/manage.py migrate
									}

									# Функция для создания суперпользователя
									create_superuser() {
											    echo "Создаем суперпользователя
												Django..."
											  python3 $1/manage.py createsuperuser
											}

											# Проверяем переданный аргумент (имя
											# проекта)
											if [ -z "$1" ]; then
													    echo "Ошибка: не указано
														имя проекта."
														    echo "Использование:
															$0 <имя проекта>"
															    exit 1
											fi

											

											# Создаем и активируем виртуальное
											# окружение
											create_virtualenv

											# Устанавливаем Django и создаем
											# проект
											create_django_project $1

											# Выполняем миграции базы данных
											run_migrations $1

											# Создаем суперпользователя Django
											create_superuser $1

											echo "Готово! Django проект '$1'
											создан с выполненными миграциями и
											суперпользователем."

