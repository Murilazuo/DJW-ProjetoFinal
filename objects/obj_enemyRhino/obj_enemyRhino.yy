{
  "spriteId": {
    "name": "spr_Rhino",
    "path": "sprites/spr_Rhino/spr_Rhino.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "Obj_inimigo",
    "path": "objects/Obj_inimigo/Obj_inimigo.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_playerProjectile","path":"objects/obj_playerProjectile/obj_playerProjectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"mySpeed","path":"objects/Obj_inimigo/Obj_inimigo.yy",},"objectId":{"name":"Obj_inimigo","path":"objects/Obj_inimigo/Obj_inimigo.yy",},"value":"10","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"weak_spot","path":"objects/Obj_inimigo/Obj_inimigo.yy",},"objectId":{"name":"Obj_inimigo","path":"objects/Obj_inimigo/Obj_inimigo.yy",},"value":"PlayerAttackState.Up","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Runner/Enemies.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_enemyRhino",
  "tags": [],
  "resourceType": "GMObject",
}