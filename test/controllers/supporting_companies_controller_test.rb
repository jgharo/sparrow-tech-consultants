require 'test_helper'

class SupportingCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supporting_company = supporting_companies(:one)
  end

  test "should get index" do
    get supporting_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_supporting_company_url
    assert_response :success
  end

  test "should create supporting_company" do
    assert_difference('SupportingCompany.count') do
      post supporting_companies_url, params: { supporting_company: { scpaymentinfo_id: @supporting_company.scpaymentinfo_id, stlservice_id: @supporting_company.stlservice_id, supportingcomp_email: @supporting_company.supportingcomp_email, supportingcomp_name: @supporting_company.supportingcomp_name } }
    end

    assert_redirected_to supporting_company_url(SupportingCompany.last)
  end

  test "should show supporting_company" do
    get supporting_company_url(@supporting_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_supporting_company_url(@supporting_company)
    assert_response :success
  end

  test "should update supporting_company" do
    patch supporting_company_url(@supporting_company), params: { supporting_company: { scpaymentinfo_id: @supporting_company.scpaymentinfo_id, stlservice_id: @supporting_company.stlservice_id, supportingcomp_email: @supporting_company.supportingcomp_email, supportingcomp_name: @supporting_company.supportingcomp_name } }
    assert_redirected_to supporting_company_url(@supporting_company)
  end

  test "should destroy supporting_company" do
    assert_difference('SupportingCompany.count', -1) do
      delete supporting_company_url(@supporting_company)
    end

    assert_redirected_to supporting_companies_url
  end
end
