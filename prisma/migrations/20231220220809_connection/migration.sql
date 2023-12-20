/*
  Warnings:

  - You are about to drop the `products` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Breadcrumb" DROP CONSTRAINT "Breadcrumb_id_fkey";

-- DropForeignKey
ALTER TABLE "Color" DROP CONSTRAINT "Color_id_fkey";

-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_id_fkey";

-- DropForeignKey
ALTER TABLE "Size" DROP CONSTRAINT "Size_id_fkey";

-- DropTable
DROP TABLE "products";

-- CreateTable
CREATE TABLE "product" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_id_fkey" FOREIGN KEY ("id") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Breadcrumb" ADD CONSTRAINT "Breadcrumb_id_fkey" FOREIGN KEY ("id") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Color" ADD CONSTRAINT "Color_id_fkey" FOREIGN KEY ("id") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Size" ADD CONSTRAINT "Size_id_fkey" FOREIGN KEY ("id") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
