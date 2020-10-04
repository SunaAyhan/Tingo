event_inherited();

// Note that this leaderboard has been set up to only allow scores >9 and <350
achievement_post_score("CgkIvN_kkrwKEAIQBA",global.Score);
show_debug_message("Posting score of " + string(global.Score) + " to leaderboard_top_scorers");
global.Score = 0;