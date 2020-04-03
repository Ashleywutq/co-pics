class SessionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "session_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    session = Session.find(data["id"])
    session.update!(filter: data["filter"])
    ActionCable.server.broadcast("session_#{data['id']}", data)
  end
end
