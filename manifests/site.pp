import "plugins/*"
import "hosts/*"

stage { [pre, post]: }
Stage[pre] -> Stage[main] -> Stage[post]
#notify {"I'm notifying you.":}
