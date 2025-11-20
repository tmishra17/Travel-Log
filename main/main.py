import streamlit as st
import torch, gc
gc.collect()
torch.cuda.empty_cache()

st.set_page_config(page_title="Travel-Log", page_icon="✈️")
st.title("✈️ Travel-Log")
st.write("Program that tracks the journey of someone's travel")

file = st.file_uploader("Select a photo to upload", type=['jpg', 'png', 'jpeg'])
if file is not None:
    st.success("File Uploaded successfully!")
else:
    st.error("No file uploaded")

st.write("Hello from travel-log!")

