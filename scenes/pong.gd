extends Sprite2D

@onready var sfx_pong_score: AudioStreamPlayer = $SfxPongScore
var score := [0,0] # Index 0 : Player, Index 1 : CPU
const PADDLE_SPEED : int = 500

func _on_ball_timer_timeout() -> void:
	$Ball.new_ball()


func _on_score_left_body_entered(body: Node2D) -> void:
	score[1] += 1
	$Hud/CPUScore.text = str(score[1])
	sfx_pong_score.play()
	$BallTimer.start()

func _on_score_right_body_entered(body: Node2D) -> void:
	score[0] += 1
	$Hud/PlayerScore.text = str(score[0])
	sfx_pong_score.play()
	$BallTimer.start()
