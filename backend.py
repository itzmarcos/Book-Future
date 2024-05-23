import streamlit as st;

with st.form(key="include_cliente"):
    input_name = st.text_input(label="Nome do livro")
    input_occupation = st.selectbox("Selecione o genero",["Terror", "Romance", "Comedia"])
    input_button_submit = st.form_submit_button("Enviar")