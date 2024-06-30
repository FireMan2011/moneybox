# MoneyBox CSS/SCSS Guidelines

* [BEM](#BEM)
  * [BEM quick start](#BEM-quick-start)
  * [BEM naming rules](#BEM-naming-rules)
  * [BEM with SCSS](#BEM-with-SCSS)
  * [BEM file structure](#BEM-file-structure)

* [SCSS](#SCSS)
  * [SCSS quick start](#SCSS-quick-start)
  * [SCSS variables](#SCSS-variables)

## BEM

**TL;DR: We use BEM.**

### BEM quick start

> BEM (Block, Element, Modifier) is a component-based approach to web development. The idea behind it is to divide the user interface into independent blocks. This makes interface development easy and fast even with a complex UI, and it allows reuse of existing code without copying and pasting.

Official BEM quick-start guide https://en.bem.info/methodology/quick-start/.

Basic example:

```html
<!-- html file -->

<!-- `search-form` block -->
<form class="search-form">
    <!-- `input` element in the `search-form` block -->
    <input class="search-form__input">

    <!-- `button` element in the `search-form` block -->
    <button class="search-form__button">Search</button>
</form>
```

```css
/* css file */

.search-form {
  background-color: #eee;
}
.search-form__input {
  color: #000;
}
.search-form__button {
  color: #999;
}
```

### BEM naming rules

We use default block/element naming rules from official guide.

` block-name__elem-name_mod-name_mod-val`

* Names are written in lowercase Latin letters.
* Words are separated by a hyphen (`-`).
* The block name defines the namespace for its elements and modifiers.
* The element name is separated from the block name by a double underscore (`__`).
* The modifier name is separated from the block or element name by a single underscore (`_`).
* The modifier value is separated from the modifier name by a single underscore (`_`).
* For boolean modifiers, the value is not included in the name.

### BEM with SCSS

SCSS allows to remove block-name duplication using nesting and `&` operator.
Example with SCSS syntax:

```scss
/* scss file */

.search-form {
  background-color: #eee;

  &__input {
    color: #000;
  }

  &__button {
    color: #999;
  }
}
```

### BEM file structure

- **One block** (with it's elements) placed in **one file**.
- Name of file must be same as block class name (with `.scss` extension).
- File should be placed in folder with same name as black class name.
- Folder should be placed in `app/assets/stylesheets/blocks` folder.

As example, `search-form` block should be placed in `app/assets/stylesheets/blocks/search-form/search-form.scss`:

```scss
/* app/assets/stylesheets/blocks/search-form/search-form.scss */

.search-form {
  background-color: #eee;

  &__input {
    color: #000;
  }

  &__button {
    color: #999;
  }
}
```

## SCSS

### SCSS quick start

> Sass lets you use features that don't exist in CSS yet like variables, nesting, mixins, inheritance and other nifty goodies that make writing CSS fun again.
Once you start tinkering with Sass, it will take your preprocessed Sass file and save it as a normal CSS file that you can use in your website.

Official SCSS quick-start guide https://sass-lang.com/guide.

### SCSS variables

Be careful with global/local variables. Any top-level variable in any imported `.scss` file became global and overwrite previously defined global variables.

Example:

```scss
/* app/assets/stylesheets/blocks/search-form/search-form.scss */

$background-color: #999; // -- became global, DON'T DO THIS.

.search-form {
  $background-color: #999; // -- local variable, it's OK.

  background-color: $background-color;

  &__input {
    color: #000;
  }

  &__button {
    color: #999;
  }
}

```

Global variables should be used only for application-wide settings and defines in `app/assets/stylesheets/application.scss` file.
