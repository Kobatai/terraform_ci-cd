[
  {
    "name": "bd-webapp",
    "image": "393466549228.dkr.ecr.ap-northeast-1.amazonaws.com/bd-image:latest",
    "cpu": 333,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 8000,
        "containerPort": 8000
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "sample-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "service"
      }
    }
  },
  {
    "name": "nginx",
    "image": "393466549228.dkr.ecr.ap-northeast-1.amazonaws.com/nginx:latest",
    "essential": true,
    "cpu": 200,
    "memoryReservation": 128,
    "portMappings": [
      {
        "hostPort": 80,
        "containerPort": 80
      }
    ],
    "links": [
      "bd-webapp"
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "nginx"
      }
    }
  }
]
