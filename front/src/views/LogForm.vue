<template>
<v-app id="home-background">
	<HomeLink />
	<InputForm />
</v-app>
</template>

<script>
import HomeLink from '@/components/Link.vue'
import InputForm from '@/components/InputForm.vue'
export default {
	components: {
		HomeLink,
		InputForm
	}
}
</script>

<style scoped>
#home-background {
	background-color: white;
}
</style>