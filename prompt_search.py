import pydantic
import hydra
from omegaconf import DictConfig
import logging

class PromptSearchConfig(pydantic.BaseModel):
    prompts: str|list[str]
    seed: int = 0
    rollout_steps: int = None
    model: str = "clip"
    time_sampling: int = 1

    # TODO: rename these
    coef_prompt: float = 1.
    coef_softmax: float = 0.
    coef_oe: float = 0.

    population_size: int = 16
    num_iterations: int = 1000
    mutation_rate: float = 0.1

    # TODO: rename this
    bs: int = 32

class Searcher:
    def __init__(self, config: DictConfig):
        self.config = config

@hydra.main(version_base=None, config_path="configs", config_name="dev")
def run(config: DictConfig):
    prompt_search_config = PromptSearchConfig.model_validate(config)
    print(prompt_search_config.model_dump_json())


if __name__ == "__main__":
    run()