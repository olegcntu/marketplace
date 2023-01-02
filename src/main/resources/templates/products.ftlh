<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Product search</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="searchCity">Town</label>
                <select id="searchCity" class="form-control">
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
            <div class="form-group col-md-10">
                <label for="searchWord">Search by ads</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Search</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

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
