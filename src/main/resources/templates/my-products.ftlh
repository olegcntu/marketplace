<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">My goods</h1>
    <hr>
    <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
       data-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="true" aria-controls="collapseExample">
        Добавить новый товар
    </a>
    <div class="collapse mb-3" id="collapseExample" style="">
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Название товара</label>
                <input type="text" required class="form-control"
                       id="productName" name="title">
            </div>
            <div class="form-group">
                <label for="price">The price of the product</label>
                <div class="input-group mb-3">
                    <input type="number" required class="form-control" id="price" name="price">
                    <div class="input-group-append">
                        <span class="input-group-text">ua</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="searchCity">Town</label>
                <select id="searchCity" required name="city" class="form-control">
                    <option value="">City not selected</option>

                    <option value="Kyiv">Kyiv</option>
                    <option value="Kharkov">Kharkov</option>
                    <option value="Odessa">Odessa</option>
                    <option value="Dnieper">Dnieper</option>
                    <option value="Donetsk">Donetsk</option>
                    <option value="Lviv">Lviv</option>
                    <option value="Zaporozhye">Zaporozhye</option>
                    <option value="Sevastopol">Sevastopol</option>
                    <option value="Nikolaev">Nikolaev</option>
                    <option value="Lugansk">Lugansk</option>
                    <option value="Vinnitsa">Vinnitsa</option>
                    <option value="Simferopol">Simferopol</option>
                    <option value="Chernihiv">Chernihiv</option>
                    <option value="Poltava">Poltava</option>
                    <option value="Kherson">Kherson</option>
                    <option value="Khmelnitsky">Khmelnitsky</option>
                    <option value="Cherkasy">Cherkasy</option>
                    <option value="Chernivtsi">Chernivtsi</option>
                    <option value="Zhitomir">Zhitomir</option>

                </select>
            </div>
            <div class="form-group">
                <label for="description">Product description</label>
                <textarea required class="form-control" id="description" name="description"></textarea>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input required type="file" name="file1" id="file1">
                    <label class="custom-file-label" for="file1">First photo for the product</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file2" id="file2">
                    <label class="custom-file-label" for="file2">The second photo for the product</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file3" id="file3">
                    <label class="custom-file-label" for="file3">The third photo for the product</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <button type="submit" style="width: 100%" class="btn btn-dark">Add</button>
        </form>
    </div>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">
                    <div class="card-top">
                        <form action="/product/delete/${product.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                Удалить
                            </button>
                        </form>
                    </div>
                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ua</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Not found</h1>
        </#list>
    </div>
</@t.template>
