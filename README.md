# Uniara Virtual API
API to integrate with Uniara Virtual system.

--

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
### Files
This endpoint get the files from the user logged with the token grouped by grade.

#### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **mytoken** | *string* | Used in Authorization Header. Token received from the login | `"mytoken"` |
#### Curl Example

```bash
$ curl -n -X GET https://uniara-virtual-api.herokuapp.com/files \
  -H "Content-Type: application/json" -H "Authorization: mytoken"
```

#### Response Example
The response will be the files of the student grouped by grade.

```
HTTP/1.1 200 OK
```

```json
 {
    "COORDENAÇÃO": [
        {
            "grade": "COORDENAÇÃO",
            "link": "/files/YpOi_tXVKuA28EMjBZplf1Ur7yMyFsTDL4Bqo3IUWfM8oJbw2k2yscCQZG-tjoek6SSPqvLUIgKOmF_ztorgu1C5LvFAJNCVY7jehvPwFaEJxiS-8zBnsAu0TA-hEa1ef_jbH9tP7uvHUXiwTNgIaQ",
            "name": "REGULAMENTO TCC 2015"
        },
        {
            "grade": "COORDENAÇÃO",
            "link": "/files/YpOi_tXVKuA28EMjBZplf6kijaF2LPfYC3b8ZUbF79t1iFcp9id6bNNPNWmlUq9Pgbo-RqaQJNS7Nw8Bql743Jbrt7x60IYURSYKODLVXomR_zdGCaynY3mvbBQdysAnFh0WUmmZ4HM8yELebPf2dw",
            "name": "DOCUMENTAÇÃO DE ESTÁGIO"
        },
        {
            "grade": "COORDENAÇÃO",
            "link": "/files/YpOi_tXVKuA28EMjBZplf2skIsaUOEv9ly3TxzfSsG-rCkFffQRHZTZwDf8uhYXgGU8Lbi-j84jsFs5BDZJSlqLmZgQ0eHSOKrH0n7ICT8RgF_mFCrQ6QqA9Pmvg09KSQHXrDFEYCetmS5VVwDQqbw",
            "name": "MODELO PROJETO DE ESTÁGIO"
        },
        {
            "grade": "COORDENAÇÃO",
            "link": "/files/YpOi_tXVKuA28EMjBZplf1xnSlvrvB-IFM5Iz2KaOwQQvCeZYik8ZPW8b-05sW1VaTP0609VHSbjL774-OlMEIwhX9RhAgERa3dr8Jh2Y5AS3xlPchxcYA-x3wM8O3uQM6gCNnGjo_MXHauBD0NGtQ",
            "name": "MODELO RELATÓRIO ESTÁGIO"
        }
    ],
    "INTELIGENCIA ARTIFICIAL": [
        {
            "grade": "INTELIGENCIA ARTIFICIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf-E4ho5yYWYhgAdgr23mBX175CWJSc6V8k9qkQKe3w0R8ikMTE9Pf480SeUwrUJf7pCMTqA3I9jsyITd0mwXYXJ0lPdF-bMeGpd5-jd9-yKOBU_jRfgB5cQf63GUpuseX1MJ1YzyM9IpaypSQeyLGHg",
            "name": "ORIENTAÇÕES GERAIS"
        },
        {
            "grade": "INTELIGENCIA ARTIFICIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf0yx_3O0xRcpWBsB3weSxha7KRJBHmEcI1XsiSRPOoPaTdrhbcaxjAtaz1JIX5TE0R0lx1ubq8DXd6XBmk-JafnOCf71BHUPhHEQr5KJBaUtqfYVaV8kK5nEKzKhOZZgGIXAf_TfUqF0R7LI5Oz_5-1uSpvMYJ8TeNFs22MpoGmR",
            "name": "AULA SOBRE AGENTES - PARTE 1"
        },
        {
            "grade": "INTELIGENCIA ARTIFICIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf1I_PMKrVeRFWn6I_skCzk6JumO2W5DggrKgsw9X7fhaeBc46DhMQqwxR50fzwkuNkXKNoyBTEjVsj0GgkhfoI-SmvlObKKkh4XFOwJNoEzeR1UoJYeEaMwsbhX1-Vhr5m3DsTjWYRJgIOzxE2xQqNo",
            "name": "ATIVIDADE AVALIATIVA"
        },
        {
            "grade": "INTELIGENCIA ARTIFICIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf2Bg1BApuYwmhmqxkpXsT4lY8tHT3ojLJbViAxRcQGDEGYEsXEhzcvJHCq3e23tb5s_JMwHlh2yI_w7ieABwZiEWLIKShWONbp21pmcplvTCewqZclPPnTK6mJ-RSI_ws0xNxhbNF-F98fC_tPeLN25mT0pljlk6qVUrYs--Qd4B",
            "name": "ARQUIVO PARA ANÁLISE TÉCNICA"
        },
        {
            "grade": "INTELIGENCIA ARTIFICIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplfy-sdxqjOCqwIPPl4FwWNa006a54vQdxUTdldIaa5CDimY7D0imI90sPFtyi1aSZS2wO9xwHqBBH7mFs5YUc6QdkZd2jtpF7YLRQw83VaOYojPVp6GcKaI33L2aWaNY2tX0jjVZH_t7k06KcVWI0Xac",
            "name": "TEORIA DOS GRAFOS"
        },
        {
            "grade": "INTELIGENCIA ARTIFICIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf5sMYuwfQwMSP8ktBxO7iX1pXIkqOBm6xSbQNO4geD4cVEZnju3FYUyFSx7HbhtvAXK5xJn0aflpM1NeJFgfsyWLLmPL0009Pl12TEg5rOo95Hw6z8Dy6T3nvPEBqouVdTKlUCXx1PS4fo7JgvjXvzM",
            "name": "ATIVIDADE 11/MAI"
        }
    ],
    "PROCESSAMENTO GRÁFICO E DE IMAGENS": [
        {
            "grade": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf5x57sGKcWwG-Z7tWkhtXmdM4UtYvhOrDPtzBMstHj843VCCKG2IE3PkLTuOJlJmtppI9RANx6XINOjZdRrQ_ks2oRFSjSf2dFr7S6nsx7qlNhtPhZKVR2FKJNNYqud8oDfpg6UVURDh3sO-PmQNgB8",
            "name": "APOSTILA"
        },
        {
            "grade": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
            "link": "/files/YpOi_tXVKuA28EMjBZplfz5Ul88t7pgtcT0NilZe77dOuhSuQSTqnOjK55LxrmitrF2XwxH-1UOdVQlfcXIK1UfV2T29RbzIn794OZiVrkyviUirEeh8YTcELdAtOVG_eUDP8S3ErB_pRi2Cj34fSGJo2Z1q3PrOsKLIh0io6p0",
            "name": "GAL"
        },
        {
            "grade": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf3E0c9xqcfLhf-E_qYhKnBitaohbi6MOuadRX-RBRMxvsaf0OVDuq6PkzVSLvxCxykZeT0o4vrlejfKBNULmZdX8VPJ3UE_JfOI7Y4-OBtUrd3furKpHAuduIRgCw3fUS-uisRSu-2w2YHRQwx_Sx2hfwIMQ4_nB7kUK_CNwEBbh",
            "name": "PROGRAMA EM JAVA"
        },
        {
            "grade": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf7fOdMBa3uSgocfJx7GPUvj37AvIQ1Plw5382msZr-I3-J0hien9HuG5CzeV86w4gvzbLwBfgTADJ5aDiqffdkpagUySqIi2AIxY37mc13tOkNl9-ohZ-vGWxgUjXFPUqkscT7E9wHQnqA2yY_2z9PbBLHDhf1t_QMY1ahLxR1tD",
            "name": "PROGRAMA EM C#"
        },
        {
            "grade": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf76iMxDOsRWp5ZdWfRSJ6RrVKXrLWnxn1CJQq5_Nol3OCeDcq0pWXUloV9JnAzmaibq0f-z1ZV0NIjLVT9LeBtyQkn-Mj05SSyDUM0mrV4ZIs0aZTc0VJDik-tYago651EbsllRC8EVsNgUpJexuWnHJAcoQhcp5xhIFqX63m3lT",
            "name": "PROGRAMA EM C"
        },
        {
            "grade": "PROCESSAMENTO GRÁFICO E DE IMAGENS",
            "link": "/files/YpOi_tXVKuA28EMjBZplfxvKPaem3fcV7Bnw4_YzdjN5m3CosuFWIM3laH7IOyBGust4SGgaEGGG53dGlC1ufYRNfRnEFBrVqyGkM9U_FQQ8dHdrSmVWOeLqeiv_b0hqNjNueXTQxT4Sw1wji1dWz_SLmgoGjnadqM0RJuoBp5PfB25VJmd2lv2nTNWI9mTi",
            "name": "LISTA EXERCÍCIOS CG"
        }
    ],
    "PROJETO E ANÁLISE DE ALGORITMOS": [
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf_UwNcbRwo_-YNoUREqT2QCrCdM4p0I8SwUhXQueeFPEijyvLznvCu5hyE634rnq_i2KESirORY3inqqJqC47AjBf7Bro8qJKxlGpgpihHuDYBRFBOShhMuq0lpyYtAQ5t44U6a-t4D88QNQ9h0Gny4sL79MriukywFP7F4AtpD0",
            "name": "EC - PAA - AULA 1"
        },
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplfzKtQ9L07a8VUkE7aGzr0PYN5glckpKX2XeSttes8SYF6bhoPj6XDzeTHuY2cT0mhC1hK3oXIdULF5xJgNcqfgQduj5sopjdWTzAo7jyu1Tvl-sIlhKRRL4ev9nplk1K7lH-JRYEOxtTJibe0I2J9hysZhc399aOr8rJ6tIG3lnW",
            "name": "EC - PAA - AULA 2"
        },
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf5z1zkuh8Ars7ODGu4DeRftTBL8976ecUDo8DAKscNh5ze-vxGVPMheMEknLuqkbVzhJ8Wvn03iX4fKXGrAyZeFu_SPwVhfrX51Ly0aP2wqZgisQ90onZ4V86Lbgf4EI2SFP6sEdIOt9Lw3HpL0jSxzI9E0YtCpWCnnnJB5cYOCfeHBxCuXI2h5WjlM0heaTlQ",
            "name": "EC - AULA 3 - LISTA DE EXERCÍCIOS"
        },
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplfx2p4tost373oqGlBp10OO3_N8VShVHUnsay08ul2-y9PVeGiPDQxCehE5Xz4y07QE3oVCJNZx-Ogno3RzBbkPvSI_zLH9WKeWXHCmKc8qrcogjnirvturnuprqmzBuWx6s66BMhQvPavC6_kRpzGvC9Ph6QiWZfO5URES6sp7mT",
            "name": "EC - PAA - AULA 3"
        },
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplfwOwWcF_TomeCRRBlljOipAaDAP-DyYrytdsPVr8u_2NzLQ0nbpMWdrkyeL8P-VqcqeZkt3iKcoDEciV_Y_wywn5I6YR2jkz_IlzaY9QElLYMFjrL5222cTOSpGYs-Z36Nh5veqXFiesReZquSF1cQnu-SiINJGHSMXlYWenXmFu7WDNO_D4VQwdCodNoLvxuA",
            "name": "EC - PAA - AULA 5 - LISTA DE EXERCÍCIOS 2"
        },
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf4g8GJJxbY0iYrbx_kR9cWz5RkjDRK-aHMO4alDF81z9-If50UsOxwBzWPrsok2CrVIK3JK5Ux8K58b1k4BYrq-cwcBA34aaTT9EqHlhYztLk5G1ggOzYsO-TvR-aynBfi6KExkBsnuuxfg9b9_KarNQHLZWds53d8n4S_zLpt_UjWaiYqJGBjEbnD29moXO5Q",
            "name": "EC - PAA - AULA 4 - EXEMPLO EXERCÍCIO"
        },
        {
            "grade": "PROJETO E ANÁLISE DE ALGORITMOS",
            "link": "/files/YpOi_tXVKuA28EMjBZplf40xhJPhfpxZA2_fAWR32TV58KYLFvsch5JDMJAP8la6WbZl1jgQrq1cNt4sSrO3aOcttklSdJeezVpWSWi-t8t_iGgElESsuW_OvTxNAfypETNBKZhKuMTivFzswLicjwA_aDejV1nqpEVMVXhPRkRP6qIQReLkshJpUcnNQlouCvriI3gIg3edSYBLUD-WVQ",
            "name": "EC - PAA - AULA 6 - NOTAÇÃO O - EXERCÍCIOS"
        }
    ],
    "ROBÓTICA E AUTOMAÇÃO INDUSTRIAL": [
        {
            "grade": "ROBÓTICA E AUTOMAÇÃO INDUSTRIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf6-2lyCmmGRPfatZj2uvXw2tSaQWu80FernLnCuOGGbaIOsdXuUCyIlvNE4bJGLXvVKLn_UNOXJABbbA1SG7Bt2W0rhIImyDMnMDW_P2_Ku6UUTl2koNoVcgOvrhVp5nMMDwikx5fnS3oVcJiAqqLIEQs_R8x0QPZT4J9O-0GwiO",
            "name": "AULA - ROBÓTICA"
        },
        {
            "grade": "ROBÓTICA E AUTOMAÇÃO INDUSTRIAL",
            "link": "/files/YpOi_tXVKuA28EMjBZplf-HEQt-fGX6ygUX-G63rZzuVtftuOhfqISXWQ3gSALkb8l6eA1PqFSEt7J2-1BasdOxJA0E37PIrcnfnEaZNq4QmfiLEczxoxPnQCTLOJ6c_A5bMf_DmZXL6IeQJ9f7ynEB5S7cUDGpPQhCd0n4w92OlxtAXxbNqpa7o58f23E9p",
            "name": "TRABALHO 2 - ROBOTICA"
        }
    ]
}
```

## Running (local)
TODO.
