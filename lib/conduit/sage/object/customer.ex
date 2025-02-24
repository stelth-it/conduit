defmodule Elixir.Conduit.Sage.Object.Customer do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO CUSTOMERID NAME ENTITY PARENTKEY PARENTID PARENTNAME DISPLAYCONTACT.CONTACTNAME DISPLAYCONTACT.COMPANYNAME DISPLAYCONTACT.PREFIX DISPLAYCONTACT.FIRSTNAME DISPLAYCONTACT.LASTNAME DISPLAYCONTACT.INITIAL DISPLAYCONTACT.PRINTAS DISPLAYCONTACT.TAXABLE DISPLAYCONTACT.TAXGROUP DISPLAYCONTACT.TAXSOLUTIONID DISPLAYCONTACT.TAXSCHEDULE DISPLAYCONTACT.TAXID DISPLAYCONTACT.SIRET DISPLAYCONTACT.LEGAL_CATEGORY DISPLAYCONTACT.MAIN_ACTIVITY DISPLAYCONTACT.TYPE_OF_COMPANY DISPLAYCONTACT.REGISTERED_CAPITAL DISPLAYCONTACT.VAT_REGIME DISPLAYCONTACT.PHONE1 DISPLAYCONTACT.PHONE2 DISPLAYCONTACT.CELLPHONE DISPLAYCONTACT.PAGER DISPLAYCONTACT.FAX DISPLAYCONTACT.TAXIDVALIDATIONDATE DISPLAYCONTACT.GSTREGISTERED DISPLAYCONTACT.TAXCOMPANYNAME DISPLAYCONTACT.TAXADDRESS DISPLAYCONTACT.EMAIL1 DISPLAYCONTACT.EMAIL2 DISPLAYCONTACT.URL1 DISPLAYCONTACT.URL2 DISPLAYCONTACT.VISIBLE DISPLAYCONTACT.MAILADDRESS.ADDRESS1 DISPLAYCONTACT.MAILADDRESS.ADDRESS2 DISPLAYCONTACT.MAILADDRESS.ADDRESS3 DISPLAYCONTACT.MAILADDRESS.CITY DISPLAYCONTACT.MAILADDRESS.STATE DISPLAYCONTACT.MAILADDRESS.ZIP DISPLAYCONTACT.MAILADDRESS.COUNTRY DISPLAYCONTACT.MAILADDRESS.COUNTRYCODE DISPLAYCONTACT.MAILADDRESS.LATITUDE DISPLAYCONTACT.MAILADDRESS.LONGITUDE DISPLAYCONTACT.STATUS TERMNAME TERMVALUE CUSTREPID CUSTREPNAME RESALENO TAXID DATEVID CREDITLIMIT TOTALDUE COMMENTS ACCOUNTLABEL ARACCOUNT ARACCOUNTTITLE LAST_INVOICEDATE LAST_STATEMENTDATE DELIVERY_OPTIONS TERRITORYID TERRITORYNAME SHIPPINGMETHOD CUSTTYPE GLGRPKEY GLGROUP PRICESCHEDULE DISCOUNT PRICELIST VSOEPRICELIST CURRENCY CONTACTINFO.CONTACTNAME CONTACTINFO.PREFIX CONTACTINFO.FIRSTNAME CONTACTINFO.INITIAL CONTACTINFO.LASTNAME CONTACTINFO.COMPANYNAME CONTACTINFO.PRINTAS CONTACTINFO.PHONE1 CONTACTINFO.PHONE2 CONTACTINFO.CELLPHONE CONTACTINFO.PAGER CONTACTINFO.FAX CONTACTINFO.EMAIL1 CONTACTINFO.EMAIL2 CONTACTINFO.URL1 CONTACTINFO.URL2 CONTACTINFO.VISIBLE CONTACTINFO.MAILADDRESS.ADDRESS1 CONTACTINFO.MAILADDRESS.ADDRESS2 CONTACTINFO.MAILADDRESS.ADDRESS3 CONTACTINFO.MAILADDRESS.CITY CONTACTINFO.MAILADDRESS.STATE CONTACTINFO.MAILADDRESS.ZIP CONTACTINFO.MAILADDRESS.COUNTRY CONTACTINFO.MAILADDRESS.COUNTRYCODE SHIPTO.CONTACTNAME SHIPTO.PREFIX SHIPTO.FIRSTNAME SHIPTO.INITIAL SHIPTO.LASTNAME SHIPTO.COMPANYNAME SHIPTO.PRINTAS SHIPTO.TAXABLE SHIPTO.TAXGROUP SHIPTO.TAXSOLUTIONID SHIPTO.TAXSCHEDULE SHIPTO.TAXID SHIPTO.PHONE1 SHIPTO.PHONE2 SHIPTO.CELLPHONE SHIPTO.PAGER SHIPTO.FAX SHIPTO.EMAIL1 SHIPTO.EMAIL2 SHIPTO.URL1 SHIPTO.URL2 SHIPTO.VISIBLE SHIPTO.MAILADDRESS.ADDRESS1 SHIPTO.MAILADDRESS.ADDRESS2 SHIPTO.MAILADDRESS.ADDRESS3 SHIPTO.MAILADDRESS.CITY SHIPTO.MAILADDRESS.STATE SHIPTO.MAILADDRESS.ZIP SHIPTO.MAILADDRESS.COUNTRY SHIPTO.MAILADDRESS.COUNTRYCODE BILLTO.CONTACTNAME BILLTO.PREFIX BILLTO.FIRSTNAME BILLTO.INITIAL BILLTO.LASTNAME BILLTO.COMPANYNAME BILLTO.PRINTAS BILLTO.TAXABLE BILLTO.TAXGROUP BILLTO.TAXSOLUTIONID BILLTO.TAXSCHEDULE BILLTO.PHONE1 BILLTO.PHONE2 BILLTO.CELLPHONE BILLTO.PAGER BILLTO.FAX BILLTO.EMAIL1 BILLTO.EMAIL2 BILLTO.URL1 BILLTO.URL2 BILLTO.VISIBLE BILLTO.MAILADDRESS.ADDRESS1 BILLTO.MAILADDRESS.ADDRESS2 BILLTO.MAILADDRESS.ADDRESS3 BILLTO.MAILADDRESS.CITY BILLTO.MAILADDRESS.STATE BILLTO.MAILADDRESS.ZIP BILLTO.MAILADDRESS.COUNTRY BILLTO.MAILADDRESS.COUNTRYCODE STATUS ONETIME CUSTMESSAGEID ONHOLD PRCLST_OVERRIDE OEPRCLSTKEY OEPRICESCHEDKEY ENABLEONLINECARDPAYMENT ENABLEONLINEACHPAYMENT VSOEPRCLSTKEY WHENMODIFIED ARINVOICEPRINTTEMPLATEID OEQUOTEPRINTTEMPLATEID OEORDERPRINTTEMPLATEID OELISTPRINTTEMPLATEID OEINVOICEPRINTTEMPLATEID OEADJPRINTTEMPLATEID OEOTHERPRINTTEMPLATEID WHENCREATED CREATEDBY MODIFIEDBY OBJECTRESTRICTION DISPLAYCONTACTKEY CONTACTKEY SHIPTOKEY BILLTOKEY CUSTREPKEY SHIPVIAKEY TERRITORYKEY TERMSKEY ACCOUNTLABELKEY ACCOUNTKEY CUSTTYPEKEY PRICESCHEDULEKEY OFFSETACCOUNTKEY OFFSETGLACCOUNTNO OFFSETGLACCOUNTNOTITLE ADVBILLBY ADVBILLBYTYPE SUPDOCID RETAINAGEPERCENTAGE EMAILOPTIN SUBSCRIPTIONENDDATE SUPDOCKEY CUSTMESSAGE.MESSAGE MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME CUSTOMER_FILEMAKER_ID NIS ISO_ACCOUNT RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "CUSTOMER" do
    field(:RECORDNO, :integer)

    field(:CUSTOMERID, :string)

    field(:NAME, :string)

    field(:ENTITY, :string)

    field(:PARENTKEY, :integer)

    field(:PARENTID, :string)

    field(:PARENTNAME, :string)

    field(:"DISPLAYCONTACT.CONTACTNAME", :string)

    field(:"DISPLAYCONTACT.COMPANYNAME", :string)

    field(:"DISPLAYCONTACT.PREFIX", :string)

    field(:"DISPLAYCONTACT.FIRSTNAME", :string)

    field(:"DISPLAYCONTACT.LASTNAME", :string)

    field(:"DISPLAYCONTACT.INITIAL", :string)

    field(:"DISPLAYCONTACT.PRINTAS", :string)

    field(:"DISPLAYCONTACT.TAXABLE", :boolean)

    field(:"DISPLAYCONTACT.TAXGROUP", :string)

    field(:"DISPLAYCONTACT.TAXSOLUTIONID", :string)

    field(:"DISPLAYCONTACT.TAXSCHEDULE", :string)

    field(:"DISPLAYCONTACT.TAXID", :string)

    field(:"DISPLAYCONTACT.SIRET", :string)

    field(:"DISPLAYCONTACT.LEGAL_CATEGORY", :string)

    field(:"DISPLAYCONTACT.MAIN_ACTIVITY", :string)

    field(:"DISPLAYCONTACT.TYPE_OF_COMPANY", :string)

    field(:"DISPLAYCONTACT.REGISTERED_CAPITAL", :integer)

    field(:"DISPLAYCONTACT.VAT_REGIME", :string)

    field(:"DISPLAYCONTACT.PHONE1", :string)

    field(:"DISPLAYCONTACT.PHONE2", :string)

    field(:"DISPLAYCONTACT.CELLPHONE", :string)

    field(:"DISPLAYCONTACT.PAGER", :string)

    field(:"DISPLAYCONTACT.FAX", :string)

    field(:"DISPLAYCONTACT.TAXIDVALIDATIONDATE", Conduit.Sage.Object.Date)

    field(:"DISPLAYCONTACT.GSTREGISTERED", :string)

    field(:"DISPLAYCONTACT.TAXCOMPANYNAME", :string)

    field(:"DISPLAYCONTACT.TAXADDRESS", :string)

    field(:"DISPLAYCONTACT.EMAIL1", :string)

    field(:"DISPLAYCONTACT.EMAIL2", :string)

    field(:"DISPLAYCONTACT.URL1", :string)

    field(:"DISPLAYCONTACT.URL2", :string)

    field(:"DISPLAYCONTACT.VISIBLE", :boolean)

    field(:"DISPLAYCONTACT.MAILADDRESS.ADDRESS1", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.ADDRESS2", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.ADDRESS3", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.CITY", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.STATE", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.ZIP", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.COUNTRY", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.COUNTRYCODE", :string)

    field(:"DISPLAYCONTACT.MAILADDRESS.LATITUDE", Conduit.Sage.Object.Float)

    field(:"DISPLAYCONTACT.MAILADDRESS.LONGITUDE", Conduit.Sage.Object.Float)

    field(:"DISPLAYCONTACT.STATUS", :string)

    field(:TERMNAME, :string)

    field(:TERMVALUE, :string)

    field(:CUSTREPID, :string)

    field(:CUSTREPNAME, :string)

    field(:RESALENO, :string)

    field(:TAXID, :string)

    field(:DATEVID, :string)

    field(:CREDITLIMIT, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:COMMENTS, :string)

    field(:ACCOUNTLABEL, :string)

    field(:ARACCOUNT, :string)

    field(:ARACCOUNTTITLE, :string)

    field(:LAST_INVOICEDATE, Conduit.Sage.Object.Date)

    field(:LAST_STATEMENTDATE, Conduit.Sage.Object.Date)

    field(:DELIVERY_OPTIONS, :string)

    field(:TERRITORYID, :string)

    field(:TERRITORYNAME, :string)

    field(:SHIPPINGMETHOD, :string)

    field(:CUSTTYPE, :string)

    field(:GLGRPKEY, :integer)

    field(:GLGROUP, :string)

    field(:PRICESCHEDULE, :string)

    field(:DISCOUNT, Conduit.Sage.Object.Float)

    field(:PRICELIST, :string)

    field(:VSOEPRICELIST, :string)

    field(:CURRENCY, :string)

    field(:"CONTACTINFO.CONTACTNAME", :string)

    field(:"CONTACTINFO.PREFIX", :string)

    field(:"CONTACTINFO.FIRSTNAME", :string)

    field(:"CONTACTINFO.INITIAL", :string)

    field(:"CONTACTINFO.LASTNAME", :string)

    field(:"CONTACTINFO.COMPANYNAME", :string)

    field(:"CONTACTINFO.PRINTAS", :string)

    field(:"CONTACTINFO.PHONE1", :string)

    field(:"CONTACTINFO.PHONE2", :string)

    field(:"CONTACTINFO.CELLPHONE", :string)

    field(:"CONTACTINFO.PAGER", :string)

    field(:"CONTACTINFO.FAX", :string)

    field(:"CONTACTINFO.EMAIL1", :string)

    field(:"CONTACTINFO.EMAIL2", :string)

    field(:"CONTACTINFO.URL1", :string)

    field(:"CONTACTINFO.URL2", :string)

    field(:"CONTACTINFO.VISIBLE", :boolean)

    field(:"CONTACTINFO.MAILADDRESS.ADDRESS1", :string)

    field(:"CONTACTINFO.MAILADDRESS.ADDRESS2", :string)

    field(:"CONTACTINFO.MAILADDRESS.ADDRESS3", :string)

    field(:"CONTACTINFO.MAILADDRESS.CITY", :string)

    field(:"CONTACTINFO.MAILADDRESS.STATE", :string)

    field(:"CONTACTINFO.MAILADDRESS.ZIP", :string)

    field(:"CONTACTINFO.MAILADDRESS.COUNTRY", :string)

    field(:"CONTACTINFO.MAILADDRESS.COUNTRYCODE", :string)

    field(:"SHIPTO.CONTACTNAME", :string)

    field(:"SHIPTO.PREFIX", :string)

    field(:"SHIPTO.FIRSTNAME", :string)

    field(:"SHIPTO.INITIAL", :string)

    field(:"SHIPTO.LASTNAME", :string)

    field(:"SHIPTO.COMPANYNAME", :string)

    field(:"SHIPTO.PRINTAS", :string)

    field(:"SHIPTO.TAXABLE", :boolean)

    field(:"SHIPTO.TAXGROUP", :string)

    field(:"SHIPTO.TAXSOLUTIONID", :string)

    field(:"SHIPTO.TAXSCHEDULE", :string)

    field(:"SHIPTO.TAXID", :string)

    field(:"SHIPTO.PHONE1", :string)

    field(:"SHIPTO.PHONE2", :string)

    field(:"SHIPTO.CELLPHONE", :string)

    field(:"SHIPTO.PAGER", :string)

    field(:"SHIPTO.FAX", :string)

    field(:"SHIPTO.EMAIL1", :string)

    field(:"SHIPTO.EMAIL2", :string)

    field(:"SHIPTO.URL1", :string)

    field(:"SHIPTO.URL2", :string)

    field(:"SHIPTO.VISIBLE", :boolean)

    field(:"SHIPTO.MAILADDRESS.ADDRESS1", :string)

    field(:"SHIPTO.MAILADDRESS.ADDRESS2", :string)

    field(:"SHIPTO.MAILADDRESS.ADDRESS3", :string)

    field(:"SHIPTO.MAILADDRESS.CITY", :string)

    field(:"SHIPTO.MAILADDRESS.STATE", :string)

    field(:"SHIPTO.MAILADDRESS.ZIP", :string)

    field(:"SHIPTO.MAILADDRESS.COUNTRY", :string)

    field(:"SHIPTO.MAILADDRESS.COUNTRYCODE", :string)

    field(:"BILLTO.CONTACTNAME", :string)

    field(:"BILLTO.PREFIX", :string)

    field(:"BILLTO.FIRSTNAME", :string)

    field(:"BILLTO.INITIAL", :string)

    field(:"BILLTO.LASTNAME", :string)

    field(:"BILLTO.COMPANYNAME", :string)

    field(:"BILLTO.PRINTAS", :string)

    field(:"BILLTO.TAXABLE", :boolean)

    field(:"BILLTO.TAXGROUP", :string)

    field(:"BILLTO.TAXSOLUTIONID", :string)

    field(:"BILLTO.TAXSCHEDULE", :string)

    field(:"BILLTO.PHONE1", :string)

    field(:"BILLTO.PHONE2", :string)

    field(:"BILLTO.CELLPHONE", :string)

    field(:"BILLTO.PAGER", :string)

    field(:"BILLTO.FAX", :string)

    field(:"BILLTO.EMAIL1", :string)

    field(:"BILLTO.EMAIL2", :string)

    field(:"BILLTO.URL1", :string)

    field(:"BILLTO.URL2", :string)

    field(:"BILLTO.VISIBLE", :boolean)

    field(:"BILLTO.MAILADDRESS.ADDRESS1", :string)

    field(:"BILLTO.MAILADDRESS.ADDRESS2", :string)

    field(:"BILLTO.MAILADDRESS.ADDRESS3", :string)

    field(:"BILLTO.MAILADDRESS.CITY", :string)

    field(:"BILLTO.MAILADDRESS.STATE", :string)

    field(:"BILLTO.MAILADDRESS.ZIP", :string)

    field(:"BILLTO.MAILADDRESS.COUNTRY", :string)

    field(:"BILLTO.MAILADDRESS.COUNTRYCODE", :string)

    field(:STATUS, :string)

    field(:ONETIME, :boolean)

    field(:CUSTMESSAGEID, :string)

    field(:ONHOLD, :boolean)

    field(:PRCLST_OVERRIDE, :string)

    field(:OEPRCLSTKEY, :integer)

    field(:OEPRICESCHEDKEY, :integer)

    field(:ENABLEONLINECARDPAYMENT, :boolean)

    field(:ENABLEONLINEACHPAYMENT, :boolean)

    field(:VSOEPRCLSTKEY, :integer)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:ARINVOICEPRINTTEMPLATEID, :string)

    field(:OEQUOTEPRINTTEMPLATEID, :string)

    field(:OEORDERPRINTTEMPLATEID, :string)

    field(:OELISTPRINTTEMPLATEID, :string)

    field(:OEINVOICEPRINTTEMPLATEID, :string)

    field(:OEADJPRINTTEMPLATEID, :string)

    field(:OEOTHERPRINTTEMPLATEID, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:OBJECTRESTRICTION, :string)

    field(:DISPLAYCONTACTKEY, :integer)

    field(:CONTACTKEY, :integer)

    field(:SHIPTOKEY, :integer)

    field(:BILLTOKEY, :integer)

    field(:CUSTREPKEY, :integer)

    field(:SHIPVIAKEY, :integer)

    field(:TERRITORYKEY, :string)

    field(:TERMSKEY, :integer)

    field(:ACCOUNTLABELKEY, :integer)

    field(:ACCOUNTKEY, :integer)

    field(:CUSTTYPEKEY, :integer)

    field(:PRICESCHEDULEKEY, :string)

    field(:OFFSETACCOUNTKEY, :integer)

    field(:OFFSETGLACCOUNTNO, :string)

    field(:OFFSETGLACCOUNTNOTITLE, :string)

    field(:ADVBILLBY, :integer)

    field(:ADVBILLBYTYPE, :string)

    field(:SUPDOCID, :string)

    field(:RETAINAGEPERCENTAGE, Conduit.Sage.Object.Float)

    field(:EMAILOPTIN, :boolean)

    field(:ACTIVATIONDATE, Conduit.Sage.Object.Date)

    field(:SUBSCRIPTIONENDDATE, Conduit.Sage.Object.Date)

    field(:SUPDOCKEY, :integer)

    field(:"CUSTMESSAGE.MESSAGE", :string)

    field(:MEGAENTITYKEY, :integer)

    field(:MEGAENTITYID, :string)

    field(:MEGAENTITYNAME, :string)

    field(:CUSTOMER_FILEMAKER_ID, :string)

    field(:NIS, :boolean)

    field(:ISO_ACCOUNT, :boolean)

    field(:RECORD_URL, :string)

    field(:Rcip, :string)

    field(:Rcip_item, :string)

    field(:Rcip_asset, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "CUSTOMER")
  end

  def struct_from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
    |> apply_action!(:received)
  end

  def cast_from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
  end

  def field_list(:atoms) do
    @field_names
    |> Enum.map(fn d ->
      d
      |> String.downcase()
      |> String.to_atom()
    end)
  end

  def field_list(:strings) do
    @field_names
  end

  defimpl Conduit.Sage.Object.Queryable, for: __MODULE__ do
    def struct_from_api(t, params) do
      Elixir.Conduit.Sage.Object.Customer.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Customer.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Customer.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Customer.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Customer.field_list(:strings)

    def table_name(_t), do: "CUSTOMER"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
