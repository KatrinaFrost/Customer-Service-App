# ------------- To Extract data from Dashboard in a Json file ---------------- #

json.extract! ticket, :id, :name, :email, :userId, :subject, :content, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
