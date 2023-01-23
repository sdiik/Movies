// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func customLane() {
	desc("Description of what the lane does")
		// add actions here: https://docs.fastlane.tools/actions
	}
}
func setupSwiftlnt() {
	swiftlint(
  mode: :lint,      # SwiftLint mode: :lint (default) or :autocorrect
  path: "/path/to/lint",       # Specify path to lint (optional)
  output_file: "swiftlint.result.json", # The path of the output file (optional)
  config_file: ".swiftlint-ci.yml",     # The path of the configuration file (optional)
  files: [# List of files to process (optional)
    "AppDelegate.swift",
    "path/to/project/Model.swift"
  ],
  raise_if_swiftlint_error: true,      # Allow fastlane to raise an error if swiftlint fails
  ignore_exit_status: true    # Allow fastlane to continue even if SwiftLint returns a non-zero exit status

)
}

