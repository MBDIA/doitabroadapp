class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:tracking, :suggestions, :accomodations]

  def tracking
    if @user.has_user_data?
      redirect_to new_user_datum_path
    elsif @user.has_reservation?
      redirect_to new_reservation_path(@user)
    elsif !@user.has_paid?
      redirect_to new_reservation_payment_path(current_user.reservation)
    else
      # Set the user's reservation
      @reservation = @user.reservation
    end
  end

  def suggestions
    if @user.has_user_data?
      redirect_to new_user_datum_path
    elsif @user.has_reservation?
      redirect_to new_reservation_path(@user)
    elsif !@user.has_paid?
      redirect_to new_reservation_payment_path(current_user.reservation)
    else
      # Set the user's reservation
      @reservation = @user.reservation
      # Set the suggestion if admin created it
      @diplomas = set_suggestions(@user.suggestion) unless @user.suggestion == nil
    end
  end

    def accomodations
      if @user.has_user_data?
        redirect_to new_user_datum_path
      elsif @user.has_reservation?
        redirect_to new_reservation_path(@user)
      elsif !@user.has_paid?
        redirect_to new_reservation_payment_path(current_user.reservation)
      else
        # Set the user's reservation
        @reservation = @user.reservation
      end
    end

    private

    # Set the user
    def set_user
      @user = current_user
    end

    # Put all 3 or 5 suggestions into an array, practical for suggestion display in dashboard
    def set_suggestions(suggestion)
      diplomas = []

      diplomas << Diploma.find(suggestion.diploma_one_id) unless suggestion.diploma_one_id == nil
      diplomas << Diploma.find(suggestion.diploma_two_id) unless suggestion.diploma_two_id == nil
      diplomas << Diploma.find(suggestion.diploma_three_id) unless suggestion.diploma_three_id == nil
      diplomas << Diploma.find(suggestion.diploma_four_id) unless suggestion.diploma_four_id == nil
      diplomas << Diploma.find(suggestion.diploma_five_id) unless suggestion.diploma_five_id == nil

      return diplomas
    end
  end
