/*
 * Copyright 2023 Google LLC. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <ARCoreGARSession/GARSessionConfiguration.h>
#import <ARCoreSemantics/GARSemanticMode.h>

NS_ASSUME_NONNULL_BEGIN

/** Category adding Scene Semantics functionality to `GARSessionConfiguration`. */
@interface GARSessionConfiguration (Semantics)

/**
 * Sets the desired configuration for the Scene Semantics API.
 * See `#GARSemanticMode` for available options and usage information.
 * Some ARCore supported devices do not support the Scene Semantics API. Use
 * `GARSession#isSemanticModeSupported:` to query for support for Scene Semantics. Affected devices
 * are also indicated on the <a href="https://developers.google.com/ar/devices">ARCore supported
 * devices page</a>.
 */
@property(nonatomic) GARSemanticMode semanticMode;

@end

NS_ASSUME_NONNULL_END
