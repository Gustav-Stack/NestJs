/*
  Warnings:

  - Added the required column `productId` to the `Breadcrumb` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `Color` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `Image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `Size` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Breadcrumb" DROP CONSTRAINT "Breadcrumb_breadcrumbId_fkey";

-- DropForeignKey
ALTER TABLE "Color" DROP CONSTRAINT "Color_colorId_fkey";

-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_imageId_fkey";

-- DropForeignKey
ALTER TABLE "Size" DROP CONSTRAINT "Size_sizeId_fkey";

-- AlterTable
ALTER TABLE "Breadcrumb" ADD COLUMN     "productId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Color" ADD COLUMN     "productId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Image" ADD COLUMN     "productId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Size" ADD COLUMN     "productId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Breadcrumb" ADD CONSTRAINT "Breadcrumb_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Color" ADD CONSTRAINT "Color_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Size" ADD CONSTRAINT "Size_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
