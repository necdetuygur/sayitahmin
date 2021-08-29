<template>
  <div>
    <div class="text-center">
      <span class="badge fs-1 m-1 bg-light text-dark">
        {{ result > 100 ? "Hatalı seçim!" : result }}
      </span>
    </div>
    <div class="text-center footer fixed-bottom m-3">
      <button class="btn btn-success btn-lg w-100" @click="$emit('restart')">
        Tekrar Oyna!
      </button>
    </div>
  </div>
</template>

<script>
export default {
  props: ["result"],
};
</script>
