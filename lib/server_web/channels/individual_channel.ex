defmodule ServerWeb.IndividualChannel do
  use ServerWeb, :channel

  @impl true
  def join("individual:message", payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def join("individual:1", payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def join("individual:2", payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def join("individual:3", payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def join("individual:lobby", payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (individual:lobby).
  @impl true
  def handle_in("shout", payload, socket) do
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end

  @impl true
  def handle_in("individual:message", payload, socket) do
    broadcast(socket, "individual:message", payload)
    {:noreply, socket}
  end

  @impl true
  def handle_in("individual:1", payload, socket) do
    broadcast(socket, "individual:1", payload)
    {:noreply, socket}
  end

  @impl true
  def handle_in("individual:2", payload, socket) do
    broadcast(socket, "individual:2", payload)
    {:noreply, socket}
  end

  @impl true
  def handle_in("individual:3", payload, socket) do
    broadcast(socket, "individual:3", payload)
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
