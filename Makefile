init:
	@pip install pre-commit
	@pre-commit install --hook-type pre-commit --hook-type commit-msg --overwrite --install-hooks
