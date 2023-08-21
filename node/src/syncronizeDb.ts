import sequelize from  "./core/database";

sequelize.sync({force: true}).then(r => console.log(r));