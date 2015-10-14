#!/bin/bash
#
# (C) Copyright IBM Corp. 2015, 2015
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if [ "$1" = "--delete" ]
then
  echo " ==========  Deleting ES Powertrack Type ============"
  curl -XDELETE 'http://localhost:9200/redrock/powertrack_tweets'
  echo ""
fi

echo " ==========  Creating ES Powertrack Type ============"
curl -XPUT 'http://localhost:9200/redrock/_mapping/powertrack_tweets' -d '
{
  "powertrack_tweets": {
    "_id": {
      "path": "tweet_id"
    },
    "properties": {
      "tweet_id": {
        "type": "string",
        "index": "not_analyzed"
      },
      "tweet_text": {
        "type": "string",
        "analyzer": "tweet_analyzer"
      },
      "created_at": {
        "type": "date",
        "format": "dateOptionalTime"
      },
      "language": {
        "type": "string",
        "index": "not_analyzed"
      },
      "user_image_url": {
        "type": "string",
        "index": "not_analyzed"
      },
      "user_followers_count": {
        "type": "long",
        "index": "not_analyzed"
      },
      "user_name": {
        "type": "string",
        "index": "not_analyzed"
      },
      "user_handle": {
        "type": "string",
        "index": "not_analyzed"
      },
      "user_id": {
        "type": "string",
        "index": "not_analyzed"
      },
      "tokens" : {
        "type": "string",
        "index": "not_analyzed"
      }
    }
  }
}
'
echo ""
