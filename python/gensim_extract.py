import gensim
import json
from gensim.corpora import Dictionary
from gensim.models import LdaMulticore


input_dict_fname = '../outputs/20news_18828/output_text_preprocessed.json'

# Retrive gensim corpus & dictionary data...

json_word_list = None
with open(input_dict_fname, "r") as f:
    json_word_list = json.loads(f.read())

json_word_list = list(json_word_list.values())
print(json_word_list[1])
dictionary = Dictionary(json_word_list)
corpus = [dictionary.doc2bow(x) for x in json_word_list]

newsdata_topics = LdaMulticore(corpus, id2word=dictionary, num_topics=10)

print(newsdata_topics.show_topics(num_words=5))
