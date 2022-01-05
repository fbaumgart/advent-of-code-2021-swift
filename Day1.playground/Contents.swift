

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


// second part

func getThreeWindowSums(from elements: [Int]) -> [Int] {
  var chunks: [Int] = []
  for (index, number) in elements.enumerated() {
    if index < elements.endIndex - 2 {
      let firstNumber = number
      let secondNumber = elements[index + 1]
      let thirdNumber = elements[index + 2]
      chunks.append(firstNumber + secondNumber + thirdNumber)
    }
  }
  return chunks
}

let chunks = getThreeWindowSums(from: InputData.officialInput)
let result2 = countIncreasingSonarReadings(chunks)
