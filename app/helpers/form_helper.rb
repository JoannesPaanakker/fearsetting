module FormHelper
    def setup_challenge(challenge)
      challenge.benefit ||= Benefit.new
      challenge
    end
  end