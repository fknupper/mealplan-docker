FROM python
ADD mealplan mealplan
WORKDIR mealplan
RUN python -m venv .venv
RUN /bin/bash -c "source .venv/bin/activate"
RUN pip install -r requirements.txt
EXPOSE 8000
RUN chmod +x ./mealplan_init.sh
ENTRYPOINT ./mealplan_init.sh
