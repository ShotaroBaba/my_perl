import gensim
import json
input_dict_fname = '../outputs/20news_18828/output_dict_gensim.json'
input_corpus_fname = '../outputs/20news_18828/output_corpus.json'

# Retrive gensim corpus & dictionary data...
gensim_dict = gensim.corpora.dictionary.Dictionary()

gensim_dict.load_from_text(input_dict_fname)

json_corpus = None
with open(input_corpus_fname, "r") as f:
    json_corpus = json.loads(f.read())


json_corpus = list(map(lambda x: x.items().to_list(), list(json_corpus.values())))

# print only first ten elements.
print(json_corpus[:10])

