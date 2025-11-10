// Collision Event with obj_player

// Increase player health
with (other) {
    hp += other.max_hp ? min(pickup_value, max_hp - hp) : pickup_value;
    // Ensures health doesn't exceed max_hp if that variable exists
}



// Destroy the pickup
instance_destroy();
