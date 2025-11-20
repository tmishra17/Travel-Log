import streamlit as st
import torch, gc
gc.collect()
torch.cuda.empty_cache()


def main():
    print("Hello from travel-log!")


if __name__ == "__main__":
    main()
