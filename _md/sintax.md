Давайте начнем с основ синтаксиса Python, рассмотрев несколько примеров скриптов с комментариями и документационными строками (docstrings). Комментарии и документационные строки играют важную роль в программировании, помогая другим разработчикам (и вам самим в будущем) понять, что делает ваш код и как он работает.

### Пример 1: Простой скрипт с комментариями

```python
# Это однострочный комментарий в Python

# Следующая строка выводит строку "Hello, World!" на экран
print("Hello, World!")  # Это также комментарий, следующий за кодом

```

### Пример 2: Использование многострочных комментариев

В Python многострочные комментарии обычно делаются с использованием тройных кавычек, хотя они технически являются строковыми литералами и могут использоваться как документационные строки.

```python
'''
Это многострочный комментарий
Используется для описания более сложной логики или
для предоставления обширной документации к коду.
'''

print("Пример с многострочным комментарием")
```

### Пример 3: Документационные строки (docstrings)

Документационные строки (или docstrings) предоставляют способ ассоциировать документацию с функциями, классами, методами или модулями. Они обрамляются тройными кавычками.

```python
def greet(name):
    """
    Функция для приветствия пользователя по имени.

    Параметры:
    name (str): Имя пользователя

    Возвращает:
    None
    """
    print(f"Hello, {name}!")

greet("Alice")
```

Этот пример показывает функцию `greet`, которая принимает один аргумент (`name`) и выводит приветствие. Документационная строка в начале функции описывает, что делает функция, какие аргументы принимает и что возвращает.

### Важность комментариев и докстрингов

Комментарии и докстринги важны для поддержания читаемости и поддержки кода. Они помогают другим разработчикам быстро понять ваш код и его использование, а также могут использоваться различными инструментами документации для автоматического создания документации по вашему коду.

Использование этих элементов делает ваш код более доступным и удобным для использования как для вас, так и для вашего сообщества или команды разработчиков.
