CREATE TABLE "public.User" (
	"id" serial NOT NULL,
	"email" varchar(60) NOT NULL UNIQUE,
	"password" varchar(15) NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"recipes" serial NOT NULL,
	"occasions" serial NOT NULL,
	CONSTRAINT "User_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Recipe" (
	"id" serial NOT NULL,
	"name" varchar(60) NOT NULL,
	"instructions" TEXT NOT NULL,
	"public" BOOLEAN NOT NULL,
	"img" TEXT NOT NULL,
	"ingredients" serial NOT NULL,
	CONSTRAINT "Recipe_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Ingredient" (
	"id" serial NOT NULL,
	"name" varchar(100) NOT NULL,
	"recipes" serial NOT NULL,
	CONSTRAINT "Ingredient_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Grocery List" (
	"id" serial NOT NULL,
	"name" varchar(80) NOT NULL,
	"ingredients" serial NOT NULL,
	"user_id" serial NOT NULL,
	CONSTRAINT "Grocery List_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Ocassion" (
	"id" serial NOT NULL,
	"name" varchar(80) NOT NULL,
	"recipes" serial NOT NULL,
	CONSTRAINT "Ocassion_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "User" ADD CONSTRAINT "User_fk0" FOREIGN KEY ("recipes") REFERENCES "Recipe"("id");
ALTER TABLE "User" ADD CONSTRAINT "User_fk1" FOREIGN KEY ("occasions") REFERENCES "Ocassion"("id");

ALTER TABLE "Recipe" ADD CONSTRAINT "Recipe_fk0" FOREIGN KEY ("ingredients") REFERENCES "Ingredient"("id");

ALTER TABLE "Ingredient" ADD CONSTRAINT "Ingredient_fk0" FOREIGN KEY ("recipes") REFERENCES "Recipe"("id");

ALTER TABLE "Grocery List" ADD CONSTRAINT "Grocery List_fk0" FOREIGN KEY ("ingredients") REFERENCES "Ingredient"("id");
ALTER TABLE "Grocery List" ADD CONSTRAINT "Grocery List_fk1" FOREIGN KEY ("user_id") REFERENCES "User"("id");

ALTER TABLE "Ocassion" ADD CONSTRAINT "Ocassion_fk0" FOREIGN KEY ("recipes") REFERENCES "Recipe"("id");






