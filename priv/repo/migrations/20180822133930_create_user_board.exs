defmodule Trello.Repo.Migrations.CreateUserBoard do
  use Ecto.Migration

  def change do
    create table(:user_boards) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :board_id, references(:boards, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:user_boards, [:user_id])
    create index(:user_boards, [:board_id])
  end
end
