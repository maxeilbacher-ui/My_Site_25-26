<script setup>
import { ref } from 'vue'

const props = defineProps({
	content: {
		type: Object,
		required: true
	}
})

const openSections = ref([])

const toggleSection = (section) => {
  if (openSections.value.includes(section)) {
    openSections.value = openSections.value.filter(s => s !== section);
  } else {
    openSections.value = [...openSections.value, section];
  }
}
</script>

<template>
	<div class="section black" id="collaborative">

<!---start of Phillip page-->
        <div class="toggle" @click="toggleSection('collaborative-solmann')">
          <span>Sollmann</span>
          <span>/</span>
          <span>Eilbacher</span>
        </div>
        <template v-if="openSections.includes('collaborative-solmann')">
          <p class="text">
            Max Eilbacher and Phillip Sollmann have been working together since meeting in 2023. They put on concerts, create installations, and make recordings together.
            <br>
            <br>
          In 2024 they premiered <strong style="font-size: 1.02em;">"Kalku Der Form"</strong> at The Berghain as part of the CTM Festival.
          <br>
          <br>
          Later in the year they turned this piece for digital synthesis and multi-channel speaker system into an installation at the Aachen Kunstverein, have staged multiple interventions within the installation, and have presented the work in concert form.
          <br>
          <br>
          <strong style="font-size: 1.2em;">"Kalku Der Form"</strong>
          <br>
          <br>

    
          With this work, Eilbacher and Sollmann create a sound system based on simple forms that moves along a minimal curve. 
          The tangible material is created by the generation of geometric configurations and the perceptual fusion of the musical actors, 
          who run against and next to each other in a constant morphology of different designs. Specifically, their digital sound 
          generator uses ten sine oscillators evenly spaced along a sine curve with slightly offset time intervals. 
          The sound sequences, the pitches and the temporal position at which each voice is heard are related to a geometric curve. 
          The structure of the sequence and the relationship between the order of the individual voices and the speed 
          at which the notes are played are subject to complex formulas and the interventions of the two performers.
          </p>

      
          <div class="gallery">
            <template v-for="item in content.shuffledSEImages" :key="item.id">
              <img :src="item" :alt="item.split('/').pop()">
            
            </template>
          </div>
          
          
        <!--    <div class="text" style="text-align: center;">
            <div style="margin-bottom: 1.1px;">Live at NAK 2024</div>
            <audio src="/audio/EILBACHER SOLLMANN NK1.wav" controls></audio>
          </div>
          
          <br>
          <br> -->
  
       
       </template>

            <!-- end of Phillip page -->
             <!--start of Lucy page-->
            <div class="toggle" @click="toggleSection('collaborative-Railton')">
          <span>Eilbacher</span>
          <span>/</span>
          <span>Railton</span>
        </div>
        <template v-if="openSections.includes('collaborative-Railton')">
          <p class="text">
            Indifferent Rocks Are Rearranged into a Dam takes various - and sometimes competing - understandings of "Interval", "isolation" and "distance" as its point of conceptual and compositional departure. Taking its title from a line in Elaine Scarry's book The Body in Pain, Indifferent Rocks... explores different forms of detachment and abstraction present both in the piece's making, as well as the post-pandemic cultural environment in which it was composed. We were interested in the perceptual limit of comprehending distances both social and musical: between speakers in a room; between partials; between attacks and isolated electronic tones; between virtuosity and fixed media; between performance separated by an ocean to its playback.
            <br>
            <br>
            The tonal breadth of Lucy's cello spectra was analyzed and digitally resynthesized as a collection of partials. For the initial analysis process, cello passages of quick fluctuating pitch were chosen. We wanted to break down and approach the sonorous materiality of the cello as a non-musical object.
            <br>
            <br>
            By breaking down the cello into indifferent materials -only to then rearrange and mimic its musical gestures, we wanted to see how meaning can be divested and then reimbued, with an ear to questioning that precise process of "reconstruction" of meaning: just as rocks are indifferent to containing and holding water "for us" until they have been placed into the configuration of a dam. 
            <br>
            <br>
            By focusing on the minutiae of the sound - "zooming in" - the spectral gaze renders the cello as raw inharmonic material. From these collected pitch sets, the distance between each frequency was calculated to construct a harmonic system by which sound was synthesized. At that point, what form could be given to arrange these static tones, to give them life: does that life require re-approximating the sound of its source, a kind of mimicry of cello as "authentic source, or is there another kind of life that can be wrenched from these soundings? In oscillating between these two poles we hoped to reframe the listeners' relationship with a pitched instrument. We wanted to tease the boundaries through which the cello becomes experienced. The simplified synthetic tones, intervallicaly arranged against Lucy's cello parts are the means by which the distance between cello, synthesis, and sonic meaning are ascribed significance.
            <br>
            <br>
            Since we were already preoccupied with the uncanny distances between source and output, original and resynthesized mimic - the reductions and slips required in bridging that distance - we felt it suitable to document the multi-channel piece via a simple recording of the abstracted aural gaze of others. Four speakers become two ears, a multi-channel field is reduced to stereo and multiple perceiving bodies in the Fridman Gallery are now simply the back's of heads, watched by two eyes on a screen.
          <br>
          <br>
          Railton and Eilbacher were first paired together in 2020 for an inaugural split release on Edition's Mego Portraits GRM, a label solely focusing on the release of recent musical pieces created for and commissioned by the Groupe de Recherches Musicale in France. Their new work for Distant Pairs will be their first collaboration and will continue in the territories of sonic engagement heard on their 2020 release, incorporating and intertwining cello and custom digital synthesis methods.
          </p>
          <br>
          <br>
          <div class="vimeo-container">
          <iframe 
        title="vimeo-player" 
        src="https://player.vimeo.com/video/767026748?h=f8199133d6" 
        width="640" 
        height="360" 
        frameborder="0"    
        allowfullscreen
          ></iframe>
         </div>
    <br>
    <br>
    <br>
          
          
          

        </template>

      <!--End of Lucy page-->

      <!---start of KA page-->
      <div class="toggle" @click="toggleSection('collaborative-KA')">
          <span>KA</span>
          <span>/</span>
          <span>Eilbacher</span>
        </div>
        <template v-if="openSections.includes('collaborative-KA')">
          <p class="text">
            KA Baird and Max Eilbacher have been making work together since 2017. Max has contributed synthesis and sound work to KA's discography.
            In 2020 they had a residency at the Kitchen in New York city. A new piece was made but never performed due to the pandemic. An alternative video version was made.
            KA contributes instrumentation and energetic practice to Eilbacher's recorded work
            <br>
          </p>
          <br>
          <br>
          <div style="text-align: center;">
            <a href="https://onscreen.thekitchen.org/media/dialogue-with-ka-baird-max-eilbacher" target="_blank" style="font-size: 1.4em;">
              "Dialogue with KA Baird & Max Eilbacher" at The Kitchen
            </a>
          </div>
          <br>
          <br>
          <br>
          <div class="vimeo-container">
            <iframe 
              title="vimeo-player" 
              src="https://player.vimeo.com/video/469042670" 
              width="640" 
              height="360" 
              frameborder="0"    
              allowfullscreen
            ></iframe>
          </div>
          <br>
          <br>  
        </template>

            <!-- end of KA page -->

            <!---start of Jules page-->
      <div class="toggle" @click="toggleSection('collaborative-Jules')">
          <span>Eilbacher</span>
          <span>/</span>
          <span>Reidy</span>
        </div>
        <template v-if="openSections.includes('collaborative-Jules')">
          <p class="text">
           Jules Reidy and Max Eilbacher have been performing together since 2024. They have an acoustic guitar and electronics duo. They will make a record one day.
           Here is a recording of them performing their duo at the Aachen Kunstverein in 2024.
            </p>
          
          <!--    <div class="text" style="text-align: center;">
            <div style="margin-bottom: 1.1px;">Reidy Eilbacher Live 2024</div>
            <audio src=/audio/JulesMAxAAKMP3.mp3 controls></audio>
          </div>
          
        </template> -->

            <!-- end of Jules page -->

            <!---start of OMA page-->
      <!-- <div class="toggle" @click="toggleSection('collaborative-Editions OMA')">
          <span>O</span>
          <span>/</span>
          <span>M</span>
          <span>/</span>
          <span>A</span>
        </div>
        <template v-if="openSections.includes('collaborative-Editions OMA')">
          <p class="text">
            OMA is a platform/publisher for all things Max, Owen Gartner and Andrew Bernstein related things.
            Launched in 2025, OMAE will be publishing records, scores, files, cds and more. 
          </p>
          
          -->
        </template> 

            <!-- end of OMA page -->


            <!---start of HLD page-->
      <div class="toggle" @click="toggleSection('collaborative-HL DB')">
          <span>Arnold Dreyblatt</span>
          <span>/</span>
          <span>Horse Lords</span>
        </div>
        <template v-if="openSections.includes('collaborative-HL DB')">
          <p class="text">
            Anorld Dreyblatt and Horse Lords have been working together since 2022. They performed their first live show in June of 2024. They have
           slated for release in 2025. Max plays bass and electronics in this configuration.
          </p>
          <div class="gallery" style="max-width: 90%; margin: 0 auto;">
            <img 
              v-for="imagePath in content.shuffledHLDreImages" 
              :key="imagePath" 
              :src="imagePath" 
              :alt="imagePath.split('/').pop()"
              style="margin: 10px 0;"
            >
          </div>
        </template>
            <!-- end of HL DB page -->

            <!--
            start of PE page
            <div class="toggle" @click="toggleSection('collaborative-PE')">
                <span>Pal</span>
                <span>/</span>
                <span>Eilbacher</span>
            </div>
            <template v-if="openSections.includes('collaborative-PE')">
                <p class="text">
                
                </p>
            </template>
            end of PE page
            -->

           <!---start of SSE page-->

      <!-- <div class="toggle" @click="toggleSection('collaborative-SSEE')">
          <span>Sprenger</span>
          <span>/</span>
          <span>Eilbacher</span>
          <span>/</span>
          <span>Sollmann</span>
        </div>
        <template v-if="openSections.includes('collaborative-SSEE')">
          <p class="text">
            On occasion Max has collaborated with Phillip Sollmann and Konrad Sprenger's "Modular Organ" installation.
            <br>
            <br>
            In 2023 the pair commissioned the creation of a new type of modal string synthesis system. This system was used to compose their "Modular Organ" at 
            the Monheim Triennale.
          </p>
            <div style="text-align: center;">
              <a href="https://archive.org/details/aporee_60763_69834" 
                 target="_blank" 
                 style="font-size: 1.2em; color: #a0a0a0;">
                Listen to an excerpt from their Monheim compostion, featuing my system of synthesis.
              </a>
            </div>
            <br>
            <p class="text">
            In the June of 2024, Max was commissioned by Sollmann, Sprenger and the TerraForma festival in Milan to write a new piece for that iteration of "Modular Organ."
            "* MFC, *for" was premeired at the Triennale di Milano, on the "Modular Organ."
          </p>
        </template> -->

            <!-- end of SSEE page -->


                <!-- start of HM page -->

        <div class="toggle" @click="toggleSection('collaborative-birdsey')">
          <span>Birdsey</span>
          <span>/</span>
          <span>Eilbacher</span>
        </div>
        <template v-if="openSections.includes('collaborative-birdsey')">
          <p class="text">
            Birdsey and Eilbacher have been collaborating since 2018. 
            <br>
            <br>
            "A bell rings and we see a bell. Whether its chime seeped from a speaker or floated through an open window, that bell is now in front of us. With each strike, its resonance, symbolism and physicality impacts us before we've even perceived these sounds as "music". To our ears, this is not immediately an instrument — it's a bell. On Bell Formations, arriving on vinyl this spring through Ryley Walker's Husky Pants label, sound artists Max Eilbacher (of Horse Lords) and Henry Birdsey never let you lose sight of this singular instrument, even as they turn it inside out.
            <br>
            <br>
            Originating from a series of orchestral bell recordings by Birdsey, Bell Formations is the result of two years of trading files and sculpting sounds on a microtonal level. Showcasing both Birdsey's precise skill at coaxing sounds through his recording and arrangements, as well as Eilbacher's one-of-a-kind electronic processing, these sprawling pieces accentuate the natural elements of bells rather than distorting them. Embracing both subtle and extreme detunings (and retunings), the pair approach each attack and sustain as a doorway to limitless sonic possibilities. As Eilbacher explains, "Henry's bell recordings are some of the most malleable acoustic material I have worked with."
            <br>
            <br>
            For all of Bell Formation's dense processing, Eilbacher and Birdsey push us infinitely closer to the instrument with every strike. Our understanding of these sounds grows more intimate, even as the sources become completely transmuted. Far beyond melting, it's as if these bells have sublimed entirely, each ring unleashing a cloud of copper and tin. For both its careful sonic unraveling of such a powerful, seemingly unchanging instrument and the inspiring musical conversation at its core, Bell Formations stand as a thrilling debut collaboration and one of the most unique experimental recordings of this year." - Miles Bowie 2022
          </p>
          <br>
          <br>
         
          <br>
          <div style="text-align: center;">
             <a href="https://dustedmagazine.tumblr.com/post/683513457834917888/henry-birdsey-max-eilbacher-bell-formations" 
                target="_blank" 
                style="font-size: 1em; color: #a0a0a0;">
                dusted - Henry Birdsey & Max Eilbacher — Bell Formations 
             </a>
           </div>
           
          <div class="gallery" style="text-align: center;">
   
            <img src="/images/henry/4.jpg" style="max-width: 100%; margin: 10px auto;">
            
          </div>
        </template>
 <!-- end of Birdsey Eilbacher page -->
      

             <!---start of BFME page-->
      <div class="toggle" @click="toggleSection('collaborative-BFME')">
          <span>Eilbacher</span>
          <span>/</span>
          <span>Bully Fae Collins</span>
        </div>
        <template v-if="openSections.includes('collaborative-BFME')">
          <p class="text">
            In 2023, Max Eilbacher composed the music and sound design for Collin's performance piece "Songs of the Dopeamine Cycle."
            The piece was premiered at Tanz Tag Berlin, at the Sophiensael. 

            This collection of music and audio will be released in 2025.

           
          </p>
          

        </template>
            <!-- end of BFME page -->

        
        <div class="toggle" @click="toggleSection('collaborative-emergent')">
          <span>Emergent</span>
          <span>Structures</span>
        </div>
        <template v-if="openSections.includes('collaborative-emergent')">
          <p class="text">Emergent Structures is a generative sound project. Birch Cooper and Max Eilbacher create
            generative durational synthesis works. Emergent Structures is their way of documenting and sharing the
            outcome of their sonic systems.</p>
          <ul class="list">
            <li><a href="http://www.emergentstructures.net/" target="_blank">www.emergentstructures.net</a></li>
          </ul>
          <div class="gallery">
            <img src="/images/emergent/1.jpg">
            <img src="/images/emergent/2.jpg">
            <img src="/images/emergent/3.jpg">
            <img src="/images/emergent/4.jpg">
            <img src="/images/emergent/5.jpg">
            <img src="/images/emergent/6.jpg">
            <img src="/images/emergent/7.png">
            <img src="/images/emergent/8.png">
            <img src="/images/emergent/9.png">
            <img src="/images/emergent/10.png">
            <img src="/images/emergent/11.png">
            <img src="/images/emergent/12.png">
            <img src="/images/emergent/13.png">
          </div>
          <div class="iframebox"> <iframe src="https://player.vimeo.com/video/531926952?h=0afbf28230" frameborder="0"
              allow="fullscreen; picture-in-picture"></iframe></div>
        </template>

    
        

        <div class="toggle" @click="toggleSection('collaborative-sef')">
          <span>Sef</span>
          <span>III</span>
        </div>
        <template v-if="openSections.includes('collaborative-sef')">
          <div class="subfolder">
            <p class="text">
              Sef III is a group concerned with performance, electronic music, the spoken word and science fiction.
              Composed of Alexander Moskos, Duncan Moore, and Max Eilbacher.</p>
            <div class="gallery">
              <img src="/images/sef3/1.jpeg">
              <img src="/images/sef3/2.jpeg">
              <img src="/images/sef3/3.jpeg">
              <img src="/images/sef3/4.jpeg">
              <img src="/images/sef3/5.jpeg">
            </div>
            <div class="iframebox"> <iframe
                src="https://www.youtube.com/embed/ZkDqMWrP-cs?controls=2&showinfo=0&modestbranding=1" frameborder="0"
                allow="fullscreen; picture-in-picture"></iframe></div>
            <div class="iframebox"> <iframe
                src="https://www.youtube.com/embed/rxrFJKGZKDo?controls=2&showinfo=0&modestbranding=1" frameborder="0"
                allow="fullscreen; picture-in-picture"></iframe></div>
            <div class="iframebox"> <iframe
                src="https://www.youtube.com/embed/ZYV-o4C_ucM?controls=2&showinfo=0&modestbranding=1" frameborder="0"
                allow="fullscreen; picture-in-picture"></iframe></div>
            <div class="iframebox"> <iframe
                src="https://www.youtube.com/embed/zUfXHYaYBjk?controls=2&showinfo=0&modestbranding=1" frameborder="0"
                allow="fullscreen; picture-in-picture"></iframe></div>
          </div>
        </template>

        

        <div class="toggle" @click="toggleSection('collaborative-moore')">
          <span>Eilbacher</span>
          <span>/</span>
          <span>Moore</span>
        </div>
        <template v-if="openSections.includes('collaborative-moore')">
          <p class="text">
            Max Eilbacher and Duncan Moore are sound and performance artists from Baltimore. Together they work to
            intertwine sounds,sights, and signs using movement and composition. They construct works for
            performers,
            lights, bodies in motion and sound. The outcomes of these constructs take the form of immersive
            sculptural
            performances and concise live compositions. Creating pieces where language and sound melt into an
            absurdity
            of existence.
          </p>
          <div class="gallery">
            <img src="/images/moore/1.jpeg">
            <img src="/images/moore/2.jpeg">
            <img src="/images/moore/3.jpeg">
            <img src="/images/moore/4.jpeg">
            <img src="/images/moore/5.jpeg">
            <img src="/images/moore/6.jpeg">
            <img src="/images/moore/7.jpeg">
            <img src="/images/moore/8.jpeg">
            <img src="/images/moore/9.jpeg">
          </div>
          <div class="iframebox"> <iframe
              src="https://www.youtube.com/embed/6OnQjdxoJOU?controls=2&showinfo=0&modestbranding=1" frameborder="0"
              allow="fullscreen; picture-in-picture"></iframe></div>
          <div class="iframebox"> <iframe
              src="https://www.youtube.com/embed/1WmDVFjxhqM?controls=2&showinfo=0&modestbranding=1" frameborder="0"
              allow="fullscreen; picture-in-picture"></iframe></div>
        </template>

        <div class="toggle" @click="toggleSection('collaborative-schofield')">
          <span>Schofield</span>
          <span>/</span>
          <span>Eilbacher</span>
        </div>
        <template v-if="openSections.includes('collaborative-schofield')">
          <p class="text">
            An electronic music duo of Max Eilbacher and Ren Schofield.<br>

             Announcing the first ever tour by the new duo of Max Eilbacher and Ren Schofield, two of America's
            great
            young soundthinkers. Both emerged after the great Noise Recession of 09 with reet style...<br>

            Schofield is of course Container, who flipped a whole paradigm when he went from making crumbling
            basement
            vibe tape music to beatdown techno. He puts pierogi on pizza and is a food blogger.<br>

            Eilbacher, perhaps best known as the tonal anchor in the mighty Horselords' rhythm section, is a sound
            artist, electroacoustic composer and audio designer, filmmaker and chef, thinker and a fruit beer
            drinker.<br>

            Schofield is from Providence RI and Eilbacher from Baltimore MD so to best imagine this tour, picture
            two
            seafood shacks w goggly eyes and happy mouths in a euro rental car hauling a maxmsp and a groovebox
            across
            that old continent, the whole tableau poorly photoshopped ads to the rightness. Make brain zap sounds
            over
            thunder drum and smacking-snares and audio completes the picture.<br>

            Anyhow, their duo promises to be one of the years most exciting assemblages. 1 part Eilbacher computer
            music complexity and one part Schofield beat-garngs.<br>

            Both have released work on Spectrum Spools, Eilbachers latest is available thru Purely Physical Teeny
            Tapes."<br>

            -- Alex Moskos</p>
          <ul class="list">
            <li>
              <a href="https://plasticbags.bandcamp.com/album/eilbacher-schofield-duo-modern-food"
                target="_blank">plasticbags.bandcamp.com/album/eilbacher-schofield<br>-duo-modern-food</a>
            </li>
          </ul>
        </template>

       

        <div class="toggle" @click="toggleSection('collaborative-geometry')">
          <img src="/images/cdr_logo_tp.png" class="logo">
        </div>
        <template v-if="openSections.includes('collaborative-geometry')">
          <div class="subfolder">
            <p class="text">
              <img src="/images/cdr_logo_tp.png" class="logo"> is a vanity label launched in the fall 2020. Works were
              released in small batches, as cds. Released in small
              editions
              as
              a means of expressing my my thoughts on labour, composition, manufacturing, time and the value of art as
              digital files, focus creative energy during the pandemic and generate a small income. This "label" is now defunct and these thoughts and energies have been transferred to a collective model as OMA</p>
            <ul class="list">
              <li>
                <div class="toggle" @click="toggleSection('collaborative-geometry-165x165')">165x165</div>
                <template v-if="openSections.includes('collaborative-geometry-165x165')">
                  <p class="text">Press play, move further away from a haze of clustered overtones, and start learning
                    how
                    to negotiate notions of space. Here is one long study in pulses metered by symmetric and
                    asymmetric
                    sets of numbers. "165x165" is the result of wanting to explore the sensation of simple patterns
                    made
                    of complex geometric-like forms, repetition of these shapes, and trying to understand why the wall
                    was
                    placed so close to the bathtub. This work was made during the winter of 2020/2021. At the time I
                    was
                    studying sieves and set theory, learning to knit, and trying to keep warm/sane. I feel all of
                    these
                    activities are very present in the 35 minutes of audio.<br>
                    Recorded Late fall 2020-April 2021.<br>
                    Baltimore Maryland<br>
                    Mastered by Giuseppe Lelasi.<br>
                    <a href="images/165/text.pdf" target="_blank">Open the insert file of "165x165"</a><br>
                    <a href="https://maxeilbacher.bandcamp.com/album/cdr-4-165-x-165" target="_blank">Listen to
                      excerpts
                      from "165x165"</a>
                  </p>
                  <div class="gallery">
                    <img src="/images/165/1.jpeg">
                    <img src="/images/165/2.jpeg">
                    <img src="/images/165/3.jpeg">
                    <img src="/images/165/4.jpeg">
                  </div>
                </template>
              </li>

              <li>
                <div class="toggle" @click="toggleSection('collaborative-geometry-beamforming')">Beamforming a
                  Temporary City</div>
                <template v-if="openSections.includes('collaborative-geometry-beamforming')">
                  <p class="text">BATC concerns materials and technologies not yet available. My use of such
                    speculative
                    engineering is concerned with the final product, an abstract sculpture, a functional building, or
                    a
                    sensory experience. It is also concerned with the disparate raw components that are synthesized
                    together to create such a possible finished creation. The extraction, amalgamation, and
                    transportation
                    of these yet-unknown resources play a critical role in BATC. I started working on this
                    transmission
                    of
                    theoretical architectural materials in the early days of March 2020. I worked manically on the
                    piece
                    as I adjusted to the new temporal and mental shifts brought on by Spring 2020. Laboring with the
                    sonic
                    mass I had accumulated was more an act of stress release than an enjoyable process of composing
                    music.
                    As much as I tried to manage the chaotic job site, I eventually abandoned the work. I found the
                    dense
                    material was unmanageable and unlistenable. 10 months later, I ran across the project folder when
                    I
                    was looking for source material to input into a new audio processing technique. With this new
                    method
                    of modulation, I could alter the pitch and timbre of a sound in an idiosyncratic manner. Working
                    at
                    the frame rate level, this method allowed me to stretch, modify, and transform an audio file in
                    extremely subtle ways. With this type of processing, the mess I had walked away from slowly became
                    the
                    structure I had previously envisioned. The construction and transmission I was striving for could
                    finally be achieved. 32 minutes of audio frame modulation and custom modal synthesis coalesce to
                    form
                    a dense yet simple aural glare.<br>
                    Recorded March 2020-April 2021<br>
                    Baltimore Maryland<br>
                    Mastered by Giuseppe Lelasi.<br>
                    <a href="images/batc/insert.pdf" target="_blank">Open the insert file of "Beamforming a Temporary
                      City"</a><br>
                    <a href="https://maxeilbacher.bandcamp.com/album/cdr-5-beamforming-a-temporary-city-2"
                      target="_blank">Listen to excerpts from "Beamforming a Temporary City"</a>
                  </p>
                  <div class="gallery">
                    <img src="/images/batc/1.jpeg">
                    <img src="/images/batc/2.jpeg">
                    <img src="/images/batc/3.jpeg">
                    <img src="/images/batc/4.jpeg">
                  </div>
                </template>
              </li>

              <li>
                <div class="toggle" @click="toggleSection('collaborative-geometry-sketches')">Sketches of Spetter!
                </div>
                <template v-if="openSections.includes('collaborative-geometry-sketches')">
                  <p class="text">A collection of short works made with a custom synthesis method. These tracks
                    represent
                    6 different exercises in sonic shape and dynamic outcome.<br>
                    Recorded July 2020 in a cabin in Franklin County Mass.<br>
                    Mastered by Giuseppe Lelasi.<br>
                    <a href="https://maxeilbacher.bandcamp.com/album/cdr-1-sketches-of-spetter" target="_blank">Listen
                      to
                      excerpts from "Sketches of Spetter!"</a></p>
                  <div class="gallery">
                    <img src="/images/sketchesofspetter/1.jpg">
                    <img src="/images/sketchesofspetter/2.jpg">
                    <img src="/images/sketchesofspetter/3.jpg">
                  </div>
                </template>
              </li>

              <li>
                <div class="toggle" @click="toggleSection('collaborative-geometry-repeatingcrevice')">Repeating
                  Crevice Revisited</div>
                <template v-if="openSections.includes('collaborative-geometry-repeatingcrevice')">
                  <p class="text">19 minutes and 42 seconds of processed and algorithmically pulsed percussion and
                    electronics.<br>Recorded April 2020 - Dec 2020 in a cabin in Franklin County Mass and Baltimore
                    Maryland.<br>
                    Mastered by Giuseppe Lelasi.<br>
                    <a href="https://maxeilbacher.bandcamp.com/album/cdr-2-repeating-crevice-revisited"
                      target="_blank">Listen to excerpts from "Repeating Crevice Revisited"</a>
                  </p>
                  <div class="gallery">
                    <img src="/images/repeatingcrevice/1.jpg">
                    <img src="/images/repeatingcrevice/2.jpg">
                    <img src="/images/repeatingcrevice/3.jpg">
                    <img src="/images/repeatingcrevice/4.jpg">
                  </div>
                </template>
              </li>

              <li>
                <div class="toggle" @click="toggleSection('collaborative-geometry-bellformations')">Bell Formations
                  I-V</div>
                <template v-if="openSections.includes('collaborative-geometry-bellformations')">
                  <p class="text">51 minutes spread across 5 pieces. Constructed entirely of detuned and processed
                    Orchestra bells. Made by Henry Birdsey and Max Eilbacher over a period of two years.<br>Extreme
                    detuning/retuning. A sonorous halo of shimmering, simmering, inescapable knells. Pointillistic
                    metal
                    partials affixed to one another as vibrating air.<br>
                    Henry Birdsey: Orchestra bells, processing, arrangement Max Eilbacher: Processing, arrangement<br>
                    <a href="https://maxeilbacher.bandcamp.com/album/cdr-3-bell-formations" target="_blank">Listen to
                      excerpts from "Bell Formations I-V"</a>
                  </p>
                  <div class="gallery">
                    <img src="/images/bellformations/1.jpg">
                    <img src="/images/bellformations/2.jpg">
                    <img src="/images/bellformations/3.jpg">
                    <img src="/images/bellformations/4.jpg">
                  </div>
                </template>
              </li>
            </ul>
          </div>
        </template>

      </div>
</template> 