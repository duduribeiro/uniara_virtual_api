# Uniara Virtual API
API to integrate with Uniara Virtual system.

------
Check [here](https://github.com/thiago-sydow/uniaravirtual-app) if you want the Android/iOS source code.

## Using (documentation)
To use the API follow the next steps.

### Login
This endpoint makes the first step on the Uniara Virtual system, the authentication. This is required before the use to get the token that will be used in all further requests.

#### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **ra** | *string* | alumni id (R.A) | `"05209024"` |
| **password** | *string* | password of the R.A in Uniara Virtual| `"mysecret"` |

#### Curl Example

```bash
$ curl -n -X POST https://uniara-virtual-api.herokuapp.com/login \
  -H "Content-Type: application/json" \
 \
  -d '{
    "ra": "05209024",
    "password": "mysecret"
}'
```

#### Response Example
The response will be the token that will be used in all further requests.
##### With a valid login

```
HTTP/1.1 201 Created
```

```
  "mytoken"
```

##### With an invalid login

```
HTTP/1.1 400 Bad Request
```

```json
  {
    "error": "Invalid Login"
  }
```

### Grades
This endpoint get the grades from the user logged with the token

#### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **mytoken** | *string* | Used in Authorization Header. Token received from the login | `"mytoken"` |
#### Curl Example

```bash
$ curl -n -X GET https://uniara-virtual-api.herokuapp.com/grades \
  -H "Content-Type: application/json" -H "Authorization: mytoken"
```

#### Response Example
The response will be the grades of the student

```
HTTP/1.1 200 OK
```

```json
  [
    {
        "name": "ADMINISTRAÇÃO E ECONOMIA",
        "first_bimester": "10,00",
        "second_bimester": "5,55",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "ESTÁGIO SUPERVISIONADO",
        "first_bimester": "--",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "GERENCIAMENTO DE PROJETOS E SISTEMAS",
        "first_bimester": "--",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "INTELIGENCIA ARTIFICIAL",
        "first_bimester": "8,00",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "METODOLOGIA CIENTÍFICA E TECNOLÓGICA",
        "first_bimester": "N.C.",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "PERIFÉRICOS E INTERFACES",
        "first_bimester": "--",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
        "first_bimester": "N.C.",
        "second_bimester": "9,50",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "PROJETO E ANÁLISE DE ALGORITMOS",
        "first_bimester": "N.C.",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "ROBÓTICA E AUTOMAÇÃO INDUSTRIAL",
        "first_bimester": "--",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "SISTEMAS DISTRIBUÍDOS E PROGRAMAÇÃO CONCORRENTE",
        "first_bimester": "N.C.",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "SISTEMAS EMBARCADOS MICROPROCESSADOS",
        "first_bimester": "N.C.",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "TÓPICOS EM ENGENHARIA DE COMPUTAÇÃO",
        "first_bimester": "6,60",
        "second_bimester": "7,75",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    },
    {
        "name": "TRABALHO DE CONCLUSÃO DE CURSO",
        "first_bimester": "--",
        "second_bimester": "--",
        "third_bimester": "--",
        "fourth_bimester": "--",
        "substitutive": "--",
        "average": "--",
        "recovery": "--",
        "status": "CRS"
    }
  ] 
```

## Running (local)
TODO.
