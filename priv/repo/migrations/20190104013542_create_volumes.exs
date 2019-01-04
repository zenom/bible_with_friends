defmodule BibleWithFriends.Repo.Migrations.CreateVolumes do
  use Ecto.Migration

  def change do
    create table(:volumes) do
      add :collection_name, :string
      add :dam_id, :string
      add :delivery, {:array, :string}
      add :fbch_id, :string
      add :language_code, :string
      add :language_name, :string
      add :media, :string
      add :media_type, :string
      add :status, :string
      add :updated_on, :utc_datetime
      add :version_code, :string
      add :version_name, :string
      add :volume_name, :string
      timestamps()
    end
  end
end
