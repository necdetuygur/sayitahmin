<template>
  <div class="progress mb-3" style="height: 3px">
    <div
      class="progress-bar"
      role="progressbar"
      :style="{ width: val + '%' }"
      :aria-valuenow="val"
      aria-valuemin="0"
      aria-valuemax="100"
    ></div>
  </div>
</template>

<script>
export default {
  props: ["val"],
};
</script>
