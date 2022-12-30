#! /bin/bash

if [[ $1 == "test" ]]; then
    PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
    PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

# Get All Unique Team From .CSV and Insert into Teams.

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do
    if [[ $WINNER = 'winner' || $OPPONENT = 'opponent' ]]; then
        echo "header found!! it will not be inserted into the database"
    else
        # check winning team name already exists or not
        isWinnerTeamExits=$($PSQL "SELECT * FROM teams WHERE name = '$WINNER'")
        if [[ -z $isWinnerTeamExits ]]; then
            team=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
            if [[ $team == "INSERT 0 1" ]]; then
                echo "$team inserted successfully"
            fi
        fi

        # check opponent team name already exists or not
        isOpponentTeamExits=$($PSQL "SELECT * FROM teams WHERE name = '$OPPONENT'")
        if [[ -z $isOpponentTeamExits ]]; then
            team=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
            if [[ $team == "INSERT 0 1" ]]; then
                echo "$team inserted successfully"
            fi
        fi
    fi
done

# Get All Games Info from .CSV and Insert into Games.

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do

    if [[ $YEAR = 'year' || $ROUND = 'round' || $WINNER = 'winner' || $OPPONENT = 'opponent' || $WINNER_GOALS = 'winner_goals' || $OPPONENT_GOALS = 'opponent_goals' ]]; then
        echo "header found!! it will not be inserted into the database"
    else
        # echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS

        # Get winner team id
        WINNER_ITEM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")

        # Get opponent team id
        OPPONENT_ITEM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

        # Insert into games
        # echo "$YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS"
        echo $($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ITEM_ID, $OPPONENT_ITEM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    fi
done
