-- CreateTable
CREATE TABLE "Company" (
    "id" TEXT NOT NULL,
    "name" VARCHAR NOT NULL,
    "email" VARCHAR NOT NULL,
    "direction" VARCHAR NOT NULL,
    "number_phone" VARCHAR NOT NULL,
    "created_at" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone,
    "updated_at" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone,

    CONSTRAINT "Company_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Client" (
    "id" TEXT NOT NULL,
    "name" VARCHAR NOT NULL,
    "lastname" VARCHAR NOT NULL,
    "email" VARCHAR NOT NULL,
    "created_at" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone,
    "updated_at" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone,
    "companyId" TEXT NOT NULL,

    CONSTRAINT "Client_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Client" ADD CONSTRAINT "Client_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES "Company"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
