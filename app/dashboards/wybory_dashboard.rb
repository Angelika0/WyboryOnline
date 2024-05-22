require "administrate/base_dashboard"

class WyboryDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    data_rozpoczecia: Field::DateTime,
    data_zakonczenia: Field::DateTime,
    id_typu_wyborow: Field::Number,
    kandydaci: Field::HasMany,
    kandydat_wybory: Field::HasMany,
    kryteria_glosowania: Field::Text,
    typ_wyborow: Field::BelongsTo,
    wyborcy: Field::HasMany,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    data_rozpoczecia
    data_zakonczenia
    id_typu_wyborow
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    data_rozpoczecia
    data_zakonczenia
    id_typu_wyborow
    kandydaci
    kandydat_wybory
    kryteria_glosowania
    typ_wyborow
    wyborcy
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    data_rozpoczecia
    data_zakonczenia
    id_typu_wyborow
    kandydaci
    kandydat_wybory
    kryteria_glosowania
    typ_wyborow
    wyborcy
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how wybories are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(wybory)
  #   "Wybory ##{wybory.id}"
  # end
end
