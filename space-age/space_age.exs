defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    Float.round(seconds / orbital_period(planet), 2)
  end

  def orbital_period(:earth),   do: 31557600
  def orbital_period(:mercury), do: 0.2408467 * orbital_period(:earth)
  def orbital_period(:venus),   do: 0.61519726 * orbital_period(:earth)
  def orbital_period(:mars),    do: 1.8808158 * orbital_period(:earth)
  def orbital_period(:jupiter), do: 11.862615 * orbital_period(:earth)
  def orbital_period(:saturn),  do: 29.447498 * orbital_period(:earth)
  def orbital_period(:uranus),  do: 84.016846 * orbital_period(:earth)
  def orbital_period(:neptune), do: 164.79132 * orbital_period(:earth)

end
