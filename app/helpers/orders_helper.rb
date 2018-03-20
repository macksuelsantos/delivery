module OrdersHelper
  def status
    [
       ['Requested', 'REQUESTED'],
       ['Pending Payment', 'PENDING_PAYMENT'],
       ['Authorized', 'AUTHORIZED'],
       ['Processing', 'PROCESSING'],
       ['Delivering', 'DELIVERING'],
       ['Delivered', 'DELIVERED'],
       ['Canceled', 'CANCELED']
     ]
  end

  def payment
    [
       ['Cash', 'CASH'],
       ['Credit Card', 'CREDIT_CARD'],
       ['Debit Card', 'DEBIT_CARD'],
     ]
  end
end
