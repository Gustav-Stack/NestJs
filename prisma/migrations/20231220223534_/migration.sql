/*
  Warnings:

  - A unique constraint covering the columns `[breadcrumbId]` on the table `Breadcrumb` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Breadcrumb_breadcrumbId_key" ON "Breadcrumb"("breadcrumbId");
