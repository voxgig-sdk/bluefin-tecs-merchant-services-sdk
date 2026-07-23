package core

type BluefinTecsMerchantServicesError struct {
	IsBluefinTecsMerchantServicesError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewBluefinTecsMerchantServicesError(code string, msg string, ctx *Context) *BluefinTecsMerchantServicesError {
	return &BluefinTecsMerchantServicesError{
		IsBluefinTecsMerchantServicesError: true,
		Sdk:              "BluefinTecsMerchantServices",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *BluefinTecsMerchantServicesError) Error() string {
	return e.Msg
}
