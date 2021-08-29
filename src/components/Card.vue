<template>
  <div>
    <div class="text-center">
      <span
        class="badge fs-4 m-1 bg-light text-dark"
        v-for="number in numbers"
        :key="number"
      >
        {{ number }}
      </span>
    </div>
    <div class="mb-5">&nbsp;</div>
    <div class="btn-group btn-group-lg special footer fixed-bottom m-3" role="group">
      <button type="button" class="btn btn-danger" @click="$emit('dream', 0)">
        Hayır Yok
      </button>
      <button type="button" class="btn btn-success" @click="$emit('dream', numbers[0])">
        Evet Var
      </button>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    numbers: Array,
  },
};
</script>

<style scoped>
.btn-group.special {
  display: flex;
}

.special .btn {
  flex: 1;
}
</style>
