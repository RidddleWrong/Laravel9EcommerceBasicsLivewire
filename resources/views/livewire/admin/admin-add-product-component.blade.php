<div>
    <style>
        nav svg {
            height: 20px;
        }

        nav .hidden {
            display: block;
        }
    </style>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">Home</a>
                    <span></span> <a href="{{route('shop')}}">Shop</a>
                    <span></span> Add New Product
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6">
                                        Add New Product
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{route('admin.products')}}" class="btn float-end">All products</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                @if(session()->has('message'))
                                    <div class="alert alert-success" role="alert">{{session('message')}}</div>
                                @endif
                                <form wire:submit.prevent="addProduct">
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Name</label>
                                        <input wire:model="name" wire:keyup="generateSlug" class="form-control"
                                               placeholder="Enter product name">
                                        @error('name')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Slug</label>
                                        <input wire:model="slug" class="form-control"
                                               placeholder="Enter product slug">
                                        @error('slug')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Short description</label>
                                        <textarea wire:model="short_description"
                                                  placeholder="Enter short description"></textarea>
                                        @error('short_description')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Description</label>
                                        <textarea wire:model="description"
                                                  placeholder="Enter description"></textarea>
                                        @error('description')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Regular Price</label>
                                        <input wire:model="regular_price" type="text" class="form-control"
                                               placeholder="Enter regular price">
                                        @error('regular_price')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Sale Price</label>
                                        <input wire:model="sale_price" type="text" class="form-control"
                                               placeholder="Enter sale price">
                                        @error('sale_price')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">SKU</label>
                                        <input wire:model="sku" type="text" class="form-control"
                                               placeholder="Enter sku">
                                        @error('sku')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Stock status</label>
                                        <select wire:model="stock_status" class="form-select">
                                            <option value="instock">InStock</option>
                                            <option value="outofstock">Out of Stock</option>
                                        </select>
                                        @error('stock_status')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Featured</label>
                                        <select wire:model="featured" class="form-select">
                                            <option value="0">No</option>
                                            <option value="1">Yes</option>
                                        </select>
                                        @error('featured')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Quantity</label>
                                        <input wire:model="quantity" type="text" class="form-control"
                                               placeholder="Enter quantity">
                                        @error('quantity')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Image</label>
                                        <input wire:model="image" type="file" class="form-control">
                                        @if($image)
                                            <img src="{{$image->temporaryUrl()}}" width="120">
                                        @endif
                                        @error('image')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Category</label>
                                        <select wire:model="category_id" class="form-select" required>
                                            <option value="null">Select category</option>
                                            @foreach($categories as $category)
                                                <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('category_id')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                    <button type="submit" class="btn btn-primary float-end">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
