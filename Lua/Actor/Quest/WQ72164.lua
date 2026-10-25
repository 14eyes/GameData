require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72164 = class("Quest72164", QuestActorProxy)
Quest72164.defaultAlias = "Quest72164"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72164:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72164:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216438"] = self.OnSubStart7216438,
        ["7216439"] = self.OnSubStart7216439,
        ["7216443"] = self.OnSubStart7216443,
        ["7216440"] = self.OnSubStart7216440,
        ["7216441"] = self.OnSubStart7216441,
        ["7216442"] = self.OnSubStart7216442,
        ["7216452"] = self.OnSubStart7216452,
        ["7216409"] = self.OnSubStart7216409,
        ["7216410"] = self.OnSubStart7216410,
        ["7216453"] = self.OnSubStart7216453,
        ["7216451"] = self.OnSubStart7216451,
        ["7216411"] = self.OnSubStart7216411,
        ["7216412"] = self.OnSubStart7216412,
        ["7216413"] = self.OnSubStart7216413,
        ["7216414"] = self.OnSubStart7216414,
        ["7216415"] = self.OnSubStart7216415,
        ["7216416"] = self.OnSubStart7216416,
        ["7216417"] = self.OnSubStart7216417,
        ["7216418"] = self.OnSubStart7216418,
        ["7216401"] = self.OnSubStart7216401,
        ["7216402"] = self.OnSubStart7216402,
        ["7216403"] = self.OnSubStart7216403,
        ["7216404"] = self.OnSubStart7216404,
        ["7216405"] = self.OnSubStart7216405,
        ["7216406"] = self.OnSubStart7216406,
        ["7216407"] = self.OnSubStart7216407,
        ["7216408"] = self.OnSubStart7216408,
        ["7216419"] = self.OnSubStart7216419,
        ["7216420"] = self.OnSubStart7216420,
        ["7216421"] = self.OnSubStart7216421,
        ["7216422"] = self.OnSubStart7216422,
        ["7216423"] = self.OnSubStart7216423,
        ["7216424"] = self.OnSubStart7216424,
        ["7216425"] = self.OnSubStart7216425,
        ["7216426"] = self.OnSubStart7216426,
        ["7216427"] = self.OnSubStart7216427,
        ["7216428"] = self.OnSubStart7216428,
        ["7216429"] = self.OnSubStart7216429,
        ["7216430"] = self.OnSubStart7216430,
        ["7216431"] = self.OnSubStart7216431,
        ["7216432"] = self.OnSubStart7216432,
        ["7216433"] = self.OnSubStart7216433,
        ["7216434"] = self.OnSubStart7216434,
        ["7216435"] = self.OnSubStart7216435,
        ["7216436"] = self.OnSubStart7216436,
        ["7216437"] = self.OnSubStart7216437,
        ["7216444"] = self.OnSubStart7216444,
        ["7216445"] = self.OnSubStart7216445,
        ["7216446"] = self.OnSubStart7216446,
        ["7216447"] = self.OnSubStart7216447,
        ["7216448"] = self.OnSubStart7216448,
        ["7216449"] = self.OnSubStart7216449,
        ["7216450"] = self.OnSubStart7216450
    }
end

function Quest72164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216438"] = self.OnSubFinish7216438,
        ["7216439"] = self.OnSubFinish7216439,
        ["7216443"] = self.OnSubFinish7216443,
        ["7216440"] = self.OnSubFinish7216440,
        ["7216441"] = self.OnSubFinish7216441,
        ["7216442"] = self.OnSubFinish7216442,
        ["7216452"] = self.OnSubFinish7216452,
        ["7216409"] = self.OnSubFinish7216409,
        ["7216410"] = self.OnSubFinish7216410,
        ["7216453"] = self.OnSubFinish7216453,
        ["7216451"] = self.OnSubFinish7216451,
        ["7216411"] = self.OnSubFinish7216411,
        ["7216412"] = self.OnSubFinish7216412,
        ["7216413"] = self.OnSubFinish7216413,
        ["7216414"] = self.OnSubFinish7216414,
        ["7216415"] = self.OnSubFinish7216415,
        ["7216416"] = self.OnSubFinish7216416,
        ["7216417"] = self.OnSubFinish7216417,
        ["7216418"] = self.OnSubFinish7216418,
        ["7216401"] = self.OnSubFinish7216401,
        ["7216402"] = self.OnSubFinish7216402,
        ["7216403"] = self.OnSubFinish7216403,
        ["7216404"] = self.OnSubFinish7216404,
        ["7216405"] = self.OnSubFinish7216405,
        ["7216406"] = self.OnSubFinish7216406,
        ["7216407"] = self.OnSubFinish7216407,
        ["7216408"] = self.OnSubFinish7216408,
        ["7216419"] = self.OnSubFinish7216419,
        ["7216420"] = self.OnSubFinish7216420,
        ["7216421"] = self.OnSubFinish7216421,
        ["7216422"] = self.OnSubFinish7216422,
        ["7216423"] = self.OnSubFinish7216423,
        ["7216424"] = self.OnSubFinish7216424,
        ["7216425"] = self.OnSubFinish7216425,
        ["7216426"] = self.OnSubFinish7216426,
        ["7216427"] = self.OnSubFinish7216427,
        ["7216428"] = self.OnSubFinish7216428,
        ["7216429"] = self.OnSubFinish7216429,
        ["7216430"] = self.OnSubFinish7216430,
        ["7216431"] = self.OnSubFinish7216431,
        ["7216432"] = self.OnSubFinish7216432,
        ["7216433"] = self.OnSubFinish7216433,
        ["7216434"] = self.OnSubFinish7216434,
        ["7216435"] = self.OnSubFinish7216435,
        ["7216436"] = self.OnSubFinish7216436,
        ["7216437"] = self.OnSubFinish7216437,
        ["7216444"] = self.OnSubFinish7216444,
        ["7216445"] = self.OnSubFinish7216445,
        ["7216446"] = self.OnSubFinish7216446,
        ["7216447"] = self.OnSubFinish7216447,
        ["7216448"] = self.OnSubFinish7216448,
        ["7216449"] = self.OnSubFinish7216449,
        ["7216450"] = self.OnSubFinish7216450
    }
end

function Quest72164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216438"] = self.OnSubFailed7216438,
        ["7216439"] = self.OnSubFailed7216439,
        ["7216443"] = self.OnSubFailed7216443,
        ["7216440"] = self.OnSubFailed7216440,
        ["7216441"] = self.OnSubFailed7216441,
        ["7216442"] = self.OnSubFailed7216442,
        ["7216452"] = self.OnSubFailed7216452,
        ["7216409"] = self.OnSubFailed7216409,
        ["7216410"] = self.OnSubFailed7216410,
        ["7216453"] = self.OnSubFailed7216453,
        ["7216451"] = self.OnSubFailed7216451,
        ["7216411"] = self.OnSubFailed7216411,
        ["7216412"] = self.OnSubFailed7216412,
        ["7216413"] = self.OnSubFailed7216413,
        ["7216414"] = self.OnSubFailed7216414,
        ["7216415"] = self.OnSubFailed7216415,
        ["7216416"] = self.OnSubFailed7216416,
        ["7216417"] = self.OnSubFailed7216417,
        ["7216418"] = self.OnSubFailed7216418,
        ["7216401"] = self.OnSubFailed7216401,
        ["7216402"] = self.OnSubFailed7216402,
        ["7216403"] = self.OnSubFailed7216403,
        ["7216404"] = self.OnSubFailed7216404,
        ["7216405"] = self.OnSubFailed7216405,
        ["7216406"] = self.OnSubFailed7216406,
        ["7216407"] = self.OnSubFailed7216407,
        ["7216408"] = self.OnSubFailed7216408,
        ["7216419"] = self.OnSubFailed7216419,
        ["7216420"] = self.OnSubFailed7216420,
        ["7216421"] = self.OnSubFailed7216421,
        ["7216422"] = self.OnSubFailed7216422,
        ["7216423"] = self.OnSubFailed7216423,
        ["7216424"] = self.OnSubFailed7216424,
        ["7216425"] = self.OnSubFailed7216425,
        ["7216426"] = self.OnSubFailed7216426,
        ["7216427"] = self.OnSubFailed7216427,
        ["7216428"] = self.OnSubFailed7216428,
        ["7216429"] = self.OnSubFailed7216429,
        ["7216430"] = self.OnSubFailed7216430,
        ["7216431"] = self.OnSubFailed7216431,
        ["7216432"] = self.OnSubFailed7216432,
        ["7216433"] = self.OnSubFailed7216433,
        ["7216434"] = self.OnSubFailed7216434,
        ["7216435"] = self.OnSubFailed7216435,
        ["7216436"] = self.OnSubFailed7216436,
        ["7216437"] = self.OnSubFailed7216437,
        ["7216444"] = self.OnSubFailed7216444,
        ["7216445"] = self.OnSubFailed7216445,
        ["7216446"] = self.OnSubFailed7216446,
        ["7216447"] = self.OnSubFailed7216447,
        ["7216448"] = self.OnSubFailed7216448,
        ["7216449"] = self.OnSubFailed7216449,
        ["7216450"] = self.OnSubFailed7216450
    }
end

function Quest72164:Start()
    print("Start")
end

function Quest72164:OnDestroy()
    print("OnDestroy")
end

function Quest72164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72164:OnSubStart7216438(arg1)
    print("OnSubStart7216438")
end

function Quest72164:OnSubFinish7216438(arg1)
    print("OnSubFinish7216438")
end

function Quest72164:OnSubFailed7216438(arg1)
    print("OnSubFailed7216438")
end

function Quest72164:OnSubStart7216439(arg1)
    print("OnSubStart7216439")
end

function Quest72164:OnSubFinish7216439(arg1)
    print("OnSubFinish7216439")
end

function Quest72164:OnSubFailed7216439(arg1)
    print("OnSubFailed7216439")
end

function Quest72164:OnSubStart7216443(arg1)
    print("OnSubStart7216443")
end

function Quest72164:OnSubFinish7216443(arg1)
    print("OnSubFinish7216443")
end

function Quest72164:OnSubFailed7216443(arg1)
    print("OnSubFailed7216443")
end

function Quest72164:OnSubStart7216440(arg1)
    print("OnSubStart7216440")
end

function Quest72164:OnSubFinish7216440(arg1)
    print("OnSubFinish7216440")
end

function Quest72164:OnSubFailed7216440(arg1)
    print("OnSubFailed7216440")
end

function Quest72164:OnSubStart7216441(arg1)
    print("OnSubStart7216441")
end

function Quest72164:OnSubFinish7216441(arg1)
    print("OnSubFinish7216441")
end

function Quest72164:OnSubFailed7216441(arg1)
    print("OnSubFailed7216441")
end

function Quest72164:OnSubStart7216442(arg1)
    print("OnSubStart7216442")
end

function Quest72164:OnSubFinish7216442(arg1)
    print("OnSubFinish7216442")
end

function Quest72164:OnSubFailed7216442(arg1)
    print("OnSubFailed7216442")
end

function Quest72164:OnSubStart7216452(arg1)
    print("OnSubStart7216452")
end

function Quest72164:OnSubFinish7216452(arg1)
    print("OnSubFinish7216452")
end

function Quest72164:OnSubFailed7216452(arg1)
    print("OnSubFailed7216452")
end

function Quest72164:OnSubStart7216409(arg1)
    print("OnSubStart7216409")
end

function Quest72164:OnSubFinish7216409(arg1)
    print("OnSubFinish7216409")
end

function Quest72164:OnSubFailed7216409(arg1)
    print("OnSubFailed7216409")
end

function Quest72164:OnSubStart7216410(arg1)
    print("OnSubStart7216410")
end

function Quest72164:OnSubFinish7216410(arg1)
    print("OnSubFinish7216410")
end

function Quest72164:OnSubFailed7216410(arg1)
    print("OnSubFailed7216410")
end

function Quest72164:OnSubStart7216453(arg1)
    print("OnSubStart7216453")
end

function Quest72164:OnSubFinish7216453(arg1)
    print("OnSubFinish7216453")
end

function Quest72164:OnSubFailed7216453(arg1)
    print("OnSubFailed7216453")
end

function Quest72164:OnSubStart7216451(arg1)
    print("OnSubStart7216451")
end

function Quest72164:OnSubFinish7216451(arg1)
    print("OnSubFinish7216451")
end

function Quest72164:OnSubFailed7216451(arg1)
    print("OnSubFailed7216451")
end

function Quest72164:OnSubStart7216411(arg1)
    print("OnSubStart7216411")
end

function Quest72164:OnSubFinish7216411(arg1)
    print("OnSubFinish7216411")
end

function Quest72164:OnSubFailed7216411(arg1)
    print("OnSubFailed7216411")
end

function Quest72164:OnSubStart7216412(arg1)
    print("OnSubStart7216412")
end

function Quest72164:OnSubFinish7216412(arg1)
    print("OnSubFinish7216412")
end

function Quest72164:OnSubFailed7216412(arg1)
    print("OnSubFailed7216412")
end

function Quest72164:OnSubStart7216413(arg1)
    print("OnSubStart7216413")
end

function Quest72164:OnSubFinish7216413(arg1)
    print("OnSubFinish7216413")
end

function Quest72164:OnSubFailed7216413(arg1)
    print("OnSubFailed7216413")
end

function Quest72164:OnSubStart7216414(arg1)
    print("OnSubStart7216414")
end

function Quest72164:OnSubFinish7216414(arg1)
    print("OnSubFinish7216414")
end

function Quest72164:OnSubFailed7216414(arg1)
    print("OnSubFailed7216414")
end

function Quest72164:OnSubStart7216415(arg1)
    print("OnSubStart7216415")
end

function Quest72164:OnSubFinish7216415(arg1)
    print("OnSubFinish7216415")
end

function Quest72164:OnSubFailed7216415(arg1)
    print("OnSubFailed7216415")
end

function Quest72164:OnSubStart7216416(arg1)
    print("OnSubStart7216416")
end

function Quest72164:OnSubFinish7216416(arg1)
    print("OnSubFinish7216416")
end

function Quest72164:OnSubFailed7216416(arg1)
    print("OnSubFailed7216416")
end

function Quest72164:OnSubStart7216417(arg1)
    print("OnSubStart7216417")
end

function Quest72164:OnSubFinish7216417(arg1)
    print("OnSubFinish7216417")
end

function Quest72164:OnSubFailed7216417(arg1)
    print("OnSubFailed7216417")
end

function Quest72164:OnSubStart7216418(arg1)
    print("OnSubStart7216418")
end

function Quest72164:OnSubFinish7216418(arg1)
    print("OnSubFinish7216418")
end

function Quest72164:OnSubFailed7216418(arg1)
    print("OnSubFailed7216418")
end

function Quest72164:OnSubStart7216401(arg1)
    print("OnSubStart7216401")
end

function Quest72164:OnSubFinish7216401(arg1)
    print("OnSubFinish7216401")
end

function Quest72164:OnSubFailed7216401(arg1)
    print("OnSubFailed7216401")
end

function Quest72164:OnSubStart7216402(arg1)
    print("OnSubStart7216402")
end

function Quest72164:OnSubFinish7216402(arg1)
    print("OnSubFinish7216402")
end

function Quest72164:OnSubFailed7216402(arg1)
    print("OnSubFailed7216402")
end

function Quest72164:OnSubStart7216403(arg1)
    print("OnSubStart7216403")
end

function Quest72164:OnSubFinish7216403(arg1)
    print("OnSubFinish7216403")
end

function Quest72164:OnSubFailed7216403(arg1)
    print("OnSubFailed7216403")
end

function Quest72164:OnSubStart7216404(arg1)
    print("OnSubStart7216404")
end

function Quest72164:OnSubFinish7216404(arg1)
    print("OnSubFinish7216404")
end

function Quest72164:OnSubFailed7216404(arg1)
    print("OnSubFailed7216404")
end

function Quest72164:OnSubStart7216405(arg1)
    print("OnSubStart7216405")
end

function Quest72164:OnSubFinish7216405(arg1)
    print("OnSubFinish7216405")
end

function Quest72164:OnSubFailed7216405(arg1)
    print("OnSubFailed7216405")
end

function Quest72164:OnSubStart7216406(arg1)
    print("OnSubStart7216406")
end

function Quest72164:OnSubFinish7216406(arg1)
    print("OnSubFinish7216406")
end

function Quest72164:OnSubFailed7216406(arg1)
    print("OnSubFailed7216406")
end

function Quest72164:OnSubStart7216407(arg1)
    print("OnSubStart7216407")
end

function Quest72164:OnSubFinish7216407(arg1)
    print("OnSubFinish7216407")
end

function Quest72164:OnSubFailed7216407(arg1)
    print("OnSubFailed7216407")
end

function Quest72164:OnSubStart7216408(arg1)
    print("OnSubStart7216408")
end

function Quest72164:OnSubFinish7216408(arg1)
    print("OnSubFinish7216408")
end

function Quest72164:OnSubFailed7216408(arg1)
    print("OnSubFailed7216408")
end

function Quest72164:OnSubStart7216419(arg1)
    print("OnSubStart7216419")
end

function Quest72164:OnSubFinish7216419(arg1)
    print("OnSubFinish7216419")
end

function Quest72164:OnSubFailed7216419(arg1)
    print("OnSubFailed7216419")
end

function Quest72164:OnSubStart7216420(arg1)
    print("OnSubStart7216420")
end

function Quest72164:OnSubFinish7216420(arg1)
    print("OnSubFinish7216420")
end

function Quest72164:OnSubFailed7216420(arg1)
    print("OnSubFailed7216420")
end

function Quest72164:OnSubStart7216421(arg1)
    print("OnSubStart7216421")
end

function Quest72164:OnSubFinish7216421(arg1)
    print("OnSubFinish7216421")
end

function Quest72164:OnSubFailed7216421(arg1)
    print("OnSubFailed7216421")
end

function Quest72164:OnSubStart7216422(arg1)
    print("OnSubStart7216422")
end

function Quest72164:OnSubFinish7216422(arg1)
    print("OnSubFinish7216422")
end

function Quest72164:OnSubFailed7216422(arg1)
    print("OnSubFailed7216422")
end

function Quest72164:OnSubStart7216423(arg1)
    print("OnSubStart7216423")
end

function Quest72164:OnSubFinish7216423(arg1)
    print("OnSubFinish7216423")
end

function Quest72164:OnSubFailed7216423(arg1)
    print("OnSubFailed7216423")
end

function Quest72164:OnSubStart7216424(arg1)
    print("OnSubStart7216424")
end

function Quest72164:OnSubFinish7216424(arg1)
    print("OnSubFinish7216424")
end

function Quest72164:OnSubFailed7216424(arg1)
    print("OnSubFailed7216424")
end

function Quest72164:OnSubStart7216425(arg1)
    print("OnSubStart7216425")
end

function Quest72164:OnSubFinish7216425(arg1)
    print("OnSubFinish7216425")
end

function Quest72164:OnSubFailed7216425(arg1)
    print("OnSubFailed7216425")
end

function Quest72164:OnSubStart7216426(arg1)
    print("OnSubStart7216426")
end

function Quest72164:OnSubFinish7216426(arg1)
    print("OnSubFinish7216426")
end

function Quest72164:OnSubFailed7216426(arg1)
    print("OnSubFailed7216426")
end

function Quest72164:OnSubStart7216427(arg1)
    print("OnSubStart7216427")
end

function Quest72164:OnSubFinish7216427(arg1)
    print("OnSubFinish7216427")
end

function Quest72164:OnSubFailed7216427(arg1)
    print("OnSubFailed7216427")
end

function Quest72164:OnSubStart7216428(arg1)
    print("OnSubStart7216428")
end

function Quest72164:OnSubFinish7216428(arg1)
    print("OnSubFinish7216428")
end

function Quest72164:OnSubFailed7216428(arg1)
    print("OnSubFailed7216428")
end

function Quest72164:OnSubStart7216429(arg1)
    print("OnSubStart7216429")
end

function Quest72164:OnSubFinish7216429(arg1)
    print("OnSubFinish7216429")
end

function Quest72164:OnSubFailed7216429(arg1)
    print("OnSubFailed7216429")
end

function Quest72164:OnSubStart7216430(arg1)
    print("OnSubStart7216430")
end

function Quest72164:OnSubFinish7216430(arg1)
    print("OnSubFinish7216430")
end

function Quest72164:OnSubFailed7216430(arg1)
    print("OnSubFailed7216430")
end

function Quest72164:OnSubStart7216431(arg1)
    print("OnSubStart7216431")
end

function Quest72164:OnSubFinish7216431(arg1)
    print("OnSubFinish7216431")
end

function Quest72164:OnSubFailed7216431(arg1)
    print("OnSubFailed7216431")
end

function Quest72164:OnSubStart7216432(arg1)
    print("OnSubStart7216432")
end

function Quest72164:OnSubFinish7216432(arg1)
    print("OnSubFinish7216432")
end

function Quest72164:OnSubFailed7216432(arg1)
    print("OnSubFailed7216432")
end

function Quest72164:OnSubStart7216433(arg1)
    print("OnSubStart7216433")
end

function Quest72164:OnSubFinish7216433(arg1)
    print("OnSubFinish7216433")
end

function Quest72164:OnSubFailed7216433(arg1)
    print("OnSubFailed7216433")
end

function Quest72164:OnSubStart7216434(arg1)
    print("OnSubStart7216434")
end

function Quest72164:OnSubFinish7216434(arg1)
    print("OnSubFinish7216434")
end

function Quest72164:OnSubFailed7216434(arg1)
    print("OnSubFailed7216434")
end

function Quest72164:OnSubStart7216435(arg1)
    print("OnSubStart7216435")
end

function Quest72164:OnSubFinish7216435(arg1)
    print("OnSubFinish7216435")
end

function Quest72164:OnSubFailed7216435(arg1)
    print("OnSubFailed7216435")
end

function Quest72164:OnSubStart7216436(arg1)
    print("OnSubStart7216436")
end

function Quest72164:OnSubFinish7216436(arg1)
    print("OnSubFinish7216436")
end

function Quest72164:OnSubFailed7216436(arg1)
    print("OnSubFailed7216436")
end

function Quest72164:OnSubStart7216437(arg1)
    print("OnSubStart7216437")
end

function Quest72164:OnSubFinish7216437(arg1)
    print("OnSubFinish7216437")
end

function Quest72164:OnSubFailed7216437(arg1)
    print("OnSubFailed7216437")
end

function Quest72164:OnSubStart7216444(arg1)
    print("OnSubStart7216444")
end

function Quest72164:OnSubFinish7216444(arg1)
    print("OnSubFinish7216444")
end

function Quest72164:OnSubFailed7216444(arg1)
    print("OnSubFailed7216444")
end

function Quest72164:OnSubStart7216445(arg1)
    print("OnSubStart7216445")
end

function Quest72164:OnSubFinish7216445(arg1)
    print("OnSubFinish7216445")
end

function Quest72164:OnSubFailed7216445(arg1)
    print("OnSubFailed7216445")
end

function Quest72164:OnSubStart7216446(arg1)
    print("OnSubStart7216446")
end

function Quest72164:OnSubFinish7216446(arg1)
    print("OnSubFinish7216446")
end

function Quest72164:OnSubFailed7216446(arg1)
    print("OnSubFailed7216446")
end

function Quest72164:OnSubStart7216447(arg1)
    print("OnSubStart7216447")
end

function Quest72164:OnSubFinish7216447(arg1)
    print("OnSubFinish7216447")
end

function Quest72164:OnSubFailed7216447(arg1)
    print("OnSubFailed7216447")
end

function Quest72164:OnSubStart7216448(arg1)
    print("OnSubStart7216448")
end

function Quest72164:OnSubFinish7216448(arg1)
    print("OnSubFinish7216448")
end

function Quest72164:OnSubFailed7216448(arg1)
    print("OnSubFailed7216448")
end

function Quest72164:OnSubStart7216449(arg1)
    print("OnSubStart7216449")
end

function Quest72164:OnSubFinish7216449(arg1)
    print("OnSubFinish7216449")
end

function Quest72164:OnSubFailed7216449(arg1)
    print("OnSubFailed7216449")
end

function Quest72164:OnSubStart7216450(arg1)
    print("OnSubStart7216450")
end

function Quest72164:OnSubFinish7216450(arg1)
    print("OnSubFinish7216450")
end

function Quest72164:OnSubFailed7216450(arg1)
    print("OnSubFailed7216450")
end

return Quest72164
