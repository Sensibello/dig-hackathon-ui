<template>

    <div class="prog-desktop-nav desktop-nav">
      <button
        type="button"
        class="menu-button"
        :aria-expanded="isOpen"
        :aria-label="isOpen ? 'Close menu' : 'Open menu'"
        @click="toggleMenu"
      >
        <span class="sr-only">Menu</span>
        <span class="icon" :class="{ 'is-active': isOpen }">
          <span></span>
          <span></span>
          <span></span>
        </span>
      </button>
      <div class="main-menu">
        <a class="prog-brand navbar-brand" href="https://www.progressive.com">
            <img src="~assets/svg/progressive-logo.svg" alt="Progressive Insurance logo" aria-label="Progressive" id="logo" />
            <span class="sr-only">Progressive home</span>
        </a>


        <ul class="prog-main-nav" :class="{ 'is-open': isOpen }">
            <li class="nav-item">
                <a class="nav-link" href="https://www.progressive.com/insurance/">Explore Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://www.progressive.com/claims/">Claims</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://www.progressive.com/about/">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://www.progressive.com/resources/">Resources</a>
            </li>
        </ul>

        <ul class="phone-nav" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement" role="navigation">
			<li class="nav-item phone-item f-right">
                <a class="nav-link phone-link" href="tel:855-347-3749">1-855-347-3749</a>
            </li>
            <li class="nav-item f-right">
                <a href="https://account.apps.progressive.com/access/login?cntgrp=A" class="nav-link login-link" data-label="Log In to Progressive">
                    <img src="~assets/svg/user.svg" class="mr-2" alt="user icon" aria-label="" id="" />
                    Log In
                </a>
            </li>
		</ul>
      </div>
    </div>

</template>

<script>
export default {
  name: "Header",
  data() {
    return {
      isOpen: false,
    };
  },
  methods: {
    toggleMenu() {
      this.isOpen = !this.isOpen;
    },
  },
};
</script>

<style lang="scss" scoped>
 @import "../styles/components/header.scss"; 

</style>