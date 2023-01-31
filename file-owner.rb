# INSTRUCTION
# Implement a group_by_owners function that:

# Accepts a hash containing the file owner name for each file name.
# Returns a hash containing an array of file names for each owner name, in any order.
# For example, for hash {'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'} the group_by_owners function should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}.

def group_by_owners(files)
  result = {}
  files.map do |file, owner|
    if !result.include?(owner)
      result[owner] = []
    end
    result[owner].push(file)
  end
  return result
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts group_by_owners(files)