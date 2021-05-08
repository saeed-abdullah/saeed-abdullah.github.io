---
title: Twitter and English letter frequency count

layout: post

---

Recently, [Peter Norvig][norvig-mayzner], using Google book Ngrams computed frequency of
English letters. As letter frequency varies across authors and subject --- an essay
about a xanthochroid zebra in Qatar, for example, would have rather different
distribution --- I was interested to see the distribution in Twitter which, 
as a medium, has distinctive characteristics.

Tweets being limited to 140 characters only, definitely have a bias towards smaller
words comparing to Google book data that Norvig used. But, given that orthography
of Twitter is quite different, how much of an effect that would have on bigram and
unigram frequency? In particular, I wanted to see if the letter frequency in
tweets differs from [etaoin shrdlu][wiki-etaoin].

So, I grabbed the twitter corpus used by [Cross Project][cross-web] for [first
story detection][fsd-paper] (thanks, [Myle][myle-ott]!). The corpus contains
around 50 million English tweets collected from beginning of July 2011 until
Mid-September 2011. You can grab the corpus from [here][fsd-corpus]. Due to
ToS from Twitter, they distribute the corpus as a set of tweet IDs which you
need to crawl by yourself.

Similar to Norvig, I discarded any entry that contains letter other than a-z. So,
user mentions with @ gets removed along with words containing punctuation marks.
After the pre-processing, the dataset contains 41,669,244 tweets, 366,265,866 words
and 1,812,288,895 characters. All the words are converted to lowercase.

Of these tokens, the longest one is 137 characters long:

> kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
> kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
> kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

This token appeared twice in the dataset. Sigh.

The next longest ones are 136 characters long:

> sleeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
> eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
> eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeping

And,

> goooooooooooooooooooooooooooooooooooooooooooooo
> ooooooooooooooooooooooooooooooooooooooooooooooo
> oooooooooooooooooooooooooooooooooooooooool 


For this analysis, I only retain tokens that have been mentioned at least 5000 times
--- resulting in 4565 unique ones. The longest tokens from the selected set are
more familiar ones:


| **Token** | **Frequency** |
| :-----: | :--------: |
|international| 24321|
|relationships| 17383|
|congratulations| 13883|
|entertainment| 10395|
|automatically| 7876|
|understanding| 7241|
|unfortunately| 7075|
|conversations| 6996|
|opportunities| 5242|


Limiting to at least 5000 mentions results in 327,767,619 tokens and 
1,194,137,386 letters in total. The letter frequency looks like this:

<div class="wp-caption alignnone" style="width: 500px"><img class="alignnone size-medium" title="Letter Frequency" src="/files/images/blog/mayzner_top_5000_unigram_count.png" style="width: 90%" alt="Letter Frequency"/></div>

So, the ranking of letter frequency is `etoain shrlud` --- the pair `o`,`a`
exchanges position and `lud` becomes `dlu` comparing to the the order of
frequency used by typesetters --- `etaoin shrdlu`.
More interestingly, in contrast to Norvig's finding, the letters `o`, `y` and `u` all
move up in ranking. I think this is due to the increased use of second person
pronouns --- `you`, `u` and `your` --- comparing to the book data he used.


<div class="wp-caption alignnone" style="width: 500px"><img class="alignnone size-medium" title="token count" src="/files/images/blog/mayzner_top_5000_token_count.png" alt="Token Count" style="width: 90%"/></div>

From the distribution of word count, the word `you`, `your` and `u` all are included
in top-20 word list from Twitter corpus while in book data only `you` make it to
top-50 --- placed in 32nd position.

More interestingly, the top word is not `the`, but `i`. This was a bit surprising
for me. But, on second thought, this probably shows that as the early Twitter
tagline --- '*What are you doing?*' --- asked, Twitter is still mainly used
for personal status service. Though, I thought, the subject would be implied
in most of the these personal updates.

<div class="wp-caption alignnone" style="width: 500px"><img class="alignnone size-medium" title="Frequency distribution in log-log scale" src="/files/images/blog/mayzner_top_5000_token_count_log_log.png" style="width: 90%" alt="Frequency distribution in log-log scale"/></div>


The frequency distribution seems to follow [Zipf's law][zipfs-wiki] --- as the line
in log-log scale plotting shows.

<div class="wp-caption alignnone" style="width: 500px"><img class="alignnone size-medium" title="Bigram count" src="/files/images/blog/mayzner_top_5000_bigram_distribution.png" alt="Bigram Count" style="width: 90%"/></div>

The bigram distribution is noticeably different from the book data. For example, `ou`
is ranked 4th in Twitter corpus while being in 28th position in Norvig's list. But,
for most of such ranking changes, I can't come up with any plausible explanation.


<div class="wp-caption alignnone" style="width: 500px"><img class="alignnone size-medium" title="Word Length" src="/files/images/blog/mayzner_top_5000_word_length_mention.png" style="width: 90%" alt="Word Length"/></div>

The word length distribution clearly points out the preference for shorter words in
Twitter corpus. The average length of word is 3.64 --- while the average length
of word in book data is 4.79. In Twitter corpus, words having length 2 to 6 counts
for 78% of all the dataset.

<div class="wp-caption alignnone" style="width: 500px"><img class="alignnone size-medium" title="Unique token count" src="/files/images/blog/mayzner_top_5000_word_length_unique.png" style="width: 90%" alt="Unique token Count"/></div>

Similarly, the unique word length distribution also is biased towards shorter words.
The average word length here is 6.161 and 80% of these words are 3 to 8 characters
long.

So, while the distribution of letters is not drastically different in Twitter,
as we move from letters to words, there are subtleties that I think reflect
the distinctive nature of Twitter --- both in how and what people communicate
there. I would love to see the result of same experiment done on Facebook
status updates.



[norvig-mayzner]: http://norvig.com/mayzner.html
[wiki-etaoin]: https://en.wikipedia.org/wiki/ETAOIN_SHRDLU
[cross-web]: http://demeter.inf.ed.ac.uk/cross/index.html
[fsd-paper]: http://homepages.inf.ed.ac.uk/miles/papers/naacl12.pdf
[myle-ott]: https://www.cs.cornell.edu/~myleott/
[fsd-corpus]: http://demeter.inf.ed.ac.uk/cross/docs/fsd_corpus.tar.gz
[zipfs-wiki]: https://en.wikipedia.org/wiki/Zipf's_law
