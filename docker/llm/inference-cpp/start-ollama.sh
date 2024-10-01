# init ollama first
mkdir -p /llm/ollama
cd /llm/ollama
init-ollama
export OLLAMA_NUM_GPU=999
export ZES_ENABLE_SYSMAN=1

source ipex-llm-init --gpu --device $DEVICE

# start ollama service
./ollama serve | tee ollama.log
