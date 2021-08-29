<template>
  <div class="text-center">
    <div>
      Aklınızdan sıfır ile yüz arasında bir sayı tutun. Tuttuğunuz sayıyı görürseniz "Evet
      Var" butonuna, görmezseniz "Hayır Yok" butonuna basın. Hazırsanız başlayalım.
    </div>
    <div class="fs-1">😉</div>
    <div class="text-center footer fixed-bottom m-3">
      <button class="btn btn-success btn-lg w-100" @click="$emit('start')">
        Tamam Hadi Başlayalım!
      </button>
    </div>
  </div>
</template>
