(function ($) {
    var genId = generateId();
    window.TEXT = window.TEXT || {};

    $(function () {
        var menu = new ZMenu();
    });


    function generateId() {
        var id = 0;
        return function () {
            return 'id-' + ++id;
        }
    }

    function ZMenu() {
        var self = this;
        this._menuIsReady = true;

        this.init = function () {
            this.$sortable = $('.sortable');
            this.menu = new MenuItems(this.$sortable);
            this._addItemsFromJson();
            this.setEvents();
        };

        this._addItemsFromJson = function () {
            if (!window.itemJson || !$.isArray(window.itemJson)) {
                return;
            }

            for (var i = 0; i < window.itemJson.length; i += 1) {
                unserializeItem(window.itemJson[i]);
            }

            function unserializeItem(item, parentId) {
                var menuItem, i = 0;
                switch (item.type) {
                    case 'information':
                        menuItem = new MenuInformationItem();
                        break;

                    case 'category':
                        menuItem = new MenuCategoryItem();
                        break;

                    case 'product' :
                        menuItem = new MenuProductItem();
                        break;

                    case 'href':
                        menuItem = new MenuItem();
                        break;
                }

                if (menuItem) {

                    for (var lang in item.titles) {
                        menuItem.setTitle(item.titles[lang], lang);
                    }

                    menuItem.data = item.data;
                    menuItem.setHref(item.href);
                    self.menu.add(menuItem, parentId);
                }

                if (item.items.length && menuItem) {
                    for (i = 0; i < item.items.length; i += 1) {
                        unserializeItem(item.items[i], menuItem.id);
                    }
                    menuItem.items = [];
                }
            }
        };

        this.setEvents = function () {

            var $form = $('#form').on('submit', function (e) {
                if (!window.JSON || !self._menuIsReady || !$form.find('input[name]').val()) {
                    e.preventDefault();
                    return false;
                }
                var $input = $form.find('[name=json]');
                var json = JSON.stringify(self.menu.serialize());
                $input.val(json);

                //e.preventDefault();
                //console.log(self.menu.serialize());
            });

            this.$sortable.nestedSortable({
                handle: '> div',
                items: 'li',
                toleranceElement: '> div',
                opacity: .6,
                placeholder: 'sortable-placeholder'
            });

            $(document).on('click', '.arrow', function () {
                $(this).parents('.zbox').eq(0).toggleClass('closed');
            });


            //custom href
            $('.js-add-href').on('click', function () {
                var item = new MenuItem();
                var canAddIntoMenu = false;
                var href = $('#custom-menu-item-url').val();
                item.setHref(href);
                $('input[name^=custom-menu-item-name]').each(function () {
                    var title = this.value,
                        lang = this.getAttribute('data-lang');

                    if (title) {
                        canAddIntoMenu = true;
                        item.setTitle(title, lang);
                    }
                });

                if (canAddIntoMenu) {
                    self.menu.add(item);
                }

            });

            //information
            $('.js-add-information').on('click', function () {
                var $inputs = $('.informations input[name=information]:checked').each(function () {
                    var href = this.getAttribute('data-href'),
                        id = this.getAttribute('data-id');

                    var item = new MenuInformationItem(id);
                    item.setHref(href);
                    var infs = window.informations || [];
                    var canAddItem = false;

                    for (var i = 0; i < infs.length; i += 1) {
                        if (infs[i].information_id == id) {
                            for (var lang in infs[i].titles) {
                                item.setTitle(infs[i].titles[lang].title, lang);
                                canAddItem = true;
                            }
                        }
                    }
                    if (canAddItem && href) {
                        self.menu.add(item);
                    }
                });

                $inputs.attr('checked', false);
            });

            //category
            $('.js-add-category').on('click', function () {
                var $inputs = $('.informations input[name=category]:checked').each(function () {
                    var href = this.getAttribute('data-href'),
                        show_subcategories = $form.find('[name=js-show_subcategories]').is(':checked') ? 1 : 0,
                        id = this.getAttribute('data-id');

                    var item = new MenuCategoryItem(id);
                    item.setHref(href);
                    item.data.show_subcategories = show_subcategories;

                    var categories = window.categories || [];
                    var canAddItem = false;

                    for (var i = 0; i < categories.length; i += 1) {
                        if (categories[i].category_id == id) {
                            for (var lang in categories[i].titles) {
                                item.setTitle(categories[i].titles[lang].name, lang);
                                canAddItem = true;
                            }
                        }
                    }
                    if (canAddItem && href) {
                        self.menu.add(item);
                    }
                });

                $inputs.attr('checked', false);
            });


            // product
            $('input[name=\'product\']').autocomplete({
                delay: 500,
                source: function (request, response) {
                    var search = window.is_oc2 ? request : request.term;
                    $.ajax({
                        url: 'index.php?route=catalog/product/zmenu_autocomplete&token=' + window.token + '&filter_name=' + encodeURIComponent(search),
                        dataType: 'json',
                        success: function (json) {
                            response($.map(json, function (item) {
                                return {
                                    label: item.name,
                                    value: item.product_id,
                                    titles: item.titles,
                                    href: item.href
                                }
                            }));
                        }
                    });
                },
                select: function (obj, ui) {
                    var selected = window.is_oc2 ? obj : ui.item;
                    var item = new MenuProductItem(selected.value);
                    item.setHref(selected.href);
                    for (var lang in selected.titles) {
                        item.setTitle(selected.titles[lang].name, lang);
                    }
                    self.menu.add(item);

                    if (window.is_oc2) {
                        $form.find('#custom-product').val('');
                    }
                    else {
                        this.value = '';
                    }

                    return false;
                },
                focus: function (event, ui) {
                    return false;
                }
            });


            var lastCategoryItem = null;
            $('input[name=\'path\']').autocomplete({
                delay: 500,
                source: function (request, response) {
                    var search = window.is_oc2 ? request : request.term;
                    $.ajax({
                        url: 'index.php?route=catalog/category/zmenu_autocomplete&token=' + window.token + '&filter_name=' + encodeURIComponent(search),
                        dataType: 'json',
                        success: function (json) {
                            response($.map(json, function (item) {
                                return {
                                    label: item['name'],
                                    value: item['category_id'],
                                    titles: item.titles,
                                    href: item['href']
                                }
                            }));
                        }
                    });
                },
                select: function (obj, ui) {
                    lastCategoryItem = window.is_oc2 ? obj : ui.item;
                    if (window.is_oc2) {
                        $('input[name=\'path\']').val(lastCategoryItem['label']);
                        $('input[name=\'parent_id\']').val(lastCategoryItem['value']);
                    }
                    else {
                        this.value = lastCategoryItem.label;
                    }
                    return false;
                },
                focus: function (event, ui) {
                    return false;
                }
            });

            $('.js-add-category-2').on('click', function () {
                if (!lastCategoryItem || lastCategoryItem.label != $form.find('#input-parent').val() || !lastCategoryItem.value) {
                    return;
                }
                var show_subcategories = $form.find('[name=js-show_subcategories-2]').is(':checked') ? 1 : 0;

                var item = new MenuCategoryItem(lastCategoryItem.value);
                item.setHref(lastCategoryItem.href);
                item.data.show_subcategories = show_subcategories;

                var canAddItem = false;
                for (var lang in lastCategoryItem.titles) {
                    item.setTitle(lastCategoryItem.titles[lang].name, lang);
                    canAddItem = true;
                }

                if (canAddItem) {
                    self.menu.add(item);
                }


                lastCategoryItem = null;
                $form.find('#input-parent').val('');
                $form.find('[name=parent_id]').val('');
            });


        };


        this.init();
    }

    function MenuItems($ol) {
        var self = this;
        this.items = [];

        this.add = function (item, parentId) {
            this.items.push(item);
            if (parentId) {
                var $li = $ol.find('#' + parentId);
                var $li_ol = $li.find('> ol');
                if (!$li_ol.length) {
                    $li_ol = $('<ol></ol>');
                    $li.append($li_ol);
                }
                $li_ol.append(item.toHtml());
            }
            else {
                $ol.append(item.toHtml());
            }
        };

        this._beforeSerialize = function () {

            function getSubItems($node, selectPath) {
                var items = [];
                var $subitems = $node.find(selectPath);
                $subitems.each(function () {
                    var item = self.getItemById(this.id);
                    item.save();
                    item.items = getSubItems($(this), '> ol > li');
                    items.push(item);
                });

                return items;
            }

            this.items = getSubItems($ol, '> li');
        };

        this.serialize = function () {
            this._beforeSerialize();

            var item,
                it = [],
                i = 0,
                len = this.items.length;

            for (; i < len; i += 1) {
                item = this.items[i];
                if (!item.active) {
                    continue;
                }

                it.push(item.serialize());
            }

            return it;
        };


        this.getItemById = function (id, items) {
            if (!items) {
                items = this.items;
            }
            var i = 0, len = items.length;
            for (; i < len; i += 1) {
                if (items[i].id == id) {
                    return items[i];
                }

                if (items[i].items.length) {
                    var item = this.getItemById(id, items[i].items);
                    if (item) {
                        return item;
                    }
                }
            }

            return 0;
        };

    }

    function MenuItem() {
        this.data = {
            show_default_title: 0,
            show_subcategories: 0
        };
        this.templateId = 'item-template';
        this.type = 'href';
        this.typeTitle = window.TEXT.custom_link;
        this.href = '';
        this.items = [];
        this.id = genId();
        this.active = true;
        this.$el = '';
        this.titles = {};
        this._languages = window.languages || [];
        this._lang = window.default_language ? window.default_language.language_id : 0;
    }

    MenuItem.prototype = {
        save: function () {
            if (!this.$el) {
                return;
            }
            var self = this;
            var $href = this.$el.find('> .zbox [name=href]');
            if ($href.length) {
                this.setHref($href.val());
            }
            this.$el.find('> .zbox [name="title[]"]').each(function () {
                self.setTitle(this.value || 'empty title', this.getAttribute('data-lang'));
            });
        },

        _serializeItems: function () {
            var items = [];
            for (var i = 0; i < this.items.length; i += 1) {
                if (this.items[i].active) {
                    items.push(this.items[i].serialize());
                }
            }
            return items;
        },

        serialize: function () {
            return {
                data: this.data,
                type: this.type,
                titles: this.titles,
                href: this.href,
                items: this._serializeItems()
            }
        },

        getTitle: function (lang) {
            return this.titles[lang || this._lang] || 'empty lang title';
        },


        getTypeTitle: function () {
            return this.typeTitle;
        },

        getHref: function () {
            return this.href;
        },

        setTitle: function (title, lang) {
            this.titles[lang] = title;
        },

        setTypeTitle: function (title) {
            this.typeTitle = title;
        },

        setHref: function (href) {
            this.href = href;
        },

        getTmplData: function () {
            return {
                titles: this.titles,
                typeTitle: this.getTypeTitle(),
                href: this.getHref(),
                id: this.id,
                data: this.data,
                type: this.type,
                languages: this._languages,
                title: this.getTitle()
            };
        },

        toHtml: function () {
            var $el = $('#' + this.templateId).tmpl(this.getTmplData());

            var i = 0, len = this.items.length, $ol = $('<ol>');

            if (len) {
                for (; i < len; i += 1) {
                    $ol.append(this.items[i].toHtml());
                }

                $el.append($ol);
            }

            this.setEvents($el);

            return $el;
        },

        setEvents: function ($el) {
            var self = this;
            this.$el = $el;

            $el.find('.js-btn-remove').on('click', function () {
                if (confirm('Удалить?')) {
                    $el.remove();
                    self.active = false;
                }
            });


            $el.find('input[type=text], input[type=checkbox]').on('change', function () {
                var name = this.getAttribute('name'),
                    value = this.value,
                    type = this.getAttribute('type'),
                    $t = $(this),
                    lang = $t.attr('data-lang');

                if (name == 'title[]') {
                    value = value || 'empty';
                    self.setTitle(value, lang);
                    if (lang == self._lang) {
                        $t.parents('.zbox').eq(0).find('.item-title').html(value);
                    }
                    return;
                }

                if (type == 'checkbox') {
                    self.data[name] = $t.is(':checked') ? value : 0;
                }
                else {
                    self.data[name] = value;
                }
            });
        }
    };


    function MenuInformationItem(information_id) {
        MenuItem.call(this);
        this.data.information_id = information_id || 0;
        this.templateId = 'item-information-template';
        this.type = 'information';
        this.setTypeTitle(window.TEXT.information);

    }

    MenuInformationItem.prototype = new MenuItem();


    function MenuCategoryItem(category_id) {
        MenuItem.call(this);
        this.data.category_id = category_id;
        this.templateId = 'item-information-template';
        this.type = 'category';
        this.setTypeTitle(window.TEXT.category);

    }

    MenuCategoryItem.prototype = new MenuItem();

    function MenuProductItem(product_id) {
        MenuItem.call(this);
        this.data.product_id = product_id;
        this.templateId = 'item-information-template';
        this.type = 'product';
        this.setTypeTitle(window.TEXT.product);
    }

    MenuProductItem.prototype = new MenuItem();

})(jQuery);