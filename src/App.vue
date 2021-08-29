<template>
  <div class="container mt-3">
    <Progress :val="progress" />
    <Intro v-if="!gameStarted" @start="start()"></Intro>
    <Card v-if="gameContinues" :numbers="numbers" @dream="dream($event)" />
    <Finish :result="result" v-if="gameFinished" @restart="restart()" />
  </div>
</template>

<script>
import Progress from "./components/Progress.vue";
import Intro from "./components/Intro.vue";
import Card from "./components/Card.vue";
import Finish from "./components/Finish.vue";

export default {
  name: "App",
  data() {
    return {
      progress: 0,
      gameStarted: false,
      currentBox: 1,
      numbers: [],
      boxes: {},
      result: 0,
    };
  },
  components: {
    Progress,
    Intro,
    Card,
    Finish,
  },
  computed: {
    gameFinished() {
      return this.currentBox == 128;
    },
    gameContinues() {
      return this.numbers.length > 0 && this.currentBox != 128;
    },
  },
  methods: {
    box(n) {
      var d = {};
      var i = 0;
      while (++i < n + 1) {
        var a = x(i);
        for (var b in a) {
          var c = a[b];
          d[c] = d[c] == undefined ? [] : d[c];
          d[c].push(i);
        }
      }
      function x(b) {
        var r = [];
        var i = 8;
        while (--i) {
          var a = Math.pow(2, i - 1);
          if (a == b) {
            r.push(a);
            return r;
          } else if (b >= a && b % a >= 0) {
            var c = r.reduce(function (a, b) {
              return a + b;
            }, 0);
            if (c + a <= b) r.push(a);
          }
        }
        return r;
      }
      return d;
    },
    dream(num) {
      this.result += num;
      this.next();
    },
    next() {
      this.progress += 14.285714285714286;
      this.currentBox *= 2;
      if (this.currentBox < 65) this.numbers = this.boxes[this.currentBox];
    },
    start() {
      this.gameStarted = true;
      this.boxes = this.box(100);
      this.numbers = this.boxes[this.currentBox];
    },
    restart() {
      this.progress = 0;
      this.gameStarted = false;
      this.currentBox = 1;
      this.numbers = [];
      this.boxes = {};
      this.result = 0;
    },
  },
  created() {
    // this.start();
  },
};
</script>
