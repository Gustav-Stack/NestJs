/*
  Warnings:

  - A unique constraint covering the columns `[colorId]` on the table `Color` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[sizeId]` on the table `Size` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Color_colorId_key" ON "Color"("colorId");

-- CreateIndex
CREATE UNIQUE INDEX "Size_sizeId_key" ON "Size"("sizeId");
