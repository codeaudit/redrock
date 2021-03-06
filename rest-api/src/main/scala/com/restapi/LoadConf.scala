/**
 * (C) Copyright IBM Corp. 2015, 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package com.restapi

import com.typesafe.config._

object LoadConf {
  // Loading application.conf
  val globalConf: Config = ConfigFactory.load("redrock-app").getConfig("redrock")
  // Loading rest config
  val restConf: Config = globalConf.getConfig("rest-api")
  // Loading elasticsearch config
  val esConf: Config = globalConf.getConfig("elasticsearch")
  // Loading access control config
  val accessConf: Config = globalConf.getConfig("access-control")
}
