

//Day 1
//AdventOfCode 2021

func countIncreasingSonarReadings(_ numbers: [Int]) -> Int {
  var increasedReadings = 0
  
  for (index, number) in numbers.enumerated() {
    if index < numbers.endIndex - 1,
       number < numbers[index + 1] {
      increasedReadings += 1
    }
  }
  
  return increasedReadings
}

//answer should be 7
let result = countIncreasingSonarReadings(InputData.testInput)
let officialResult = countIncreasingSonarReadings(InputData.officialInput)
