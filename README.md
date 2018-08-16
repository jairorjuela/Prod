# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<div class="row">
  <div class="col-md">
    <div class="form-group">
      <%= f.collection_check_boxes :category_ids, Category.all, :id, :name %>
      <div class="form-group">
        <%= f.collection_check_boxes :purchase_ids, Purchase.all, :id, :name_purchases %>
      </div>
    </div>
  </div>
</div>


  <%= f.submit "Submit", class: "btn btn-primary btn-lg" %>

<% end %>

<div class="col-sm-3">
<%= form_tag products_path, method: :get, class: "navbar-form navbar-left search-form" do %>
<div class="form-group">
  <%= select_tag :category_ids, options_from_collection_for_select(Category.all, "id", "name", params[:category_ids]), prompt: "Categoria", class: "form-control" %>
</div>
<div class="form-group">
  <%= select_tag :purchase_ids, options_from_collection_for_select(Purchase.all, "id", "name_purchases", params[:purchase_ids]), prompt: "Purchase", class: "form-control" %>
</div>
<%= submit_tag "Buscar", class: "btn btn-primary btn-md" %>
<% end %>
</div>


@purchases = @purchases.where("purchase_ids LIKE :purchase_ids", purchase_ids: "%#{params[:purchase_ids]}%")
@categories = @categories.where("category_ids LIKE :category_ids", category_ids: "%#{params[:categy_ids]}%")
