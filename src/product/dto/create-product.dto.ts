export class CreateProductDto {
    id: string;
    name: string;
    price: number;
    description: string;
    images: {
        create: {
            src: string;
            alt: string;
        }[];
    };
    breadcrumb: {
        create: {
            name: string;
            href: string;
        }[];
    };
    color: {
        create: {
            name: string;
            class: string;
            selectedClass: string;
        }[];
    };
    size: {
        create: {
            name: string;
            inStock: boolean;
        }[];
    };
}
