package userPayment;


public interface UserPayService {

	UserPayVo paymentUser(UserPayVo vo) throws Exception;
	int insert(UserPayVo vo);
	int refundUpdate(UserPayVo vo);
	int userGrade(UserPayVo vo);
}
