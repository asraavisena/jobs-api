# README
To create user:
**POST** *yourdomain/api/v1/registrations* with email and password

To show all available jobs:
**GET** *yourdomain/api/v1/jobs*

To show specific jobs by :id
**GET** *yourdomain/api/v1/jobs/1*

To search specific jobs by title
**GET** *yourdomain/api/v1/search?search=testing*

To search specific jobs by language
**GET** *yourdomain/api/v1/search?searchL=testing*

To create a new session
**POST** *yourdomain/api/v1/sessions*

To logout
**GET** *yourdomain/api/v1/logout*