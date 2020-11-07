class Counter:
    def __init__(self, initial_value=0):
        self.initial_value = initial_value
        self.value = initial_value

    def increase(self):
        self.value = self.value + 1

    def decrease(self):
        self.value = self.value - 1

    def reset(self):
        self.value = self.initial_value
