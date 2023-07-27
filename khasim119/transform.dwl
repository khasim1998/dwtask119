%dw 2.0
output application/json
---
payload map(item,index)->{
 "name":item.name,
 "jobs":item.jobs map(item,index)->{
 Id:index,
 role:item.role
 }
}