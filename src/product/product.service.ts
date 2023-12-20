import { Injectable } from '@nestjs/common';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { PrismaService } from 'src/database/PrismaService';

@Injectable()
export class ProductService {

  constructor (private prisma: PrismaService){}


  async create(data: CreateProductDto) {

    const product = await this.prisma.product.create({
      data
    })
    return product;
  }

  async findAll() {
    const products = await this.prisma.product.findMany({
      include: {
        images: true,
        breadcrumbs: true,
        colors: true,
        sizes: true,
      },
    });

    return products;
  }
  

  async findOne(id: string) {
    const product = await this.prisma.product.findUnique({
      where: { id },
      include: {
        images: true,
        breadcrumbs: true,
        colors: true,
        sizes: true,
      },
    });

    if (!product) {
      return 'Product not found';
    }

    return product;
  }

  update(id: number, updateProductDto: UpdateProductDto) {
    return `This action updates a #${id} product`;
  }

  async remove(id: string): Promise<void> {
    await this.prisma.product.delete({
      where: { id },
    });
  }
  
}
