<template>
		<img :srcset="srcsets"
			:sizes="sizes"
			:src="srcsets[0]"
			:quality="quality"
			:alt="alt"
			 />
</template>

<script>

export default {
	name: 'damimg',
	props: {
		format: {
			type: String,
			default: "jpeg"
		},
		widths: {
			type: String
		},
		sizes: {
			type: String
		},
		alt: {
			type: String
		},
		crop: {
			type: String,
			default: "false"
		},
		src: {
			type: String
		},
		quality: {
			type: String,
			default: "70"
		},
		ratio: {
			default: ".666",
			type: String
		},

		dataAttributes: {
			type: String
		}
	},
	computed: {
		srcsets: function() {
			var imgs = this.widths.split(",");
			//put src into URL constructor so we don't have to regex GET params
			var url = new URL(this.src);
			//rebuild base URL
			var base = url.protocol + '//' + url.host;
			//get URL path so we can change format easily
			var path = url.pathname.split('/');

			//map lets us loop through the total number of images, transforming GET params for each.
			const sources = imgs.map(n => {
				var params = new URLSearchParams(url.search);
				params.set("w", n);
				params.set("quality", this.quality);
				path[3] = this.format;
				if (this.ratio) {
					params.set("h", Math.round(n*this.ratio))
				}
				if (this.crop) {
					params.set("crop", this.crop)
				}
				//rebuild URL with format, GET params as {path} + {XXX}w for each.
				return `${base + path.join("/") + '?' + params}  ${n + 'w'}`;
			});

			return(sources);
		}
	}
}
</script>

<style>

</style>
