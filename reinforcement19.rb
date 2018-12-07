

ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def vote_counter(arr)

  results = {}

  arr.each do |ballot|
    ballot.each do |rank, name|
      if results[name] == nil
        results[name] = 0
      end

      if rank == 1
        results[name] += 3
      elsif rank == 2
        results[name] += 2
      else
        results[name] += 1
      end
    end
  end

  winner = results.max_by{|name, score| score}
  return winner

end

p vote_counter(ballots)
