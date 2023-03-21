# Xampp_Mysql_Database_Backup_Manager

⭐⭐⭐ System tworzący kopie wybranych baz danych MySQL programu XAMPP ⭐⭐⭐

💻Wymagania:

- zainstalowany XAMPP,
- zainstalowany Python,
- edytor kodu (tylko w przypadku edycji konfiguracji połączenia bazy danych programu).

💿Instalacja:

1. Importujemy bazę danych w folderze "database",
2. Wpisujemy adres programu w przeglądarce (np. `http://localhost/mysql_backup_manager/dashboard.php`)
3. Dodajemy lokalizacje programu XAMPP (ścieżka początkowa np. `C:/xampp`),
4. Dodajemy konfigurację mailową w celu powiadomień na poczcie,
5. Dodajemy wybraną przez nas bazę.

✋Konfigurację połączenia z z bazami systemu XAMPP można zmienić w pliku "database_connect" znajdującego się w folderze `includes` (jest ona na ustwieniach domyślnych).

🤖Automatyczne kopie:

1. Przechodzimy do harmonogramu zadań w systemie Windows i tworzymy nowe zadanie,
2. Ustawiamy częstotliwość tworzenia kopii w zakładce `Wyzwalacze`,
3. Następnie w zakładce `Akcje`

   - Dodajemy ścieżkę `python.exe` (Program/Skrypt)
   - Dodajemy skrypt o nazwie `mail_notifications.py` (Dodaj argumenty)
   - Dodajemy scieżkę do folderu programu `auto_script_runner` (Rozpocznij w)

🧾Instrukcja obsługi:

1. Dodaj ścieżkę - określa lokalizację programu XAMPP, dzięki czemu program kopii baz danych MYSQL dostanie dostęp do mechanizu tworzenia kopii jak i dostęp do pełnej ścieżki zapisanych kopii.
2. Dodaj bazę - dodaje bazę do listy, z której bedą wykonywane kopie (po dodaniu otrzymują status ✅Aktywny),
3. Dashboard - zarządzalna lista baz, z której bedą wykonywane kopie. Pozwala na edycje oraz usunięcie danych pozycji oraz na zmianę statusu na:

✅Aktywny ❌Nieaktywny

💡Tylko bazy ze statusem ✅Aktywny otrzymają swoje kopie!

💡Zmiana statusu bazy odbywa się za pomocą zaznaczenia checkboxa z daną pozycją ☑ a następnie wyboru z listy rozwijanej statusu kopii bazy. Całość zatwierdzamy przyciskiem `Zmień status bazy`.

4. Raporty - lista historii wszystkich wykonanych kopi wraz z ich dokładną data wykonania, nazwą, statusem powodzenia oraz lokalizacją. Z tej pozycji istnieje możliwość zmiany lokalizacji systemu XAMPP,

5. Natychmiastowa kopia - natychmiastowo tworzy wszystkie kopie ze statusem ✅Aktywny wraz z mini raportem dotyczącym przeprowadzonych kopii,

6. Konfiguracja maila - zakładka umożliwa dodanie powiadomień mailowych na wybrany adres mailowy wraz z konfiguracją adresu wysyłkowego.
