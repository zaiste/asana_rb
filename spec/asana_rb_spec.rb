# encoding: utf-8
require 'spec_helper'
include WebMock::API

describe AsanaRb do
  describe AsanaRb::Base do
    it "should set API key" do
      AsanaRb::Base.api_key('foobar').should eq({ basic_auth: { username: 'foobar', password: '' } })
    end
  end

  describe AsanaRb::Task do
    AsanaRb::Base.api_key('foobar')

    req = stub_request(:post, "http://foobar:@app.asana.com/api/1.0/tasks").
        with(body: { data: { workspace: '123456', name: 'New task', assignee: 'foobar@dot.com' } })

    AsanaRb::Task.new('New task', '123456', 'foobar@dot.com')
  
    #a_request(:post, "www.example.com").
        #with(body: { data: { workspace: '111111', name: 'New task', assignee: 'foobar@dot.com' } }).
        #should have_been_made
  end
end
