defmodule BibleWithFriends.Models.Volume do
  use Ecto.Schema
  import Ecto.Changeset

  alias BibleWithFriends.Models.Volume
  alias BibleWithFriends.Repo

  schema "volumes" do
    field :collection_name, :string
    field :dam_id, :string
    field :delivery, { :array, :string }
    field :fbch_id, :string
    field :language_code, :string
    field :language_name, :string
    field :media, :string
    field :media_type, :string
    field :status, :string
    field :updated_on, :utc_datetime
    field :version_code, :string
    field :version_name, :string
    field :volume_name, :string
    timestamps()
  end


  # find or insert
  def create_volume(volume_attrs \\ %{}) do
    %Volume{}
    |> changeset(volume_attrs)
    |> Repo.insert!
  end

  # want to make sure we don't have dups for the same
  # dam_id,
  def changeset(%Volume{} = volume, attrs) do
    volume
    |> cast(attrs, [:dam_id, :collection_name, :delivery, :fbch_id, :language_code,
      :language_name, :media, :media_type, :status, :updated_on, :version_code,
      :version_name, :volume_name])
    |> validate_required([:dam_id, :collection_name, :volume_name])
    |> validate_inclusion(:status, ["live"])
  end
end
