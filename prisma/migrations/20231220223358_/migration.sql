/*
  Warnings:

  - The primary key for the `Breadcrumb` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Breadcrumb` table. All the data in the column will be lost.
  - The primary key for the `Color` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Color` table. All the data in the column will be lost.
  - The primary key for the `Image` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Image` table. All the data in the column will be lost.
  - The primary key for the `Size` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Size` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[imageId]` on the table `Image` will be added. If there are existing duplicate values, this will fail.
  - The required column `breadcrumbId` was added to the `Breadcrumb` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - The required column `colorId` was added to the `Color` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - The required column `imageId` was added to the `Image` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - The required column `sizeId` was added to the `Size` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.

*/
-- DropForeignKey
ALTER TABLE "Breadcrumb" DROP CONSTRAINT "Breadcrumb_id_fkey";

-- DropForeignKey
ALTER TABLE "Color" DROP CONSTRAINT "Color_id_fkey";

-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_id_fkey";

-- DropForeignKey
ALTER TABLE "Size" DROP CONSTRAINT "Size_id_fkey";

-- AlterTable
ALTER TABLE "Breadcrumb" DROP CONSTRAINT "Breadcrumb_pkey",
DROP COLUMN "id",
ADD COLUMN     "breadcrumbId" TEXT NOT NULL,
ADD CONSTRAINT "Breadcrumb_pkey" PRIMARY KEY ("breadcrumbId");

-- AlterTable
ALTER TABLE "Color" DROP CONSTRAINT "Color_pkey",
DROP COLUMN "id",
ADD COLUMN     "colorId" TEXT NOT NULL,
ADD CONSTRAINT "Color_pkey" PRIMARY KEY ("colorId");

-- AlterTable
ALTER TABLE "Image" DROP CONSTRAINT "Image_pkey",
DROP COLUMN "id",
ADD COLUMN     "imageId" TEXT NOT NULL,
ADD CONSTRAINT "Image_pkey" PRIMARY KEY ("imageId");

-- AlterTable
ALTER TABLE "Size" DROP CONSTRAINT "Size_pkey",
DROP COLUMN "id",
ADD COLUMN     "sizeId" TEXT NOT NULL,
ADD CONSTRAINT "Size_pkey" PRIMARY KEY ("sizeId");

-- CreateIndex
CREATE UNIQUE INDEX "Image_imageId_key" ON "Image"("imageId");

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Breadcrumb" ADD CONSTRAINT "Breadcrumb_breadcrumbId_fkey" FOREIGN KEY ("breadcrumbId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Color" ADD CONSTRAINT "Color_colorId_fkey" FOREIGN KEY ("colorId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Size" ADD CONSTRAINT "Size_sizeId_fkey" FOREIGN KEY ("sizeId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
