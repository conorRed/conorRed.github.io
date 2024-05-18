- Have a look at Scala quiz results
- {{[[DONE]]}} Finish Spike for [[OPSENG-31364]]
- #Quote Having a fine library doesn't prove that its owner has a mind enriched by books; it proves
  nothing more than that he, his father, or his wife, was rich enough to buy them. - Mortimer J
  Adler
- #Quote The sign of intelligence in reading is the ability to read different things differently
  according to their worth. In the case of good books, the point is not to see how many of them you
  can get through, but rather how many can get through you—how many you can make your own. A few
  friends are better than a thousand acquaintances. If this be your aim, as it should be, you will
  not be impatient if it takes more time and effort to read a great book than it does a newspaper. -
  ibid
- Having a discussion with the author. Knowing they know more than you but not just receiving
  information.
- {{[[DONE]]}} [Patrick collison
  interview](https://noahpinion.substack.com/p/interview-patrick-collison-co-founder)
    - Optimistic about growth in
    - #Quote  So, to the extent that you're talking about particular macroeconomic time series, you
      suddenly scope in a whole bunch of definitional and deflator and measurement debates and all
      that. But if we ignore those and focus on the basic phenomena that we really care about:
      progress in science, advancement in technology, and the effective deployment of both such that
      broader societal welfare is enhanced -- yes, I would say that I'm certain that we can do very
      meaningfully better than we are doing today. I'll claim that we could double our rate of
      progress.
    - Science has completely changed as an area. The possible idea that its growth has not been
      good. Most systems get worse in a least certain ways as they scale. Try and understand what
      Science is now, what are we rewarding and incentivising.
    - Interesting idea about the shift in culture in terms of expectation of the state. Says
      California is the 'tenet' of states moving backwards and forwards simultaneously
    - How do we maintain what we've built. Like a mature company, after such high growth how to we
      transition. Institution have a working system it requires a lot of work to change as opposed
      to them not wanting change
    - Allocation of talent, what are we getting wrong in terms of getting people to the right places
      this could be interesting to look into [[?]]
    - Stresses the importance of longer term horizon. Think it relates to what we actually want now,
      what do we need.
    - #Questions **So, I think that the industrial policy folks too often talk about "the returns to
      publicly-funded R&D" as a monolithic whole. I would ask them: exactly how will you choose who
      gets funded? What will the relevant incentive structure for those people be? What's your
      theory for how they'll do __top-tier __science/research/innovation/etc.? These are tough
      questions! Building systems that allocate capital well at scale and through time is hard. If
      they have good answers, I'm probably supportive... more experimentation would be great. If
      not, I'm less hopeful.**
    - Government helping innovation
    - Some links :
        - shape of China https://www.chinafile.com/document-9-chinafile-translation
        - #Book Metamagical Themas Hoftstadter
        - talent related productivity slowdown
          https://www.oecd-ilibrary.org/economics/the-best-versus-the-rest_63629cc9-en
        - {{[[TODO]]}} WEIRD psychology https://psyarxiv.com/d6qhu/
            - [Economics of
              Innovation](http://matt-clancy.com/economics-of-innovation-detailed-reading-list/)
            -
- {{[[DONE]]}}  Look at go errors and try and look at the programming concepts in use
    - errors package implements __functions to manipulate__ errors
    - errors.Is unwraps its first argument looking for the second
    - errors.As unwraps sequentially looking for an error that can be assigned to its second
      argument. If it can it returns true and assigns
        - [Errors as values](https://blog.golang.org/errors-are-values)
            - "Values can be programmed, and since errors are values, errors can be programmed"
            - Uses scanner example where the err value in the performing object is set and can be
              checked for later
            - Not really the same as a try catch, why?
            - If seeing err nil checks could  abstract to an interface that sets an err value
            - Underlying API errors "In other words, wrapping an error makes that error part of your
              API. If you don't want to commit to supporting that error as part of your API in the
              future, you shouldn't wrap the error"
            -
-
