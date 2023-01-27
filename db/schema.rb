# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_17_103850) do

  create_table "AGENTMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "AGENTCODE", limit: 10
    t.string "AGENTNAME", limit: 30
    t.string "BROKERCODE", limit: 10
    t.string "ADDRESS1", limit: 30
    t.string "ADDRESS2", limit: 30
    t.string "CITY", limit: 30
    t.string "STATE", limit: 2
    t.string "ZIP", limit: 9
    t.string "COUNTRY", limit: 2
    t.string "PHONENUMBER", limit: 10
    t.string "EXTENSION", limit: 10
    t.string "FAXNUMBER", limit: 10
    t.string "CELLNUMBER", limit: 10
    t.string "PAGERNUMBER", limit: 10
    t.string "EMAILADDRESS", limit: 80
    t.string "FIELD1", limit: 40
    t.string "FIELD2", limit: 40
    t.string "FIELD3", limit: 40
    t.string "FIELD4", limit: 40
    t.string "FIELD5", limit: 40
    t.string "FIELD6", limit: 40
  end

  create_table "BROKERMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "BROKERCODE", limit: 10
    t.string "BROKERNAME", limit: 30
    t.string "ADDRESS1", limit: 30
    t.string "ADDRESS2", limit: 30
    t.string "CITY", limit: 30
    t.string "STATE", limit: 2
    t.string "ZIP", limit: 9
    t.string "COUNTRY", limit: 2
    t.string "PHONENUMBER", limit: 10
    t.string "EXTENSION", limit: 10
    t.string "FAXNUMBER", limit: 10
    t.string "WEBSITE", limit: 50
    t.string "EMAILADDRESS", limit: 80
    t.string "FIELD1", limit: 40
    t.string "FIELD2", limit: 40
    t.string "FIELD3", limit: 40
    t.string "FIELD4", limit: 40
    t.string "FIELD5", limit: 40
    t.string "FIELD6", limit: 40
  end

  create_table "CATEGORYMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "CATEGORYCODE", limit: 3
    t.string "DESCRIPTION", limit: 15
  end

  create_table "CONTRACTMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "CONTRACTNUMBER", limit: 6
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "MODELCODE", limit: 3
    t.string "ELEVATIONCODE", limit: 3
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "VENDORNUMBER", limit: 6
    t.date "EXPIRATIONDATE"
    t.string "OPTIONCODE", limit: 5
    t.string "STAGECODE", limit: 1
    t.string "COMBINEWITHCODE", limit: 5
    t.string "SCOPE", limit: 300
    t.string "UPDATEFLAG", limit: 1
    t.date "EFFECTIVEDATE"
    t.string "TAXABLE", limit: 1
    t.string "TERMINATOR", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
  end

  create_table "COSTCODEMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "DESCRIPTION", limit: 29
    t.string "INACTIVE", limit: 1
    t.string "STAGECODE", limit: 1
  end

  create_table "CUSTDEPOSITDTL", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.date "DEPOSIT_DATE"
    t.string "SEQUENCENUMBER", limit: 5
    t.string "REMARKS", limit: 25
    t.string "DEPOSITTYPE", limit: 1
    t.string "BATCHNUM", limit: 10
    t.decimal "AMOUNT", precision: 18, scale: 8
  end

  create_table "DataLoadStatus", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.string "Status", limit: 20
    t.string "Refreshed_Mode", limit: 100
    t.string "Environment", limit: 45
    t.string "Jar_File_Status", limit: 25
  end

  create_table "DevMaster", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "DESCRIPTION", limit: 40
    t.string "DIVISIONCODE", limit: 3
    t.string "INACTIVE", limit: 1
    t.string "SUPERINTENDENT", limit: 30
    t.string "SUPERADDRESS1", limit: 30
    t.string "SUPERADDRESS2", limit: 30
    t.string "SUPERCITY", limit: 30
    t.string "SUPERSTATE", limit: 2
    t.string "SUPERZIP", limit: 9
    t.string "SUPERCOUNTRY", limit: 2
    t.string "SUPERPHONE1", limit: 10
    t.string "SUPERPHONE2", limit: 10
    t.string "SUPERFAX", limit: 10
    t.string "SUPERPAGER", limit: 10
    t.string "SUPERCELL", limit: 10
    t.string "SUPEREMAIL", limit: 80
    t.string "SALESMANAGER", limit: 30
    t.string "SALESADDRESS1", limit: 30
    t.string "SALESADDRESS2", limit: 30
    t.string "SALESCITY", limit: 30
    t.string "SALESSTATE", limit: 2
    t.string "SALESZIP", limit: 9
    t.string "SALESCOUNTRY", limit: 2
    t.string "SALESPHONE1", limit: 10
    t.string "SALESPHONE2", limit: 10
    t.string "SALESFAX", limit: 10
    t.string "SALESPAGER", limit: 10
    t.string "SALESCELL", limit: 10
    t.string "SALESEMAIL", limit: 80
    t.string "CCSALESEMAILS", limit: 160
    t.string "SALESPREAPPEMAIL", limit: 80
    t.string "CCSALESPREAPP", limit: 160
    t.string "PURCHASEPRIMARY", limit: 30
    t.string "PURCHASEPHONE", limit: 10
    t.string "PURCHASEFAX", limit: 10
    t.string "PURCHASECELL", limit: 10
    t.string "PURCHASEEMAIL", limit: 80
    t.string "CCPURCHASEEMAILS", limit: 160
    t.string "SALESBITMAP", limit: 60
    t.string "WARRANTYMANAGER", limit: 30
    t.string "WARRANTYADDRESS1", limit: 30
    t.string "WARRANTYADDRESS2", limit: 30
    t.string "WARRANTYCITY", limit: 30
    t.string "WARRANTYSTATE", limit: 2
    t.string "WARRANTYZIP", limit: 9
    t.string "WARRANTYCOUNTRY", limit: 2
    t.string "WARRANTYPHONE1", limit: 10
    t.string "WARRANTYPHONE2", limit: 10
    t.string "WARRANTYFAX", limit: 10
    t.string "WARRANTYPAGER", limit: 10
    t.string "WARRANTYCELL", limit: 10
    t.string "WARRANTYEMAIL", limit: 80
    t.string "SONOTIFYFLAG", limit: 1
    t.string "UNUSED", limit: 1
    t.string "ITKPUBLISH", limit: 1
    t.string "ITKPROSPECTMAIL", limit: 50
    t.string "EXECEMAIL", limit: 50
    t.string "TERMINATOR", limit: 1
    t.decimal "BASEDEPPERCENT", precision: 18, scale: 8
    t.decimal "OPTIONDEPPERCENT", precision: 18, scale: 8
    t.decimal "SALESTAXPERCENT", precision: 18, scale: 8
    t.string "PARENTCO", limit: 3
    t.string "PARENTDEV", limit: 2
    t.string "CONTRACTPARENTCO", limit: 3
    t.string "CONTRACTPARENTDE", limit: 2
    t.string "PROJECTMGR", limit: 40
  end

  create_table "ELEVATIONMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "MODELCODE", limit: 3
    t.string "ELEVATIONCODE", limit: 3
    t.string "DESCRIPTION", limit: 90
    t.string "SQUAREFOOTAGE", limit: 10
    t.decimal "SQUAREFOOTAGE2", precision: 18, scale: 8
    t.decimal "SQUAREFOOTAGE3", precision: 18, scale: 8
    t.decimal "SALESPRICE", precision: 20, scale: 8
    t.string "BITMAPFILE", limit: 60
    t.string "SALESRESTRICT", limit: 1
    t.string "INACTIVE", limit: 1
    t.decimal "BEDROOMS", precision: 18, scale: 8
    t.decimal "BATHROOMS", precision: 18, scale: 8
    t.decimal "HALFBATHROOMS", precision: 18, scale: 8
  end

  create_table "GIS_LotsInfo", primary_key: ["id", "Unique_ID"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Community", limit: 225
    t.string "Builder", limit: 45
    t.string "Unique_ID", limit: 45, null: false
    t.string "Status", limit: 225
    t.string "Community_ID", limit: 225
    t.integer "pic_count_lotinsight"
    t.integer "pic_count_lotbuzz", default: 0
    t.integer "doc_count_lotinsight", default: 0
    t.integer "doc_count_lotbuzz"
    t.string "SVG_ID", limit: 225
    t.string "Phase_Name", limit: 225
    t.string "House_Type", limit: 225
    t.string "Lot_Number", limit: 225
    t.bigint "Floor_Type_Id"
    t.integer "Plan_Id"
    t.text "Key_Image_Url_LB"
    t.string "updated_at_timestamp"
    t.string "Filing"
    t.integer "id", null: false, auto_increment: true
    t.integer "Lot_Buzz_Status"
    t.string "Floor_Plan_Id", limit: 450
    t.string "Sale_Price", limit: 45
    t.date "Estimated_Completion_Date"
    t.string "Lot_Size", limit: 45
    t.string "Description", limit: 45
    t.string "Lot_Type_Id", limit: 45
    t.integer "Key_Image_Id_LB"
    t.text "Key_Image_Url_LI"
    t.text "Address", limit: 4294967295, collation: "utf8_general_ci"
    t.string "HouseNumber", limit: 24
    t.string "Phase", limit: 24
    t.string "Block", limit: 24
    t.string "Development_Code", limit: 2
    t.string "Lot_SF", limit: 10
    t.string "Street_Width", limit: 10
    t.string "Developer", limit: 24
    t.float "Lot_Cost", limit: 53
    t.float "Lot_Basis", limit: 53
    t.float "Premium", limit: 53
    t.float "COOP_Marketing_Fee", limit: 53
    t.string "Lot_Lender", limit: 4
    t.string "Elevation"
    t.date "Estimated_Settlement_Date"
    t.string "Model_Status"
    t.string "Completed_Specs"
    t.string "Lot_Width"
    t.string "Last_Completed_Activity"
    t.date "Last_Completed_Activity_Date"
    t.string "Last_Completed_Activity_Description"
    t.integer "Total_Slippage"
    t.float "Variances_To_Date", limit: 53
    t.float "Estimated_Cost", limit: 53
    t.float "YTD_Costs", limit: 53
    t.float "YTD_Loan_Draws", limit: 53
    t.float "Construction_Loan_Commitment", limit: 53
    t.string "Landscaped"
    t.string "SPEC"
    t.integer "SPEC_Aging"
    t.string "Construction_Schedule_Status"
    t.string "Construction_VPO_Status"
    t.integer "Lot_Status"
    t.string "Service_Rep_Name"
    t.string "Buyer_Name"
    t.string "Total_Warranty_Issues"
    t.integer "Outstanding_Warranty_Issues"
    t.integer "Days_Warranty_Issues_Aged"
    t.string "Outstanding_Service_Orders"
    t.date "Release_Sale_Date"
    t.date "Contract_Date"
    t.date "Ratified_Date"
    t.date "Settlement_Date"
    t.text "Model_Name"
    t.string "Model_Code"
    t.string "Lot_Tracking_Val"
    t.string "Model_Status_Val"
    t.string "Completed_Specs_Val"
    t.float "Lot_Premium_Val"
    t.string "Construction_Schedule_Status_Val"
    t.string "Construction_VPO_Status_Val"
    t.string "Lot_Status_Val"
    t.string "Outstanding_Service_Orders_Val"
    t.float "Dev_Costs_By_Lot", limit: 53
    t.integer "Lot_Premium"
    t.text "Next_Activity", limit: 4294967295
    t.float "Warranty_Costs", limit: 53
    t.string "Rp_SPEC_or_MODEL"
    t.date "Rp_QC_Stake_Date"
    t.integer "Rp_Aging"
    t.float "Rp_Retail_Price", limit: 53
    t.float "Rp_Discount", limit: 53
    t.float "Rp_Sales_Price", limit: 53
    t.float "Rp_GM_Percent", limit: 53
    t.string "Rp_Construction_Lender"
    t.float "Rp_Loan_Amount", limit: 53
    t.string "Community_Description"
    t.date "New_Start_Stake_Date"
    t.float "Rp_Deposit_Balance", limit: 53
    t.string "Lot_Buzz_Status_Val"
    t.text "Floor_Plan_Name", limit: 4294967295
    t.integer "avbl_lts_changed", default: 0
    t.float "actual_cost_to_date", limit: 53
    t.float "customer_deposits_received", limit: 53
    t.float "total_loan_drawn_to_date", limit: 53
    t.float "total_loan_commitment", limit: 53
    t.float "base_sales"
    t.float "committed_costs_to_date"
    t.float "current_budget", limit: 53
    t.float "option_sales"
    t.float "Incentives", limit: 53
    t.string "Elevation_Description"
    t.string "Model_Description"
    t.string "Total_Options"
    t.string "Incentive_Description_1"
    t.string "Incentive_Description_2"
    t.string "Incentive_Description_3"
    t.float "Incentive_1"
    t.float "Incentive_2"
    t.float "Incentive_3"
    t.string "Salesperson_1"
    t.string "Salesperson_2"
    t.string "Salesperson_3"
    t.string "Coop_Agent"
    t.string "Coop_Broker"
    t.float "Coop_Agent_Fee"
    t.float "Coop_Broker_Fee"
    t.string "Mortgage_Lender"
    t.float "Contingency_Fee_Paid"
    t.float "Points"
    t.string "Title_Company"
    t.string "Loan_Officer"
    t.float "Closing_Costs"
    t.float "Closing_Costs_Credit"
    t.string "Purchase_Order_Release_Stage"
    t.string "Work_Order_Release_Stage"
    t.string "Orientation"
    t.string "salesperson_firstname"
    t.string "salesperson_lastname"
    t.float "Projected_Cost_at_Completion", limit: 53
    t.float "Projected_Gross_Profit"
    t.date "Warranty_Date"
    t.string "Loan_Number"
    t.string "Loan_Bank_Name"
    t.integer "Model_Elevation_Id"
    t.string "BUYERSNAME2"
    t.string "BUYERSNAME3"
    t.string "Address1"
    t.string "Address2"
    t.string "Address3"
    t.bigint "HOMEPHONE"
    t.bigint "WORKPHONE"
    t.bigint "CELLPHONE"
    t.string "EMAIL"
    t.string "Lot_Premium_Status"
    t.float "total_sales_price"
    t.float "upgrades_price"
    t.float "gross_margin"
    t.string "lot_comments", limit: 505
    t.bigint "Coop_Agent_Cell"
    t.string "Coop_Agent_Email"
    t.bigint "Coop_Broker_Cell"
    t.string "Coop_Broker_Email", limit: 45
    t.string "warranty_status_id", limit: 45
    t.string "warranty_status_val", limit: 45
    t.integer "ihms_presence", limit: 1
    t.string "Loan_Officer_Email", limit: 45
    t.bigint "Loan_Officer_Cell"
    t.string "unavailable_hidden_sts", limit: 45
    t.string "community_city", limit: 45
    t.text "item_code", limit: 4294967295
    t.text "item_desc", limit: 4294967295
    t.text "color_code", limit: 4294967295
    t.text "color_desc", limit: 4294967295
    t.text "color_scheme_id", limit: 4294967295
    t.text "color_group_code", limit: 4294967295
    t.date "next_activity_date"
    t.string "lotbuzz_display_name", limit: 100
    t.date "lotvue_completion_date"
    t.date "Construction_Start_Date"
    t.string "option_r_house_rec", limit: 100
    t.integer "revised_sales_price_flag", limit: 1
    t.float "revised_sales_price", limit: 53
    t.text "lotvue_lot_description", limit: 4294967295
    t.string "company_code", limit: 45
    t.text "lot_link", limit: 4294967295
    t.text "excluded_plan_images", limit: 4294967295
    t.integer "Key_Image_Id_LI"
    t.string "Permit_Number", limit: 45
    t.string "Click_Status"
    t.string "Click_Status_Val"
    t.string "Visitor_Status"
    t.string "Visitor_Status_Val"
    t.string "Click_Dates_Status"
    t.text "Click_Dates_Status_Val"
    t.string "Visitor_Dates_Status"
    t.text "Visitor_Dates_Status_Val"
    t.text "state"
    t.string "ihms_lot_size"
    t.string "supervisor"
    t.integer "supervisor_id"
    t.boolean "is_popular_lot"
    t.integer "total_loan_available"
    t.integer "net_cash_position"
    t.string "community_type"
    t.float "milestone_percentage"
    t.text "last_completed_milestone"
    t.string "buyer_last_name"
    t.string "in_progress_activity_code"
    t.string "in_progress_activity_code_description"
    t.date "construction_actual_finish_date"
    t.text "Last_Completed_Activities"
    t.string "buyer_address1", limit: 30
    t.string "buyer_address2", limit: 30
    t.string "buyer_city", limit: 30
    t.string "buyer_state", limit: 2
    t.string "buyer_zip", limit: 9
    t.string "buyer_country", limit: 2
    t.integer "lot_size_status_id"
    t.integer "product_type_status_id"
    t.string "Floor_Number"
    t.datetime "info_created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "info_updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["Unique_ID"], name: "idx_Unique_ID"
  end

  create_table "GIS_MenuOption", primary_key: ["Id", "MenuName", "MenuOptionName"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Id", null: false, auto_increment: true
    t.string "MenuName", limit: 50, null: false
    t.string "MenuOptionName", limit: 50, null: false
  end

  create_table "GIS_Status_Details", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "company_code", limit: 45
    t.string "StatusKey", limit: 2555
    t.string "StatusLabel", limit: 555
    t.integer "LegendOrder"
    t.string "ColorCode"
    t.integer "builder_id"
    t.string "Community"
    t.text "Status_Display_Name", limit: 4294967295
    t.string "model_code", limit: 45
    t.integer "Is_Active", default: 1
    t.text "Link_Name", limit: 4294967295
    t.text "Plan_Description", limit: 4294967295, collation: "utf8_general_ci"
    t.bigint "Priced_From"
    t.string "Sq_Feet"
    t.string "Floors"
    t.string "Bedrooms"
    t.string "Bathrooms"
    t.string "Garages"
    t.string "Plan_Description_Status", limit: 45
    t.string "Priced_From_Status", limit: 45
    t.string "Sq_Feet_Status", limit: 45
    t.string "Floors_Status", limit: 45
    t.string "Bedrooms_Status", limit: 45
    t.string "Bathrooms_Status", limit: 45
    t.string "Garages_Status", limit: 45
    t.string "Notes", limit: 45
    t.string "Full_Bathrooms"
    t.string "Full_Bathrooms_Status", limit: 45
    t.string "color_scheme_presence", limit: 45
    t.integer "inactive_in_elevation", limit: 1
    t.integer "lot_plan_sts", default: 0
    t.boolean "Sales_Price_Status"
    t.boolean "Lot_Premium_Status"
    t.integer "inactive_from_mng_plans", limit: 1
    t.text "Ihms_Link_Name", limit: 4294967295
    t.text "Ihms_Plan_Description", limit: 4294967295
    t.string "Ihms_Priced_From"
    t.string "Ihms_Sq_Feet"
    t.string "Ihms_Floors"
    t.string "Ihms_Bedrooms"
    t.string "Ihms_Bathrooms"
    t.string "Ihms_Garages"
    t.string "Ihms_Full_Bathrooms"
    t.text "LegendType_copy", limit: 4294967295
    t.text "LegendType", limit: 4294967295
    t.text "characteristics", limit: 4294967295
    t.text "characteristics_id", limit: 4294967295
    t.text "dev_code", limit: 4294967295
    t.index ["StatusKey"], name: "index_GIS_Status_Details_on_LegendType_and_StatusKey", length: 767
  end

  create_table "GIS_Status_Details_image_galleries", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "image_gallery_id", null: false
    t.bigint "status_detail_id", null: false
    t.index ["image_gallery_id"], name: "index_GIS_Status_Details_image_galleries_on_image_gallery_id"
    t.index ["status_detail_id"], name: "index_GIS_Status_Details_image_galleries_on_status_detail_id"
  end

  create_table "GLTRANS2013", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "GLACCOUNT", limit: 9
    t.date "TRANSACTION_DATE"
    t.string "TRANSACTIONCODE", limit: 2
    t.string "SEQUENCENUMBER", limit: 4
    t.date "TRANS2_DATE"
    t.string "DISTHOUSE", limit: 1
    t.string "CASHFLAG", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
    t.string "REMARKCODE", limit: 1
    t.string "TRANSREMARK", limit: 90
    t.string "BATCHNUM", limit: 10
    t.string "DISTRIBUTIONCOMP", limit: 3
    t.string "JOURNALNUMBER", limit: 6
    t.string "INVOICENUMBER", limit: 10
    t.string "VENDORNUMBER", limit: 6
    t.string "BANKCODE", limit: 1
    t.string "CHECKNUMBER", limit: 6
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "VARIANCECODE", limit: 2
    t.string "OPTIONCODE", limit: 5
    t.string "LOANNUMBER", limit: 10
    t.string "DRAWTYPE", limit: 1
  end

  create_table "GLTRANS2014", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "GLACCOUNT", limit: 9
    t.date "TRANSACTION_DATE"
    t.string "TRANSACTIONCODE", limit: 2
    t.string "SEQUENCENUMBER", limit: 4
    t.date "TRANS2_DATE"
    t.string "DISTHOUSE", limit: 1
    t.string "CASHFLAG", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
    t.string "REMARKCODE", limit: 1
    t.string "TRANSREMARK", limit: 90
    t.string "BATCHNUM", limit: 10
    t.string "DISTRIBUTIONCOMP", limit: 3
    t.string "JOURNALNUMBER", limit: 6
    t.string "INVOICENUMBER", limit: 10
    t.string "VENDORNUMBER", limit: 6
    t.string "BANKCODE", limit: 1
    t.string "CHECKNUMBER", limit: 6
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "VARIANCECODE", limit: 2
    t.string "OPTIONCODE", limit: 5
    t.string "LOANNUMBER", limit: 10
    t.string "DRAWTYPE", limit: 1
  end

  create_table "GLTRANS2015", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "GLACCOUNT", limit: 9
    t.date "TRANSACTION_DATE"
    t.string "TRANSACTIONCODE", limit: 2
    t.string "SEQUENCENUMBER", limit: 4
    t.date "TRANS2_DATE"
    t.string "DISTHOUSE", limit: 1
    t.string "CASHFLAG", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
    t.string "REMARKCODE", limit: 1
    t.string "TRANSREMARK", limit: 90
    t.string "BATCHNUM", limit: 10
    t.string "DISTRIBUTIONCOMP", limit: 3
    t.string "JOURNALNUMBER", limit: 6
    t.string "INVOICENUMBER", limit: 10
    t.string "VENDORNUMBER", limit: 6
    t.string "BANKCODE", limit: 1
    t.string "CHECKNUMBER", limit: 6
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "VARIANCECODE", limit: 2
    t.string "OPTIONCODE", limit: 5
    t.string "LOANNUMBER", limit: 10
    t.string "DRAWTYPE", limit: 1
  end

  create_table "GLTRANS2016", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "GLACCOUNT", limit: 9
    t.date "TRANSACTION_DATE"
    t.string "TRANSACTIONCODE", limit: 2
    t.string "SEQUENCENUMBER", limit: 4
    t.date "TRANS2_DATE"
    t.string "DISTHOUSE", limit: 1
    t.string "CASHFLAG", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
    t.string "REMARKCODE", limit: 1
    t.string "TRANSREMARK", limit: 90
    t.string "BATCHNUM", limit: 10
    t.string "DISTRIBUTIONCOMP", limit: 3
    t.string "JOURNALNUMBER", limit: 6
    t.string "INVOICENUMBER", limit: 10
    t.string "VENDORNUMBER", limit: 6
    t.string "BANKCODE", limit: 1
    t.string "CHECKNUMBER", limit: 6
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "VARIANCECODE", limit: 2
    t.string "OPTIONCODE", limit: 5
    t.string "LOANNUMBER", limit: 10
    t.string "DRAWTYPE", limit: 1
  end

  create_table "HOUSECOLORS", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "ITEMCODE", limit: 3
    t.string "ITEMDESC", limit: 20
    t.string "COLORGROUPCODE", limit: 10
    t.string "DISTHOUSE", limit: 60
    t.string "COLORCODE", limit: 10
    t.string "COLORDESC", limit: 100
    t.string "TERMINATOR", limit: 1
    t.string "CONVERTED", limit: 1
  end

  create_table "HOUSECOSTDETAIL", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.date "TRANSACTION_DATE"
    t.string "SEQUENCENUMBER", limit: 5
    t.string "SOURCECODE", limit: 2
    t.string "REMARKS", limit: 52
    t.string "OPTIONCODE", limit: 5
    t.string "VARIANCECODE", limit: 2
    t.string "MEMO", limit: 24
    t.string "BATCHNUM", limit: 10
    t.string "TERMINATOR", limit: 1
    t.decimal "AMOUNT", precision: 20, scale: 8
  end

  create_table "HOUSECOSTSUMMARY", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.decimal "BUDGETAMOUNT", precision: 18, scale: 8
    t.decimal "ACTUAL", precision: 18, scale: 8
    t.decimal "ORIGINALBUDGET", precision: 18, scale: 8
  end

  create_table "HOUSEMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "MODELCODE", limit: 3
    t.string "ELEVATIONCODE", limit: 3
    t.string "REMARKS", limit: 80
    t.string "BLOCKNUMBER", limit: 6
    t.string "LOTNUMBER", limit: 6
    t.string "COMMENTS", limit: 80
    t.date "RELEASE_DATE"
    t.string "JIONUMBER", limit: 6
    t.string "UNUSED", limit: 5
    t.string "CURRENTJOBSTART", limit: 2
    t.string "LASTJOBSTART", limit: 2
    t.string "BUYERNAME", limit: 30
    t.date "SETTLEMENT_DATE"
    t.date "DEPOSIT_DATE"
    t.date "MISC1_DATE"
    t.string "UNUSED_2", limit: 2
    t.string "FINANCING_TYPE", limit: 4
    t.date "MISC2_DATE"
    t.date "MISC3_DATE"
    t.string "COSTFLAG", limit: 1
    t.date "SALESRELEASEDATE"
    t.date "CONTRACT_DATE"
    t.date "RATIFIED_DATE"
    t.string "BUILDING_NUM", limit: 4
    t.date "CNTRK_SUBMT_DATE"
    t.string "HOMEPHONE", limit: 10
    t.string "WORKPHONE", limit: 10
    t.decimal "OPTION_INCV_AMT", precision: 18, scale: 8
    t.decimal "CLOSING_INCV_AMT", precision: 18, scale: 8
    t.decimal "POINTS_INCV_AMT", precision: 18, scale: 8
    t.decimal "COOP_AMOUNT", precision: 18, scale: 8
    t.string "PERMITNUMBER", limit: 16
    t.string "COOP_YN", limit: 1
    t.string "UNUSED_3", limit: 3
    t.string "ORIENTATION", limit: 1
    t.string "LOAN_NUM", limit: 10
    t.string "WARRANTYPOLICY", limit: 3
    t.string "ADDRESS1", limit: 24
    t.string "ADDRESS2", limit: 24
    t.string "ADDRESS3", limit: 24
    t.date "WARRANTY_DATE"
    t.string "UNPACKEDHOUSENUM", limit: 8
    t.date "MISC4_DATE"
    t.decimal "BROKER_AMOUNT", precision: 18, scale: 8
    t.date "MISC5_DATE"
    t.date "MISC6_DATE"
    t.date "MISC7_DATE"
    t.string "UNUSED2", limit: 2
    t.decimal "UPGRADEPRICE", precision: 20, scale: 8
    t.string "AGENTCODE", limit: 10
    t.string "BROKERCODE", limit: 10
    t.string "COOP_NAME", limit: 3
    t.string "HOUSE_TYPE", limit: 1
    t.decimal "BROKER_PCT", precision: 13, scale: 8
    t.string "LST_CHGORD_NUM", limit: 3
    t.date "MISC8_DATE"
    t.date "PERMIT_DATE"
    t.string "PVC8", limit: 8
    t.decimal "DEPOSIT_DUE", precision: 23, scale: 8
    t.decimal "EST_BASE_PRICE", precision: 18, scale: 8
    t.decimal "EST_OPTIONS_PRC", precision: 18, scale: 8
    t.decimal "EST_LOT_PREMIUM", precision: 18, scale: 8
    t.string "SALESMANCODE", limit: 3
    t.string "TITLE_CO", limit: 10
    t.date "MTG_PREQUAL_DATE"
    t.string "AOSACCEPTEDFLAG", limit: 1
    t.decimal "EST_UPGRADE_PRC", precision: 18, scale: 8
    t.string "RELEASENUM", limit: 5
    t.string "COOP_AGENT_ADDR1", limit: 24
    t.string "COOP_AGENT_ADDR2", limit: 24
    t.string "NOT_USED_2", limit: 2
    t.date "ESTSETTL_DATE"
    t.date "MISC9_DATE"
    t.date "WALK_THRU_DATE"
    t.date "MTG_APPROV_DATE"
    t.string "POSTAGE", limit: 1
    t.string "WALK_THRU_TIME", limit: 4
    t.string "AM_PM", limit: 1
    t.string "UNUSED4", limit: 4
    t.date "CONSTSTART_DATE"
    t.string "LOTHOLD", limit: 1
    t.date "MTG_APPLIED_DATE"
    t.date "MISC10_DATE"
    t.string "WOSTAGE", limit: 1
    t.date "MISC11_DATE"
    t.date "MISC12_DATE"
    t.string "MISC1_FIELD", limit: 10
    t.string "MISC2_FIELD", limit: 10
    t.string "BUYERSNAME1", limit: 30
    t.string "BUYERSNAME2", limit: 30
    t.string "BUYERSNAME3", limit: 30
    t.string "PREVIOUSADDRESS1", limit: 24
    t.string "PREVIOUSADDRESS2", limit: 24
    t.string "PROMISSORYNOTE1", limit: 60
    t.string "PROMISSORYNOTE2", limit: 60
    t.date "PROMISSORY1DATE"
    t.date "PROMISSORY2DATE"
    t.decimal "PROMISSORYAMT1", precision: 23, scale: 8
    t.decimal "PROMISSORYAMT2", precision: 23, scale: 8
    t.string "PVC", limit: 7
    t.string "WARRANTYCOMMENTS", limit: 21
    t.string "PROMISSORYNOTE3", limit: 60
    t.date "PROMISSORY3DATE"
    t.decimal "PROMISSORYAMT3", precision: 23, scale: 8
    t.string "DEPOSITAMTPAID", limit: 15
    t.date "INS1_DATE"
    t.date "INS2_DATE"
    t.date "INS3_DATE"
    t.date "INS4_DATE"
    t.date "INS5_DATE"
    t.string "PCTCOMPL", limit: 1
    t.string "PVC1", limit: 3
    t.string "CASENUMBER", limit: 9
    t.date "LOTCONTRACTDATE"
    t.date "LOTRATIFYDATE"
    t.date "LOTSETTLEDATE"
    t.string "SPECFLAG", limit: 1
    t.string "HOUSETAXENABLE", limit: 1
    t.string "CELLPHONE", limit: 10
    t.string "EMAIL", limit: 80
    t.string "SUPERUSERID", limit: 40
    t.string "SWORNSTATEMENT", limit: 1
    t.string "TERMINATOR", limit: 1
    t.decimal "HOUSETAXPERCENT", precision: 18, scale: 8
    t.decimal "BASEPRICE", precision: 18, scale: 8
    t.decimal "OPTIONSPRICE", precision: 18, scale: 8
    t.decimal "LOTPREMIUM", precision: 18, scale: 8
    t.decimal "NOT_USED_6", precision: 18, scale: 8
    t.decimal "DEPOSITAMOUNT", precision: 18, scale: 8
    t.decimal "MORTGAGE_AMOUNT", precision: 18, scale: 8
    t.decimal "FEE_PCT", precision: 18, scale: 8
    t.decimal "POINTS_CODE", precision: 18, scale: 8
    t.decimal "CONSTR_LOAN_AMT", precision: 18, scale: 8
    t.decimal "PCT_OF_BLDING", precision: 18, scale: 8
  end

  create_table "HOUSEOPTIONS", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "OPTIONCODE", limit: 5
    t.string "OPTIONCATEGORY", limit: 3
    t.string "LOCATION", limit: 240
    t.string "DISTHOUSE", limit: 1200
    t.string "PVC", limit: 9
    t.string "TERMINATOR", limit: 1
    t.decimal "SALESPRICE", precision: 18, scale: 8
    t.decimal "QUANTITY", precision: 13, scale: 8
  end

  create_table "HOUSERESTRICTION", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "MODELCODE", limit: 3
    t.string "ELEVATIONCODE", limit: 3
  end

  create_table "IHMS_STATUSES", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "company_code", limit: 45
    t.string "house_number", limit: 45
    t.string "status", limit: 45
    t.string "dev_code", limit: 45
    t.string "block_number", limit: 45
    t.string "lot_number", limit: 45
    t.string "model_code", limit: 45
    t.string "elevation_code", limit: 45
    t.string "ratified_date", limit: 45
    t.string "settlement_date", limit: 45
    t.string "loan_type", limit: 45
    t.string "lender_code", limit: 45
    t.string "lot_status", limit: 256
    t.string "lot_status_variable", limit: 45
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "JLBANKMASTERFILE", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "BANKCODE", limit: 2
    t.string "DESCRIPTION", limit: 40
  end

  create_table "JLHOUSES", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "LOANNUMBER", limit: 10
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "UNPACKEDHOUSENUM", limit: 10
    t.decimal "LOANAMOUNT", precision: 18, scale: 8
    t.decimal "DRAWREQUEST", precision: 18, scale: 8
  end

  create_table "JLLOANDETAIL", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "LOANNUMBER", limit: 10
    t.date "TRANSACTION_DATE"
    t.string "SEQUENCENUMBER", limit: 5
    t.string "DRAWTYPE", limit: 1
    t.string "GLACCOUNT", limit: 9
    t.string "BATCHNUM", limit: 10
    t.decimal "AMOUNT", precision: 20, scale: 8
  end

  create_table "JLLOANMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "LOANNUMBER", limit: 10
    t.string "BANKCODE", limit: 2
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "CASHBANKCODE", limit: 1
    t.string "MEMO", limit: 100
    t.date "MATURITYDATE"
    t.decimal "LOAN_LIMIT", precision: 20, scale: 8
    t.decimal "TODATEDRAWNAMT", precision: 20, scale: 8
    t.decimal "INTERESTRATE1", precision: 12, scale: 8
    t.decimal "INTERESTRATE2", precision: 12, scale: 8
    t.decimal "INTERESTRATE3", precision: 12, scale: 8
    t.decimal "INTERESTRATE4", precision: 12, scale: 8
    t.decimal "INTERESTRATE5", precision: 12, scale: 8
    t.decimal "INTERESTRATE6", precision: 12, scale: 8
    t.decimal "INTERESTRATE7", precision: 12, scale: 8
    t.decimal "INTERESTRATE8", precision: 12, scale: 8
    t.decimal "INTERESTRATE9", precision: 12, scale: 8
    t.decimal "INTERESTRATE10", precision: 12, scale: 8
    t.decimal "INTERESTRATE11", precision: 12, scale: 8
    t.decimal "INTERESTRATE12", precision: 12, scale: 8
    t.decimal "INTERESTRATE13", precision: 12, scale: 8
    t.decimal "INTERESTRATE14", precision: 12, scale: 8
    t.decimal "INTERESTRATE15", precision: 12, scale: 8
    t.decimal "INTERESTRATE16", precision: 12, scale: 8
    t.decimal "INTERESTRATE17", precision: 12, scale: 8
    t.decimal "INTERESTRATE18", precision: 12, scale: 8
    t.decimal "INTERESTRATE19", precision: 12, scale: 8
    t.decimal "INTERESTRATE20", precision: 12, scale: 8
    t.decimal "INTERESTRATE21", precision: 12, scale: 8
    t.decimal "INTERESTRATE22", precision: 12, scale: 8
    t.decimal "INTERESTRATE23", precision: 12, scale: 8
    t.decimal "INTERESTRATE24", precision: 12, scale: 8
    t.decimal "INTERESTRATE25", precision: 12, scale: 8
    t.decimal "INTERESTRATE26", precision: 12, scale: 8
    t.decimal "INTERESTRATE27", precision: 18, scale: 8
    t.decimal "INTERESTRATE28", precision: 12, scale: 8
    t.decimal "INTERESTRATE29", precision: 12, scale: 8
    t.decimal "INTERESTRATE30", precision: 12, scale: 8
    t.decimal "INTERESTRATE31", precision: 12, scale: 8
    t.decimal "CURRENTMONTHINT", precision: 20, scale: 8
    t.decimal "DRAWNTHISMONTH", precision: 20, scale: 8
  end

  create_table "LENDERMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "LENDERCODE", limit: 10
    t.string "NAME", limit: 24
    t.string "ADDRESS1", limit: 24
    t.string "ADDRESS2", limit: 24
    t.string "ADDRESS3", limit: 24
    t.string "PHONENUMBER", limit: 10
    t.string "LOANOFFICER", limit: 24
    t.string "LOANPROCESSOR", limit: 24
    t.string "OFFICEREMAIL", limit: 80
    t.string "PROCESSOREMAIL", limit: 80
    t.string "TERMINATOR", limit: 1
  end

  create_table "MODELMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "MODELCODE", limit: 3
    t.string "DESCRIPTION", limit: 15
    t.string "DEPOVERRIDEFLAG", limit: 1
    t.string "INACTIVE", limit: 1
    t.string "TERMINATOR", limit: 1
    t.decimal "SELLINGPRICE", precision: 18, scale: 8
    t.decimal "DEPOSITOVERRIDE", precision: 14, scale: 8
  end

  create_table "MenuOption_ProjectType", primary_key: "Id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "MenuOptionId", limit: 45, null: false
    t.string "ProjectId", limit: 45, null: false
  end

  create_table "OPTIONLOTMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "LOTNUMBER", limit: 8
    t.string "TAXBLOCK", limit: 6
    t.string "TAXLOT", limit: 6
    t.string "ADDRESS1", limit: 24
    t.string "ADDRESS2", limit: 24
    t.string "ADDRESS3", limit: 24
    t.date "LOTCONTRACTDATE"
    t.date "LOTCONVERDATE"
    t.date "RELEASESALESDATE"
    t.string "LOTCOMMENTS", limit: 80
    t.string "SELLERNAME", limit: 24
    t.string "SELLERADDRESS1", limit: 24
    t.string "SELLERADDRESS2", limit: 24
    t.string "SELLERCITY", limit: 24
    t.string "SELLERSTATE", limit: 2
    t.string "SELLERZIP", limit: 9
    t.string "SELLERCOUNTRY", limit: 2
    t.string "SELLERPHONE", limit: 10
    t.string "SELLEREMAIL", limit: 50
    t.date "OPTIONEXPDATE"
    t.string "ORIENTATION", limit: 1
    t.decimal "LOTPREMIUM", precision: 18, scale: 8
    t.string "MISC1_FIELD", limit: 10
    t.string "MISC2_FIELD", limit: 10
  end

  create_table "OPTLOTRESTRICT", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "LOTNUMBER", limit: 8
    t.string "MODELCODE", limit: 3
    t.string "ELEVATIONCODE", limit: 3
  end

  create_table "Option_Lots_Status", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "option_lots", limit: 45
  end

  create_table "PODIST", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "PONUMBER", limit: 6
    t.string "SEQUENCENUMBER", limit: 3
    t.string "DISTCOMP", limit: 3
    t.string "GLACCOUNT", limit: 9
    t.string "DISTDEV", limit: 2
    t.string "DISTHOUSE", limit: 8
    t.string "COSTCODE", limit: 5
    t.string "OPTIONCODE", limit: 5
    t.string "UPHOUSENUMBER", limit: 10
    t.string "GLDESCRIPTION", limit: 30
    t.string "LOANNUMBER", limit: 10
    t.string "LOANDRAW", limit: 1
    t.string "VARIANCECODE", limit: 2
    t.string "TERMINATOR", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
  end

  create_table "PROSPECTCONTING", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "CASENUMBER", limit: 9
    t.string "CONTINGENCYNUM", limit: 3
    t.date "DUEDATE"
    t.date "SATISFIEDDATE"
    t.string "DESCRIPTION", limit: 400
    t.decimal "AMOUNT", precision: 18, scale: 8
  end

  create_table "PROSPECTFINANCE", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "CASENUMBER", limit: 9
    t.string "LENDERCODE", limit: 10
    t.string "LOANOFFICER", limit: 30
    t.string "PROCESSOR", limit: 30
    t.string "LOANTYPE", limit: 10
    t.string "LENDERRATING", limit: 10
    t.string "OTHERRATING", limit: 10
    t.date "MORTAPPLYDATE"
    t.date "MORTSUBMITDATE"
    t.date "MORTAPPROVEDATE"
    t.date "CONTRACTEXPDATE"
    t.date "OPTIONSCOMPDATE"
    t.date "COLORCOMPDATE"
    t.date "CONSTCLOSEDATE"
    t.date "MORTCLOSEDATE"
    t.date "LOTTOPERMITDATE"
    t.date "DOCSENTDATE"
    t.date "MORTCONTRACTDATE"
    t.date "PROJECTCLOSEDATE"
    t.string "TERMINATOR", limit: 1
    t.string "CONTRACTAMOUNT", limit: 10
    t.string "QUOTEDRATE", limit: 10
    t.string "QUOTEDPAYMENT", limit: 10
    t.string "POINTS", limit: 10
    t.string "CLOSINGCOSTS", limit: 10
    t.string "BUILDERBUYDOWN", limit: 10
  end

  create_table "PROSPECTMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "CASENUMBER", limit: 9
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "LASTNAME", limit: 30
    t.string "FIRSTNAME", limit: 20
    t.string "MIDDLEINITIAL", limit: 1
    t.string "SALUTATION", limit: 15
    t.string "STREETADDRESS1", limit: 30
    t.string "STREETADDRESS2", limit: 30
    t.string "CITY", limit: 30
    t.string "STATE", limit: 2
    t.string "ZIP", limit: 9
    t.string "COUNTRY", limit: 2
    t.string "HOMEPHONE1", limit: 10
    t.string "WORKPHONE1", limit: 10
    t.string "HOMEPHONE2", limit: 10
    t.string "WORKPHONE2", limit: 10
    t.string "OTHERPHONE1", limit: 10
    t.string "OTHERPHONE2", limit: 10
    t.string "STATUSCODE", limit: 10
    t.date "TRAFFICDATE1"
    t.date "TRAFFICDATE2"
    t.date "TRAFFICDATE3"
    t.date "TRAFFICDATE4"
    t.date "SETTLEMENTDATE"
    t.date "CONTRACTDATE"
    t.date "RATIFIEDDATE"
    t.string "MODELCODE", limit: 3
    t.string "ELEVATIONCODE", limit: 3
    t.string "SALESPERSONCODE", limit: 3
    t.string "HOUSENUMBER", limit: 8
    t.date "SELECTSCHDDATE"
    t.date "SELECTCMPLDATE"
    t.date "SELECTCUTOFFDATE"
    t.date "STARTDATE"
    t.date "ESTCOMPDATE"
    t.string "OTHERAMT1DESC", limit: 30
    t.string "OTHERAMT2DESC", limit: 30
    t.string "OTHERAMT3DESC", limit: 30
    t.string "AGENTCODE", limit: 10
    t.string "BROKERCODE", limit: 10
    t.date "CUSTSIGNEDDATE"
    t.string "SALESPERSONCODE2", limit: 3
    t.string "SALESPERSONCODE3", limit: 3
    t.string "CROSSREFERENCE", limit: 12
    t.string "SPECHOUSEFLAG", limit: 1
    t.string "SOURCE", limit: 10
    t.string "EMAIL", limit: 80
    t.string "TIMECREATED", limit: 6
    t.string "DATECREATED", limit: 6
    t.string "USERID", limit: 25
    t.string "UNUSED", limit: 365
    t.decimal "BASEPRICE", precision: 20, scale: 8
    t.decimal "LOTPREMIUM", precision: 20, scale: 8
    t.decimal "OPTIONSPRICE", precision: 20, scale: 8
    t.decimal "UPGRADESPRICE", precision: 20, scale: 8
    t.decimal "BASEDEPOSIT", precision: 20, scale: 8
    t.decimal "OPTIONDEPOSIT", precision: 20, scale: 8
    t.decimal "OTHERAMT1", precision: 20, scale: 8
    t.decimal "OTHERAMT2", precision: 20, scale: 8
    t.decimal "OTHERAMT3", precision: 20, scale: 8
    t.decimal "AGENTAMOUNT", precision: 20, scale: 8
    t.decimal "BROKERAMOUNT", precision: 20, scale: 8
  end

  create_table "Project_Type", primary_key: "Id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Project_Name", limit: 45
    t.integer "Active"
    t.boolean "google_map_active"
    t.boolean "contact_form_status", default: true
  end

  create_table "Rds_Lot_Collections", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Role_Definition_Id"
    t.integer "Lot_Collection_Id"
    t.string "Product_Type_Id", limit: 45
    t.integer "Can_Upload_Report"
    t.string "changed_flag", limit: 15, default: "NOT MODIFIED"
  end

  create_table "Rds_Lot_Collections_Menu_Options", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Rds_Lot_Collection_Id"
    t.integer "Menu_Option_Id"
    t.integer "role_access_id"
  end

  create_table "Rds_Lot_Collections_Menu_Options_Role_Access", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Rds_Lot_Collections_Menu_Options_Id"
    t.integer "Role_Access_Id"
  end

  create_table "Rds_Lot_Collections_Reports_Role_Access", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Role_Id"
    t.integer "Report_Id"
    t.integer "Role_Access_Id"
    t.string "Report_Type", limit: 45
    t.integer "Lot_Collection_Id"
  end

  create_table "Role_Definition_Rules", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Role_Definition_Id"
    t.integer "Lot_Collection_Id"
    t.integer "Menu_Option_Id"
    t.integer "Role_Access_Id"
  end

  create_table "Role_Definitions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Role_Definition"
    t.integer "Is_Active", default: 1
    t.string "all_collections_selection", limit: 15, default: "manual"
  end

  create_table "SALESPERSONMAST", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "SALESPERSONCODE", limit: 3
    t.string "FIRSTNAME", limit: 30
    t.string "MIDDLEINITIAL", limit: 1
    t.string "LASTNAME", limit: 50
    t.string "CELLPHONE", limit: 10
    t.string "HOMEPHONE", limit: 10
    t.string "SALESMANAGER", limit: 1
    t.string "EMAILADDRESS", limit: 80
    t.string "USERID", limit: 25
    t.string "TERMINATOR", limit: 1
  end

  create_table "SALESSUBSIDIARY", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "GLACCOUNT", limit: 9
    t.date "TRANSACTIONDATE"
    t.string "SEQUENCENUMBER", limit: 2
    t.string "DISTHOUSE", limit: 2
    t.string "TRANSREMARKS", limit: 24
    t.string "BATCHNUM", limit: 10
    t.string "TERMINATOR", limit: 1
    t.decimal "AMOUNT", precision: 18, scale: 8
  end

  create_table "SCHEDACTIVITIES", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "ACTIVITYCODE", limit: 3
    t.string "DESCRIPTION", limit: 24
    t.string "SUSPENDABLE", limit: 1
    t.string "MILESTONE", limit: 1
    t.string "DRAWTYPE", limit: 1
    t.string "FIELD1", limit: 10
    t.string "FIELD2", limit: 10
    t.string "TERMINATOR", limit: 1
    t.decimal "DAYS", precision: 18, scale: 8
    t.decimal "AMOUNT1", precision: 18, scale: 8
    t.decimal "AMOUNT2", precision: 18, scale: 8
    t.string "ITKPUBLISH", limit: 1
    t.string "NOTIFYOTHERS", limit: 1
    t.string "OTHERVENDORS", limit: 1049
    t.decimal "ZORDER", precision: 13, scale: 8
  end

  create_table "SCHEDHOUSEDETAIL", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "STEPNUMBER", limit: 5
    t.string "ACTIVITYCODE", limit: 3
    t.date "EARLYSTARTDATE"
    t.date "EARLYFINISHDATE"
    t.date "LATESTARTDATE"
    t.date "LATEFINISHDATE"
    t.date "RVERLSTSTARTDATE"
    t.date "RVEARLYSTARTDATE"
    t.date "RVEARLYFINSHDATE"
    t.date "RVLATESTARTDATE"
    t.date "RVLATEFINISHDATE"
    t.string "VENDORNUMBER", limit: 6
    t.string "RELEASENUMBER", limit: 4
    t.string "RELEASESEQUENCE", limit: 2
    t.date "ACTUALSTARTDATE"
    t.date "ACTUALFINISHDATE"
    t.string "CRITICALPATH", limit: 1
    t.string "SUSPEND", limit: 1
    t.string "OPTIONRELATED", limit: 1
    t.string "OPTIONINSERTED", limit: 1
    t.string "ACKNOWLEDGED", limit: 1
    t.string "INACTIVE", limit: 1
    t.string "FIELD1", limit: 7
    t.string "FIELD2", limit: 10
    t.string "FIELD3", limit: 10
    t.string "TERMINATOR", limit: 1
    t.decimal "DAYS", precision: 18, scale: 8
    t.decimal "SLACKDAYS", precision: 18, scale: 8
    t.decimal "SLIPDAYS", precision: 18, scale: 8
    t.decimal "AMOUNT2", precision: 18, scale: 8
    t.decimal "AMOUNT3", precision: 18, scale: 8
  end

  create_table "SCHEDHOUSEHEADER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "DESCRIPTION", limit: 60
    t.string "UNPACKEDHOUSENUM", limit: 8
    t.string "HOLDFLAG", limit: 1
    t.string "DISTHOUSE", limit: 60
    t.string "ARCHIVEFLAG", limit: 1
    t.date "LOADDATE"
    t.string "LOADTIME", limit: 4
    t.string "LOADEDBY", limit: 40
    t.date "LASTUPDATEDATE"
    t.string "LASTUPDATETIME", limit: 4
    t.string "HOUSESLIPPAGE", limit: 20
    t.string "TERMINATOR", limit: 1
    t.decimal "AMOUNT1", precision: 18, scale: 8
    t.decimal "AMOUNT2", precision: 18, scale: 8
    t.decimal "AMOUNT3", precision: 18, scale: 8
    t.string "FIELD3", limit: 20
  end

  create_table "UDHOUSEMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "UDCHARACTERFIELD"
    t.string "UDMEMOFIELD", limit: 1000
    t.decimal "UDCURRENCYFIELD", precision: 21, scale: 8
    t.string "DISTHOUSE", limit: 6
    t.string "BACKLOG", limit: 256
    t.string "ESCROWNO", limit: 10
    t.decimal "ESCROWDRAW", precision: 21, scale: 8
    t.string "HOUSE_COUNTY", limit: 30
    t.date "LOCRECDDATE"
    t.date "LOCEXPDATE"
    t.decimal "CLOTP", precision: 21, scale: 8
    t.decimal "APREMLOT", precision: 21, scale: 8
    t.decimal "BPREMLOT", precision: 21, scale: 8
  end

  create_table "User_Role_Definitions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "User_Id"
    t.integer "Role_Definition_Id"
  end

  create_table "VENDORMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "VENDORNUMBER", limit: 6
    t.string "VENDORNAME", limit: 40
    t.string "ADDRESS1", limit: 24
    t.string "ADDRESS2", limit: 24
    t.string "CITY", limit: 24
    t.string "STATE", limit: 2
    t.string "ZIPCODE", limit: 9
    t.string "COUNTRY", limit: 2
    t.string "PHONENUMBER", limit: 10
    t.string "ALPHASORT", limit: 8
    t.string "PAYCYCLE", limit: 2
    t.date "OPENED_DATE"
    t.date "LASTACTVTY_DATE"
    t.string "SUBFLAG", limit: 3
    t.string "TERMSCODE", limit: 2
    t.string "ALTTERMSCODE", limit: 2
    t.string "DEFAULTGLACCT", limit: 9
    t.string "W9RECEIVEDFLAG", limit: 1
    t.string "INSCERTREQDFLAG", limit: 1
    t.string "LIENFLAG", limit: 1
    t.string "FEDERALIDNUMBER", limit: 50
    t.string "FORM1099FLAG", limit: 1
    t.string "GROUPCODE", limit: 10
    t.string "CONTACTNAME", limit: 24
    t.string "SEPERATECHKFLAG", limit: 1
    t.date "INSEXP_DATE"
    t.date "WRKCMPEXP_DATE"
    t.date "AUTOLIABEXP_DATE"
    t.date "EXCESSEXP_DATE"
    t.date "OTHEREXP_DATE"
    t.string "FAXNUMBER", limit: 10
    t.string "CELLNUMBER", limit: 10
    t.string "EMAILADDRESS", limit: 80
    t.string "REMARKS", limit: 60
    t.string "PAGERNUMBER", limit: 10
    t.string "WEBSITE", limit: 75
    t.date "MISC1_DATE"
    t.date "MISC2_DATE"
    t.date "MISC3_DATE"
    t.string "OUTOFSTATE", limit: 1
    t.string "MINORITYCON", limit: 1
    t.string "PRINTPREFERENCE", limit: 1
    t.string "FIELD1", limit: 29
    t.string "FIELD2", limit: 30
    t.string "FIELD3", limit: 30
    t.string "FIELD4", limit: 30
    t.string "FIELD5", limit: 30
    t.string "FIELD6", limit: 30
    t.string "INACTIVE", limit: 1
    t.string "NHQFLAG", limit: 1
    t.string "NHQHOLD", limit: 1
    t.string "CATEGORYCODE", limit: 3
    t.string "COSTCODE", limit: 2
    t.string "NAMEONE1099", limit: 40
    t.string "NAMETWO1099", limit: 40
    t.string "TERMINATOR", limit: 1
    t.decimal "PURCHASESMTD", precision: 18, scale: 8
    t.decimal "RETURNSMTD", precision: 18, scale: 8
    t.decimal "PURCHASESYTD", precision: 19, scale: 8
    t.decimal "RETURNSYTD", precision: 18, scale: 8
    t.decimal "OPENBALANCE", precision: 18, scale: 8
    t.decimal "OPENRETENTION", precision: 18, scale: 8
    t.decimal "NUMBERINVOICES", precision: 13, scale: 8
  end

  create_table "WARLOCATIONCODES", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "LOCATIONCODE", limit: 3
    t.string "DESCRIPTION", limit: 24
    t.string "TERMINATOR", limit: 1
  end

  create_table "WARRANTYLISTTYPE", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "LISTTYPECODE", limit: 1
    t.string "DESCRIPTION", limit: 15
  end

  create_table "WARRANTYMASTER", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "COMPANYCODE", limit: 3
    t.string "DEVELOPMENTCODE", limit: 2
    t.string "HOUSENUMBER", limit: 8
    t.string "SERVICEORDERNUM", limit: 5
    t.date "SO_DATE"
    t.string "VENDORNUMBER", limit: 6
    t.string "DESCRIPTION", limit: 900
    t.date "COMPLETION_DATE"
    t.string "COMMENTS", limit: 60
    t.string "VARIANCECODE", limit: 3
    t.date "SERVICE_DATE"
    t.string "STARTTIME", limit: 4
    t.string "STAMPM", limit: 1
    t.date "DELINQUENT_DATE"
    t.string "JUSTIFIEDFLAG", limit: 1
    t.string "ENDTIME", limit: 4
    t.string "ETAMPM", limit: 1
    t.string "LISTTYPE", limit: 1
    t.string "LOCATIONCODE", limit: 3
    t.string "SERVICEREPCODE", limit: 10
    t.string "NOTE", limit: 25
    t.string "F_SERVICEREPCODE", limit: 10
    t.string "VENDNO_ATFAULT", limit: 6
  end

  create_table "accesses", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "alias_name"
  end

  create_table "active_lot_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "attachment_file_name"
    t.integer "total_lots"
    t.integer "active_lots"
    t.integer "in_active_lots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "drawn_lots", default: 0
  end

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_ip"
    t.string "user_email"
    t.string "device_type"
    t.string "os"
    t.string "browser"
    t.string "city"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.datetime "last_login"
    t.string "user_roles"
    t.string "user_type"
  end

  create_table "activity_logger", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "event"
    t.string "event_on_id"
    t.string "event_on_type"
    t.datetime "event_date"
    t.text "event_info", limit: 4294967295
    t.integer "event_by"
    t.text "event_info_previous", limit: 4294967295
    t.text "event_info_changes", limit: 4294967295
  end

  create_table "ahoy_events", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "visit_id"
    t.bigint "user_id"
    t.string "ip"
    t.string "name"
    t.json "properties"
    t.timestamp "time"
    t.bigint "lot_click_id"
    t.boolean "active"
    t.string "unique_id"
    t.string "community"
    t.index ["lot_click_id"], name: "index_ahoy_events_on_lot_click_id"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_visits", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.bigint "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.string "search_keyword"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.boolean "active"
    t.timestamp "started_at"
    t.index ["ip"], name: "idx_ip"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
  end

  create_table "click_popup_navigations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "hide_nav"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_communities", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "client_company_id"
    t.string "community_name"
    t.string "company_code"
    t.string "dev_code"
    t.integer "community_type", default: 0
    t.text "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_company_id"], name: "index_client_communities_on_client_company_id"
  end

  create_table "client_companies", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "company_code"
    t.string "company_name"
    t.text "builder_email"
    t.text "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communities", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "community_destination_centers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "community_name"
    t.float "latitude"
    t.float "longitude"
    t.text "address"
    t.boolean "destination_address_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "community_phases", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.string "address"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_community_phases_on_community_id"
  end

  create_table "community_reservation_settings", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "client_company_id"
    t.integer "client_community_id"
    t.integer "deposit_amount"
    t.integer "reservation_period"
    t.integer "transaction_timeout"
    t.text "alert_message"
    t.text "reservation_success_mail"
    t.text "reservation_failure_mail"
    t.text "reservation_success_alert_message"
    t.text "reservation_failure_alert_message"
    t.text "reservation_cancellation_alert_message"
    t.text "builder_email"
    t.boolean "global_configuration", default: false
    t.boolean "is_activated"
    t.boolean "is_private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_company_id"], name: "index_community_reservation_settings_on_client_company_id"
  end

  create_table "connection_checks", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "connection_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "construction_milestones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "activity_code"
    t.integer "sort", default: 0
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_forms", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "email_address"
    t.string "contact_num"
    t.string "city_name", limit: 45
    t.string "communities", limit: 500
    t.string "default_contact", limit: 45, default: "No"
    t.text "lasso_rotation"
    t.text "lasso_template"
  end

  create_table "data_load_statuses", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.string "Status", limit: 20
    t.string "Refreshed_Mode", limit: 100
    t.string "Environment", limit: 45
    t.string "Jar_File_Status", limit: 25
    t.string "jar_file_end_date", limit: 45
    t.string "etl_start_date", limit: 45
    t.string "refresh_triggered_by"
  end

  create_table "delayed_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "dr_and_cache_values", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "project_name", limit: 45
    t.string "project_abbrevation", limit: 45
    t.string "cache_key_val", limit: 45
    t.string "sql_db_name", limit: 45
    t.string "jar_file_location", limit: 250
    t.text "dev_n_comm", limit: 4294967295
  end

  create_table "drill_down_colors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "field_name"
    t.text "color_codes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etl_configurations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "source_url"
    t.string "source_database"
    t.string "source_username"
    t.string "source_password"
    t.text "tables_to_fetch"
    t.text "no_devcode_tables"
    t.bigint "project_initial_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_initial_datum_id"], name: "index_etl_configurations_on_project_initial_datum_id"
  end

  create_table "gallery_images_to_lots", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "tbldatum_id"
    t.integer "image_gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_gallery_id"], name: "index_gallery_images_to_lots_on_image_gallery_id"
    t.index ["tbldatum_id"], name: "index_gallery_images_to_lots_on_tbldatum_id"
  end

  create_table "global_settings", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.json "settings_data"
    t.json "lot_text_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "google_place_types", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "name"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "radius_for_place_type"
  end

  create_table "image_galleries", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "navigation_link"
    t.integer "sort", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pics_file_name"
    t.string "product"
    t.string "community"
    t.string "status_detail_id", limit: 45
    t.string "youtube_url"
    t.boolean "plan_key_image"
    t.string "title"
    t.string "description"
    t.string "state"
    t.string "city"
    t.string "phase"
    t.integer "tbluser_id"
  end

  create_table "lasso_integrations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "community"
    t.text "api_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lead_details", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "first_name"
    t.string "email_address"
    t.string "contact_num"
    t.string "lot_number"
    t.string "phase_name"
    t.datetime "updated_at"
    t.string "community_name"
    t.text "description", limit: 4294967295
    t.string "last_name"
    t.text "address", limit: 4294967295
    t.string "floor_number"
    t.integer "lot_reservation_id"
    t.string "registrant_id"
    t.json "lasso_response"
  end

  create_table "lot_bases", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "category_code", limit: 45
    t.text "cost_code", limit: 4294967295
    t.string "cost_code_query", limit: 455
    t.text "category_description", limit: 4294967295
    t.text "cost_code_description", limit: 4294967295
    t.text "categry_cost_code_query", limit: 4294967295
  end

  create_table "lot_clicks", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.json "browser"
    t.json "os"
    t.integer "clicks"
    t.json "device_type"
    t.integer "unique_clicks"
    t.json "city"
    t.json "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "GIS_LotsInfo_id"
    t.index ["GIS_LotsInfo_id"], name: "index_lot_clicks_on_GIS_LotsInfo_id"
  end

  create_table "lot_collection_lots", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Lot_Collection_Id"
    t.string "Community"
    t.string "Phase"
    t.string "Lot_Number", limit: 50
    t.string "community_city", limit: 45
  end

  create_table "lot_collections", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "collection_name"
    t.integer "builder_id"
    t.string "description"
    t.integer "Is_Active", default: 1
    t.string "community_city", limit: 45
  end

  create_table "lot_field_display_names", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Lot_Number", limit: 45
    t.string "Lot_Number_Hover_Status", limit: 45
    t.string "Lot_Number_Click_Status", limit: 45
    t.string "Lot_Status", limit: 45
    t.string "Hover_Status", limit: 45
    t.string "Click_Status", limit: 45
    t.string "Lot_Area", limit: 45
    t.string "Area_Hvr_Status", limit: 45
    t.string "Area_Clk_Status", limit: 45
    t.string "Sale_Price", limit: 45
    t.string "Price_Hvr_Status", limit: 45
    t.string "Price_Clk_Status", limit: 45
    t.string "Estimated_Completion_Date", limit: 45
    t.string "Date_Hvr_Status", limit: 45
    t.string "Date_Clk_Status", limit: 45
    t.string "Lot_Size", limit: 45
    t.string "Size_Hvr_Status", limit: 45
    t.string "Size_Clk_Status", limit: 45
    t.string "Description"
    t.string "Desc_Hvr_Status", limit: 45
    t.string "Desc_Clk_Status", limit: 45
    t.string "Lot_Type", limit: 45, collation: "dec8_swedish_ci"
    t.string "Lt_Type_Hvr_Status", limit: 45
    t.string "Lt_Type_Clk_Status", limit: 45
    t.string "Available_Plans", limit: 45
    t.string "Avble_Hvr_Status", limit: 45
    t.string "Avble_Clk_Status", limit: 45
    t.string "Address", limit: 45
    t.string "Address_Hvr_Status", limit: 45
    t.string "Address_Clk_Status", limit: 45
    t.string "Lot_Premium", limit: 45
    t.string "Lot_Premium_Hvr_Status", limit: 45
    t.string "Lot_Premium_Clk_Status", limit: 45
    t.string "Elevation", limit: 45
    t.string "Elevation_Hvr_Status", limit: 45
    t.string "Elevation_Clk_Status", limit: 45
    t.string "sec_r_block", limit: 45
    t.string "sec_r_block_Hvr_Status", limit: 45
    t.string "sec_r_block_Clk_Status", limit: 45
    t.string "Plan_Name", limit: 45
    t.string "Plan_Name_Clk_Status", limit: 45
    t.string "Plan_Name_Hvr_Status", limit: 45
    t.string "lot_link_name", limit: 45
    t.string "lot_link_name_Clk_Status", limit: 45
    t.string "lot_link_name_Hvr_Status", limit: 45
    t.string "Color_Desc", limit: 45
    t.string "Color_Desc_Hvr_Status", limit: 45
    t.string "Color_Desc_Clk_Status", limit: 45
    t.text "enabled_statuses"
  end

  create_table "lot_reservation_transactions", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "lot_reservation_id"
    t.string "transaction_api_id"
    t.string "transaction_id"
    t.integer "transaction_type", default: 0
    t.json "paya_transaction_response"
    t.text "transaction_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lot_reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "tbldatum_id"
    t.integer "tbluser_id"
    t.integer "client_community_id"
    t.text "paya_redirect"
    t.string "uuid"
    t.integer "reservation_status", default: 0
    t.decimal "amount", precision: 10, scale: 2
    t.string "case_number"
    t.string "lasso_registrant_id"
    t.string "ms_sequence_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_community_id"], name: "index_lot_reservations_on_client_community_id"
    t.index ["tbluser_id"], name: "index_lot_reservations_on_tbluser_id"
  end

  create_table "lot_sizes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "ihms_data"
    t.string "lotvue_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lot_text_colors", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "lot_insight_text_color", limit: 45
    t.string "lot_buzz_text_color", limit: 45
  end

  create_table "lot_types", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Lot_Type"
    t.integer "Is_Active", default: 1
  end

  create_table "manage_color_schemes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "dev_code", limit: 45
    t.text "item_codes", limit: 4294967295
    t.text "item_code_and_description", limit: 4294967295
    t.text "item_desc", limit: 4294967295
    t.string "community"
    t.text "option_code", limit: 4294967295
    t.text "characteristics", limit: 4294967295
    t.text "company_code", limit: 4294967295
    t.string "company_n_dev_code"
  end

  create_table "manage_construction_start_dates", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ihms_or_lotvue", limit: 20, default: "ihms"
    t.string "activity_code", limit: 20
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manage_descriptions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ihms_data", limit: 45
    t.string "lotvue_data", limit: 45
  end

  create_table "manage_estimated_completion_dates", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ihms_data", limit: 45
    t.string "lotvue_data", limit: 45
  end

  create_table "manage_lot_alerts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "no_of_visitors_per_lot"
    t.text "alert_message"
    t.integer "time_interval"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alert_color"
    t.string "text_color"
    t.string "text_size"
  end

  create_table "manage_plan_fields", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.boolean "ihms_status"
    t.boolean "lotvue_status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ihms_field"
  end

  create_table "manage_variance_to_dates", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "selected_category_cost_codes", limit: 4294967295
    t.text "unselected_category_cost_codes", limit: 4294967295
    t.text "query", limit: 4294967295
  end

  create_table "manage_warranty_dates", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ihms_data", limit: 45
    t.string "lotvue_data", limit: 45
    t.integer "number_of_months"
  end

  create_table "manage_website_filters", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Community"
    t.string "filter_type"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_options", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "MenuName", limit: 50
    t.string "MenuOptionName", limit: 50
    t.integer "menu_order"
    t.integer "product_type"
  end

  create_table "net1_user_credentials", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "client_company_id"
    t.string "hpp_id"
    t.string "hpp_encryption_key"
    t.string "paya_user_id"
    t.string "paya_user_api_key"
    t.string "default_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_company_id"], name: "index_net1_user_credentials_on_client_company_id"
  end

  create_table "partner_api_responses", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "serviceable_type"
    t.bigint "serviceable_id"
    t.integer "service_name"
    t.integer "api_name"
    t.boolean "service_status"
    t.json "service_response_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["api_name"], name: "index_partner_api_responses_on_api_name"
    t.index ["service_name"], name: "index_partner_api_responses_on_service_name"
    t.index ["serviceable_type", "serviceable_id"], name: "index_api_responses_on_serviceable_type_and_serviceable_id"
  end

  create_table "plan_field_display_names", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Plan_Name"
    t.string "Plan_Url"
    t.string "Plan_Description"
    t.string "Priced_From"
    t.string "Sq_Feet"
    t.string "Floors"
    t.string "Bedrooms"
    t.string "Bathrooms"
    t.string "Garages"
    t.string "Full_Bathrooms", limit: 45
  end

  create_table "project_configurations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "config_hash"
    t.string "config_type"
    t.bigint "project_initial_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_initial_datum_id"], name: "index_project_configurations_on_project_initial_datum_id"
  end

  create_table "project_initial_data", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", comment: "latin1_swedish_ci", force: :cascade do |t|
    t.string "project_name", limit: 45
    t.string "project_abbrevation", limit: 45
    t.string "cache_key_val", limit: 45
    t.string "production_sql_db_name", limit: 45
    t.string "staging_sql_db_name", limit: 45
    t.string "jar_file_location", limit: 250
    t.text "dev_n_comm", limit: 4294967295
    t.string "project_staging_url", limit: 256
    t.string "project_production_url", limit: 256
    t.string "attachment_path", limit: 256
    t.string "document_path", limit: 256
    t.string "project_local_url", limit: 256
    t.string "city_nav_presence", limit: 25
    t.string "company_code_presence", limit: 45
    t.string "division_code_presence", limit: 45
    t.string "color_scheme", limit: 45
    t.text "footer", limit: 4294967295
    t.time "data_refresh_max_execution_time"
    t.string "data_refresh_time", limit: 256
    t.string "phase_navigation_name", limit: 45
    t.text "color_scheme_table"
    t.boolean "google_map"
    t.boolean "click_tracking"
    t.string "map_type", default: "roadmap"
    t.text "state"
    t.string "state_nav_presence", default: "false"
    t.boolean "lasso", default: false
    t.boolean "dynamic_lot_premium", default: false
    t.boolean "webhook_status", default: false
    t.string "webhook_auth_token"
    t.string "sales_force_id"
    t.integer "project_type"
    t.string "project_key"
    t.string "status", default: "0"
    t.text "project_beta_url"
    t.text "beta_sql_db_name"
    t.boolean "contact_form_status", default: true
    t.boolean "reserve_lot_configuration", default: false
    t.text "ms_api_url"
    t.text "ms_api_grant_type"
    t.text "ms_api_client_id"
    t.text "ms_api_client_secret"
    t.string "outer_lot_color", default: "#000"
    t.boolean "split_spec_status", default: false
    t.boolean "manual_refresh_status", default: true
    t.text "no_dev_codes_tables"
    t.boolean "webpreview_phase_navigation", default: false
    t.integer "data_refresh_days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_themes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "primary_color"
    t.string "secondary_color"
    t.string "text_color"
    t.string "bg_color"
    t.boolean "default_theme"
    t.boolean "status"
    t.bigint "project_initial_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_initial_datum_id"], name: "index_project_themes_on_project_initial_datum_id"
  end

  create_table "reports", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "document_file_name"
    t.string "display_document_file_name"
    t.datetime "document_updated_at"
    t.integer "tab_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "report_type", limit: 45
  end

  create_table "reports_filters", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "report_id"
    t.string "filter_name"
    t.integer "order_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports_tbldatum_fields", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "field_name"
    t.string "display_name"
    t.string "data_type_field"
    t.integer "order"
    t.string "query"
    t.string "group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserve_lot_configurations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.decimal "deposit_amount", precision: 10, scale: 2
    t.integer "reservation_period"
    t.integer "transaction_timeout"
    t.text "alert_message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "reservation_success_mail"
    t.text "reservation_failure_mail"
    t.text "reservation_success_alert_message"
    t.text "reservation_failure_alert_message"
    t.text "reservation_cancellation_alert_message"
    t.text "builder_email"
  end

  create_table "role_common_permissions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "role_id"
    t.integer "product_id"
    t.integer "menu_id"
    t.string "report_name"
    t.integer "permission"
    t.string "can_upload", limit: 45
    t.integer "report_id"
  end

  create_table "role_setting_items", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "role_definition_id"
    t.bigint "setting_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_definition_id"], name: "index_role_setting_items_on_role_definition_id"
    t.index ["setting_item_id"], name: "index_role_setting_items_on_setting_item_id"
  end

  create_table "sales_price_overrides", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.boolean "enable_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scattered_lots_lat_longs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "community"
    t.string "unique_id"
    t.text "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "svg_id"
  end

  create_table "set_lat_longs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "comm"
    t.string "phase"
    t.string "sw_lat"
    t.string "sw_long"
    t.string "ne_lat"
    t.string "ne_long"
    t.string "center_lat"
    t.string "center_long"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_time_zones", primary_key: "Id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "TimeZone"
    t.string "Abbrevation", limit: 45
  end

  create_table "setting_items", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "item_controller_url", limit: 150
    t.string "item_name", limit: 70
    t.string "product_type", limit: 10
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spec_agings", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Activity_Code", limit: 45
    t.string "Step_Number", limit: 45
    t.string "Description"
  end

  create_table "spec_agings_lots", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "HouseNumber", limit: 24
    t.string "Rp_SPEC_or_MODEL", limit: 15
    t.string "Development_Code", limit: 10
    t.string "Address", limit: 45
    t.string "Model_Name"
    t.date "Rp_QC_Stake_Date"
    t.integer "Rp_Aging"
    t.float "Rp_Retail_Price", limit: 53
    t.float "Rp_Discount", limit: 53
    t.float "Rp_Sales_Price", limit: 53
    t.string "Landscaped", limit: 1
    t.float "Rp_GM_Percent", limit: 53
    t.float "Rp_Loan_Amount", limit: 53
    t.string "Rp_Construction_Lender"
    t.string "Filing", limit: 10
  end

  create_table "status_keys", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "MenuOptionName", limit: 50
    t.text "LegendType", limit: 4294967295
    t.string "Community", limit: 225
    t.string "Product_Type", limit: 45
    t.string "legend_order", limit: 45
    t.integer "first_sec_thrd_filter_order"
    t.string "status_field_in_info_tbl", limit: 250
    t.text "characteristics", limit: 4294967295
    t.text "dev_code", limit: 4294967295
  end

  create_table "status_mappings", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "status_mapping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tabs", primary_key: "ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.integer "parent_tab_id"
    t.integer "has_child"
  end

  create_table "tblaccessgroup", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Group_Name", limit: 50
    t.string "Description"
    t.integer "fAccessGroup", limit: 2
    t.binary "fData", limit: 1
    t.binary "fUsers", limit: 1
    t.binary "rActivityRecord", limit: 1
    t.binary "rAllOtherReports", limit: 1
  end

  create_table "tbldataattachments", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "imageable_id"
    t.string "imageable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "product"
    t.string "community"
  end

  create_table "tblusers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "Invitation_Status"
    t.string "Email_Notifications"
    t.string "show_zero_status", limit: 45, default: "yes"
    t.string "Invitation_Action", limit: 45, collation: "utf8_general_ci"
    t.string "google_map_type"
    t.float "zoom_level"
    t.string "map_center"
    t.string "user_type"
    t.index ["email"], name: "index_tblusers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_tblusers_on_reset_password_token", unique: true
  end

  create_table "vanish_lots", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "vanish_lots", limit: 45
    t.string "lots_color", limit: 45
  end

  create_table "webhook_data", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "webhook_name", limit: 100
    t.json "params_data"
    t.string "error_message"
    t.string "status", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zero_count_statuses", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "zero_status_check", limit: 45
  end

  add_foreign_key "community_phases", "communities"
end
