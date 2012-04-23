module AsanaRb
  class Task < Base
    class << self
      def create(text, workspace, assignee)
        options = { 
          body: {
            data: { 
              workspace: workspace, 
              name: text, 
              assignee: assignee 
            }
          }.to_json
        }

        post('/tasks', options.merge!(@@auth))
      end

      # { project: '<ID>' } or { workspace: '<ID>' }
      def list(params)
        options = {}

        entity = params.shift
        get("/#{entity.first.to_s}s/#{entity.last}/tasks", options.merge!(@@auth))
      end

      def done(task)
        options = { 
          body: {
            data: {
                completed: true
            }
          }.to_json
        }

        put("/tasks/#{task}", options.merge!(@@auth))
      end
    end
  end
end
