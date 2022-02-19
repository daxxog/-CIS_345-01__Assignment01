class ProductList {
    private _productList: Product[]

    constructor(
        productList: Product[]
    ) {
        this._productList = productList;
    }

    get productList(): Product[] {
        return this._productList;
    }

    set productList(productList: Product[]) {
        this._productList = productList;
    }
}
