<template>
  <div id="client-app">
    <p>{{ message }}</p>
  </div>
</template>

<script>
  export default {
    data: function() {
      return {
        message: 'Boom Client!',
      };
    },
  };
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>
