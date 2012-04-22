module AsanaRb
  class Task < Base
    def initialize(text, workspace, assignee)
      @options = { 
        body: {
          data: { 
            workspace: workspace, 
            name: text, 
            assignee: assignee 
          }
        }.to_json
      }

      self.class.post('/tasks', @options.merge!(@@auth))
    end
  end
end
