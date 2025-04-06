# Create users
user1 = User.create!(name: "Alice", email: "alice.123@osu.edu")
user2 = User.create!(name: "Bob", email: "bob.456@osu.edu")
user3 = User.create!(name: "Charlie", email: "charlie.789@osu.edu")

# Create trip
trip = Trip.create!(
  tripName: "Spring Break 2025",
  startDate: Date.new(2025, 3, 10),
  endDate: Date.new(2025, 3, 15),
  user: user1 # creator
)

# Create participants
participant1 = Participant.create!(participantName: "Alice", tripName: trip, user: user1)
participant2 = Participant.create!(participantName: "Bob", tripName: trip, user: user2)
participant3 = Participant.create!(participantName: "Charlie", tripName: trip, user: user3)

# Create expenses
expense1 = Expense.create!(
  expenseDescription: "Hotel",
  amount: 300.00,
  expenseDate: Date.new(2025, 3, 10),
  tripName: trip,
  payer: user1
)

expense2 = Expense.create!(
  expenseDescription: "Dinner",
  amount: 90.00,
  expenseDate: Date.new(2025, 3, 11),
  tripName: trip,
  payer: user2
)

# Associate participants to expenses
expense1.participants << [participant1, participant2, participant3]
expense2.participants << [participant1, participant2]