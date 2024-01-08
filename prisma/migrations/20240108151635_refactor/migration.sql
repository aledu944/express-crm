/*
  Warnings:

  - You are about to drop the column `created_at` on the `Client` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Client` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `number_phone` on the `Company` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Company` table. All the data in the column will be lost.
  - Added the required column `numberPhone` to the `Company` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Client" DROP COLUMN "created_at",
DROP COLUMN "updated_at",
ADD COLUMN     "createdAt" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone,
ADD COLUMN     "updatedAt" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone;

-- AlterTable
ALTER TABLE "Company" DROP COLUMN "created_at",
DROP COLUMN "number_phone",
DROP COLUMN "updated_at",
ADD COLUMN     "createdAt" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone,
ADD COLUMN     "numberPhone" VARCHAR NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMP(6) DEFAULT '2023-09-19 18:08:29.69745'::timestamp without time zone;
