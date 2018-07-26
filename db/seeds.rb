require 'faker'
AssemblyPart.destroy_all
Assembly.destroy_all
Part.destroy_all

10.times do
	assembly = Assembly.create(name: Faker::OnePiece.island)
end

10.times do
	part = Part.create(part_number: Faker::Dessert.variety)
end

10.times do
	assembly_part = AssemblyPart.create(assembly_id: Faker::Number.between(Assembly.first.id, Assembly.last.id), 
		part_id: Faker::Number.between(Part.first.id, Part.last.id))
end
