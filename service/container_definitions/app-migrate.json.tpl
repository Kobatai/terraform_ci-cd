[
  {
    "name": "app",
    "image": "393466549228.dkr.ecr.ap-northeast-1.amazonaws.com/bd-image:latest",
    "cpu": 200,
    "memory": null,
    "memoryReservation": 600,
    "essential": true,
    "command": ["php", "artisan", "migrate"],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "app-migration"
      }
    },
    "environment": [],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "DB_HOST"
      },
      {
        "name": "DB_USER",
        "valueFrom": "DB_USER"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "DB_PASSWORD"
      },
      {
        "name": "RACK_ENV",
        "valueFrom": "APP_ENV"
      }
    ]
  }
]
