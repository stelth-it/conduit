defmodule Conduit.QAD.Inference do
  @moduledoc """
  Functions for generating inferences based off of QAD data.
  For now we are only using OpenAI as our inference provider.
  """
  alias LangChain.Chains.LLMChain
  alias LangChain.ChatModels.ChatOpenAI
  alias LangChain.Message
  alias LangChain.MessageProcessors.JsonProcessor

  def generate_table_suggestions(query, context_documents) do
    context_documents =
      List.wrap(context_documents)
      |> Enum.map(&Message.ContentPart.new!(%{type: "text", content: &1}))

    {:ok, updated_chain} =
      %{llm: ChatOpenAI.new!(%{model: "gpt-4o"})}
      |> LLMChain.new!()
      |> LLMChain.add_message(
        Message.new_system!("""
        You are an expert in SQL and financial data analysis. 
        You are given a question and collection of files describing 
        the SQL tables that are available.  Use this information to 
        genearte a report for the user describing how they could 
        use the tables to answer their question.

        Format your response as a markdown document with seperate headers for 
        each suggested table.
        """)
      )
      |> LLMChain.add_messages([
        Message.new_user!(context_documents)
      ])
      |> LLMChain.add_message(Message.new_user!(query))
      |> LLMChain.run()

    updated_chain.last_message.content
  end

  @doc """
  Suggests a SQL query given the `query_description` from the 
  user and the `context_document` which should provide 
  a description of a table that should be used to answer the
  users question.
  """
  def generate_sql_query(query_description, context_documents) do
    context_documents =
      List.wrap(context_documents)
      |> Enum.map(&Message.ContentPart.new!(%{type: "text", content: &1}))

    {:ok, updated_chain} =
      %{llm: ChatOpenAI.new!(%{model: "gpt-4o"})}
      |> LLMChain.new!()
      |> LLMChain.add_message(
        Message.new_system!("""
        You are an expert in SQL and financial data analysis.
        You are assisting a user to write effective postgres SQL queries
        based on their question and the provided documenation 
        of the table(s) that should be most helpful in answering 
        their question.

        Provide at least three different SQL queries trying to use data 
        from different tables in each to answer the users question.

        Format your response as JSON in the following format:
        {
          explanation: <explanation of query here>,
          sql_query: <list of sql queries text without whitespace here>
        }
        """)
      )
      |> LLMChain.add_messages([
        Message.new_user!(context_documents)
      ])
      |> LLMChain.add_message(Message.new_user!(query_description))
      |> LLMChain.message_processors([JsonProcessor.new!(~r/```json(.*)```/s)])
      |> LLMChain.run()

    updated_chain.last_message.processed_content
  end
end
