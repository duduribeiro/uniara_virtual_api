# Uniara Virtual API

API to make integration with Uniara Virtual system.

## Using (documentation)
To use the api, follow the next steps.

### Login
This endpoint makes the first step on the Uniara Virtual system, the authentication. This is required before the use to get the token that will be used in all further requests.

#### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **ra** | *string* | alumni id (R.A) | `"05209024"` |
| **password** | *string* | password of the R.A in Uniara Virtual| `"mysecret"` |

#### Curl Example

```bash
$ curl -n -X POST https://uniara-virtual-api.herokuapp.com//logins \
  -H "Content-Type: application/json" \
 \
  -d '{
    "ra": "05209024",
    "password": "mysecret"
}'
```

#### Response Example
The response will be the token that will be used in all further requests.
##### 201: Created

```
HTTP/1.1 201 Created
```

```
  "mytoken"
```

##### 400: Bad Request

```
HTTP/1.1 400 Bad Request
```

```json
  {
    "error": "Invalid Login"
  }
```

## Running (local)
TODO.

