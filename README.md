# Metro

To start your Phoenix server:

  * Setup the project with `mix setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## API

### Request
  
```http
GET /api/route?origen=Pantitlan&destino=Los%20Reyes HTTP/1.1
Host: metro.gigalixirapp.com

```

### Attributes

###### origen
Name of the station from where the trip starts

###### destino
Name of the travel destination station

### Response

The answer contains the travel instructions and the structure of the lines

```json
{
  "instructions": [
    {
      "instructions": [
        "Sube en la estación Pantitlán dirección Pantitlán, viaja 0 estaciones y baja en la estación Pantitlán",
        "Transborda hacia la Línea A",
        "Sube en la estación Pantitlán dirección La Paz, viaja 8 estaciones y baja en la estación Los Reyes"
      ],
      "option": 1
    }
  ],
  "lines": [
    {
      "id": 1,
      "name": "Línea 1",
      "stations": [
        {
          "description": "Línea 1 (Estación Terminal).  Central Camionera Poniente, Álvaro Obregón, 01120 Ciudad de México, DF, México",
          "id": 1,
          "lat": "-99.2005488",
          "line_id": 1,
          "line_name": "Línea 1",
          "lng": "19.3982501",
          "name": "Observatorio",
          "name_clean": "observatorio",
          "transfers": []
        }
      ],
      "transfers": [
        1,
        5,
        9
      ]
    }    
  ]
}

```
