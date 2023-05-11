<template>
    <div class="ll-desktop-nav desktop-nav" id="sticky">
		<a class="navbar-brand pl-4 ml-lg-5" href="https://www.progressive.com/lifelanes/">
            <img src="~assets/svg/lifelanes-logo.svg" alt="Life Lanes logo" aria-label="Lifelanes" class="logo-text" />			
            <span class="sr-only">Life Lanes home</span>
		</a>
		
		<ul class="nav" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement" role="navigation" aria-label="Life Lanes">
			<li class="nav-item" role="presentation">
				<a class="btn btn-lg btn-block py-2 px-4 nav-link link-hover" href="/">
                <img src="~assets/svg/on-the-road.svg" class="mx-auto mb-1 on-the-road" alt="Progressive logo, blue on white background"/>
        	    <span class="ml-2 ll-desktop-text">On the Road</span></a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="btn btn-lg btn-block py-2 px-4 nav-link link-hover" href="/">	
                <img src="~assets/svg/household.svg" class="mx-auto mb-1 on-the-road" alt="Progressive logo, blue on white background"/>
                <span class="ml-2 ll-desktop-text">Household</span>		</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="btn btn-lg btn-block py-2 px-4 nav-link link-hover" href="/">
                <img src="~assets/svg/adventure.svg" class="mx-auto mb-1 on-the-road" alt="Progressive logo, blue on white background"/>
                <span class="ml-2 ll-desktop-text">Adventure</span></a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="btn btn-lg btn-block py-2 px-4 nav-link link-hover" href="/">	
                <img src="~assets/svg/turning-points.svg" class="mx-auto mb-1 on-the-road" alt="Progressive logo, blue on white background"/>
                <span class="ml-2 ll-desktop-text">	Turning Points</span></a>
			</li>
			<li class="nav-item saved-articles" role="presentation">
				<a href="/" class="btn btn-lg btn-block py-2 px-3 nav-link link-hover" data-label="Saved Articles">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 51.1113" focusable="false" aria-hidden="true"><title>Saved articles icon</title><path d="M42,8H10a2,2,0,0,0-2,2V49.1113a2,2,0,0,0,2.7432,1.857L26,44.8652l15.2568,6.1031A2,2,0,0,0,44,49.1113V10A2,2,0,0,0,42,8Z"></path><path d="M36,2a2,2,0,0,0-2-2H2A2,2,0,0,0,0,2V41a2,2,0,0,0,4,0V4H34A2,2,0,0,0,36,2Z"></path></svg>
					<span class="ml-2 mr-4">Saved Articles</span>
				</a>
			</li>
		</ul>
		
				
	</div>
</template>


<script>
import Svgz from '../svgz.vue'
/* import {COMPONENT NAME} from "~/components/..."; */

export default {
 

  components: {
    Svgz

  }
  
}
</script>


<style lang="scss">


</style>
