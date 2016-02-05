json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :age, :email, :salary, :department_id
  json.url employee_url(employee, format: :json)
end
