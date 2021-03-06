# -*- coding: utf-8 -*-
import tensorflow as tf
import numpy as np
import os
#周梓浩
model_name = 'pb/output_graph.pb'
image_dir = 'food_test'
label_filename = 'outputlabels.txt'

def create_graph():
    with tf.gfile.FastGFile( model_name, 'rb') as f:
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read())
        tf.import_graph_def(graph_def, name='')

def load_labels(label_file_dir):
    if not tf.gfile.Exists(label_file_dir):
        tf.logging.fatal('File does not exist %s', label_file_dir)
    else:
        labels = tf.gfile.GFile(label_file_dir).readlines()
        for i in range(len(labels)):
            labels[i] = labels[i].strip('\n')
    return labels


create_graph()
with tf.Session() as sess:
    softmax_tensor = sess.graph.get_tensor_by_name('final_result:0')
    for root, dirs, files in os.walk(image_dir):
        for file in files:
            image_data = tf.gfile.FastGFile(os.path.join(root, file), 'rb').read()
            predictions = sess.run(softmax_tensor,{'DecodeJpeg/contents:0': image_data})
            predictions = np.squeeze(predictions)
            image_path = os.path.join(root, file)
            print(image_path)
            top_5 = predictions.argsort()[-5:][::-1]
            for label_index in top_5:
                label_name = load_labels(label_filename)[label_index]
                label_score = predictions[label_index]
                print('%s (score = %.5f)' % (label_name, label_score))
            print()
