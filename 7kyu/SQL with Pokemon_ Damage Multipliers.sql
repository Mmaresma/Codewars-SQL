--SQL: 7 kyu - SQL with Pokemon: Damage Multipliers
--https://www.codewars.com/kata/5ab828bcedbcfc65ea000099

select 
  LosPokemon.pokemon_name, 
  LosPokemon.str * Amultiplicar.multiplier as modifiedStrength, 
  Amultiplicar.element
from pokemon as LosPokemon 
join multipliers as Amultiplicar on element_id = Amultiplicar.id
where LosPokemon.str * Amultiplicar.multiplier >= 40
order by modifiedStrength desc;
