<template>
  <v-responsive class="mx-auto" max-width="1024">
    <v-container>
      <v-row>
        <v-col>
          <book-header></book-header>
          <v-divider class="mt-2"></v-divider>
        </v-col>
      </v-row>
      <v-row no-gutters style="flex-wrap: nowrap">
        <v-col cols="12" md="8">
          <div>
            .<br />
            .<br />
            .<br />
            .<br />
            .<br />
            .<br />
            .<br />
            .<br />
            .<br />
            .<br />
          </div>

          <div class="text-h6 mt-10 mb-2"></div>
          <div>
            <v-card class="mx-auto grey lighten-4">
              <v-card-title>
                "Turns out semicolon-less style is easier and safer in TS
                because most gotcha edge cases are type invalid as well."
              </v-card-title>
            </v-card>
          </div>

          <div class="text-h6 mt-10 mb-2">Reviews</div>
          <div>asdfasdfasdf</div>
          <div class="text-h6 mt-10 mb-2">Details</div>
          <div>asdfasdfasdf</div>
        </v-col>
        <v-col cols="12" md="4"></v-col>
      </v-row>
    </v-container>
  </v-responsive>
</template>

<script>
import BookHeader from '../components/books/book-header'

export default {
  components: {
    BookHeader,
  },
}
</script>
