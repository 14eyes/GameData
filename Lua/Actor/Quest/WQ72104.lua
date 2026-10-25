require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72104 = class("Quest72104", QuestActorProxy)
Quest72104.defaultAlias = "Quest72104"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72104:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210425"] = self.OnSubStart7210425,
        ["7210415"] = self.OnSubStart7210415,
        ["7210419"] = self.OnSubStart7210419,
        ["7210420"] = self.OnSubStart7210420,
        ["7210421"] = self.OnSubStart7210421,
        ["7210422"] = self.OnSubStart7210422,
        ["7210423"] = self.OnSubStart7210423,
        ["7210416"] = self.OnSubStart7210416,
        ["7210417"] = self.OnSubStart7210417,
        ["7210418"] = self.OnSubStart7210418,
        ["7210435"] = self.OnSubStart7210435,
        ["7210436"] = self.OnSubStart7210436,
        ["7210437"] = self.OnSubStart7210437,
        ["7210424"] = self.OnSubStart7210424,
        ["7210401"] = self.OnSubStart7210401,
        ["7210402"] = self.OnSubStart7210402,
        ["7210403"] = self.OnSubStart7210403,
        ["7210404"] = self.OnSubStart7210404,
        ["7210405"] = self.OnSubStart7210405,
        ["7210406"] = self.OnSubStart7210406,
        ["7210407"] = self.OnSubStart7210407,
        ["7210426"] = self.OnSubStart7210426,
        ["7210427"] = self.OnSubStart7210427,
        ["7210428"] = self.OnSubStart7210428,
        ["7210429"] = self.OnSubStart7210429,
        ["7210430"] = self.OnSubStart7210430,
        ["7210431"] = self.OnSubStart7210431,
        ["7210432"] = self.OnSubStart7210432,
        ["7210433"] = self.OnSubStart7210433,
        ["7210434"] = self.OnSubStart7210434,
        ["7210408"] = self.OnSubStart7210408,
        ["7210409"] = self.OnSubStart7210409,
        ["7210410"] = self.OnSubStart7210410,
        ["7210411"] = self.OnSubStart7210411,
        ["7210412"] = self.OnSubStart7210412,
        ["7210413"] = self.OnSubStart7210413,
        ["7210414"] = self.OnSubStart7210414
    }
end

function Quest72104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210425"] = self.OnSubFinish7210425,
        ["7210415"] = self.OnSubFinish7210415,
        ["7210419"] = self.OnSubFinish7210419,
        ["7210420"] = self.OnSubFinish7210420,
        ["7210421"] = self.OnSubFinish7210421,
        ["7210422"] = self.OnSubFinish7210422,
        ["7210423"] = self.OnSubFinish7210423,
        ["7210416"] = self.OnSubFinish7210416,
        ["7210417"] = self.OnSubFinish7210417,
        ["7210418"] = self.OnSubFinish7210418,
        ["7210435"] = self.OnSubFinish7210435,
        ["7210436"] = self.OnSubFinish7210436,
        ["7210437"] = self.OnSubFinish7210437,
        ["7210424"] = self.OnSubFinish7210424,
        ["7210401"] = self.OnSubFinish7210401,
        ["7210402"] = self.OnSubFinish7210402,
        ["7210403"] = self.OnSubFinish7210403,
        ["7210404"] = self.OnSubFinish7210404,
        ["7210405"] = self.OnSubFinish7210405,
        ["7210406"] = self.OnSubFinish7210406,
        ["7210407"] = self.OnSubFinish7210407,
        ["7210426"] = self.OnSubFinish7210426,
        ["7210427"] = self.OnSubFinish7210427,
        ["7210428"] = self.OnSubFinish7210428,
        ["7210429"] = self.OnSubFinish7210429,
        ["7210430"] = self.OnSubFinish7210430,
        ["7210431"] = self.OnSubFinish7210431,
        ["7210432"] = self.OnSubFinish7210432,
        ["7210433"] = self.OnSubFinish7210433,
        ["7210434"] = self.OnSubFinish7210434,
        ["7210408"] = self.OnSubFinish7210408,
        ["7210409"] = self.OnSubFinish7210409,
        ["7210410"] = self.OnSubFinish7210410,
        ["7210411"] = self.OnSubFinish7210411,
        ["7210412"] = self.OnSubFinish7210412,
        ["7210413"] = self.OnSubFinish7210413,
        ["7210414"] = self.OnSubFinish7210414
    }
end

function Quest72104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210425"] = self.OnSubFailed7210425,
        ["7210415"] = self.OnSubFailed7210415,
        ["7210419"] = self.OnSubFailed7210419,
        ["7210420"] = self.OnSubFailed7210420,
        ["7210421"] = self.OnSubFailed7210421,
        ["7210422"] = self.OnSubFailed7210422,
        ["7210423"] = self.OnSubFailed7210423,
        ["7210416"] = self.OnSubFailed7210416,
        ["7210417"] = self.OnSubFailed7210417,
        ["7210418"] = self.OnSubFailed7210418,
        ["7210435"] = self.OnSubFailed7210435,
        ["7210436"] = self.OnSubFailed7210436,
        ["7210437"] = self.OnSubFailed7210437,
        ["7210424"] = self.OnSubFailed7210424,
        ["7210401"] = self.OnSubFailed7210401,
        ["7210402"] = self.OnSubFailed7210402,
        ["7210403"] = self.OnSubFailed7210403,
        ["7210404"] = self.OnSubFailed7210404,
        ["7210405"] = self.OnSubFailed7210405,
        ["7210406"] = self.OnSubFailed7210406,
        ["7210407"] = self.OnSubFailed7210407,
        ["7210426"] = self.OnSubFailed7210426,
        ["7210427"] = self.OnSubFailed7210427,
        ["7210428"] = self.OnSubFailed7210428,
        ["7210429"] = self.OnSubFailed7210429,
        ["7210430"] = self.OnSubFailed7210430,
        ["7210431"] = self.OnSubFailed7210431,
        ["7210432"] = self.OnSubFailed7210432,
        ["7210433"] = self.OnSubFailed7210433,
        ["7210434"] = self.OnSubFailed7210434,
        ["7210408"] = self.OnSubFailed7210408,
        ["7210409"] = self.OnSubFailed7210409,
        ["7210410"] = self.OnSubFailed7210410,
        ["7210411"] = self.OnSubFailed7210411,
        ["7210412"] = self.OnSubFailed7210412,
        ["7210413"] = self.OnSubFailed7210413,
        ["7210414"] = self.OnSubFailed7210414
    }
end

function Quest72104:Start()
    print("Start")
end

function Quest72104:OnDestroy()
    print("OnDestroy")
end

function Quest72104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72104:OnSubStart7210425(arg1)
    print("OnSubStart7210425")
    self:CreateQuestNpc(arg1, npcs.Npc20317Data.id, 1)
end

function Quest72104:OnSubFinish7210425(arg1)
    print("OnSubFinish7210425")
    self:SafeDestroyQuestNpc(npcs.Npc20317Data.alias, 3)
end

function Quest72104:OnSubFailed7210425(arg1)
    print("OnSubFailed7210425")
end

function Quest72104:OnSubStart7210415(arg1)
    print("OnSubStart7210415")
    self:FinishQuestID(false, 7210415)
end

function Quest72104:OnSubFinish7210415(arg1)
    print("OnSubFinish7210415")
end

function Quest72104:OnSubFailed7210415(arg1)
    print("OnSubFailed7210415")
end

function Quest72104:OnSubStart7210419(arg1)
    print("OnSubStart7210419")
end

function Quest72104:OnSubFinish7210419(arg1)
    print("OnSubFinish7210419")
end

function Quest72104:OnSubFailed7210419(arg1)
    print("OnSubFailed7210419")
end

function Quest72104:OnSubStart7210420(arg1)
    print("OnSubStart7210420")
end

function Quest72104:OnSubFinish7210420(arg1)
    print("OnSubFinish7210420")
end

function Quest72104:OnSubFailed7210420(arg1)
    print("OnSubFailed7210420")
end

function Quest72104:OnSubStart7210421(arg1)
    print("OnSubStart7210421")
end

function Quest72104:OnSubFinish7210421(arg1)
    print("OnSubFinish7210421")
end

function Quest72104:OnSubFailed7210421(arg1)
    print("OnSubFailed7210421")
end

function Quest72104:OnSubStart7210422(arg1)
    print("OnSubStart7210422")
end

function Quest72104:OnSubFinish7210422(arg1)
    print("OnSubFinish7210422")
    self:SafeDestroyQuestNpc(npcs.Npc20317Data.alias, 3)
end

function Quest72104:OnSubFailed7210422(arg1)
    print("OnSubFailed7210422")
end

function Quest72104:OnSubStart7210423(arg1)
    print("OnSubStart7210423")
end

function Quest72104:OnSubFinish7210423(arg1)
    print("OnSubFinish7210423")
    self:NarratorOnlyTask(datas.Paimon2, nil, "")
end

function Quest72104:OnSubFailed7210423(arg1)
    print("OnSubFailed7210423")
end

function Quest72104:OnSubStart7210416(arg1)
    print("OnSubStart7210416")
end

function Quest72104:OnSubFinish7210416(arg1)
    print("OnSubFinish7210416")
    self:NarratorOnlyTask(datas.Paimon1, nil, "")
end

function Quest72104:OnSubFailed7210416(arg1)
    print("OnSubFailed7210416")
end

function Quest72104:OnSubStart7210417(arg1)
    print("OnSubStart7210417")
end

function Quest72104:OnSubFinish7210417(arg1)
    print("OnSubFinish7210417")
end

function Quest72104:OnSubFailed7210417(arg1)
    print("OnSubFailed7210417")
end

function Quest72104:OnSubStart7210418(arg1)
    print("OnSubStart7210418")
end

function Quest72104:OnSubFinish7210418(arg1)
    print("OnSubFinish7210418")
end

function Quest72104:OnSubFailed7210418(arg1)
    print("OnSubFailed7210418")
end

function Quest72104:OnSubStart7210435(arg1)
    print("OnSubStart7210435")
end

function Quest72104:OnSubFinish7210435(arg1)
    print("OnSubFinish7210435")
end

function Quest72104:OnSubFailed7210435(arg1)
    print("OnSubFailed7210435")
end

function Quest72104:OnSubStart7210436(arg1)
    print("OnSubStart7210436")
end

function Quest72104:OnSubFinish7210436(arg1)
    print("OnSubFinish7210436")
end

function Quest72104:OnSubFailed7210436(arg1)
    print("OnSubFailed7210436")
end

function Quest72104:OnSubStart7210437(arg1)
    print("OnSubStart7210437")
end

function Quest72104:OnSubFinish7210437(arg1)
    print("OnSubFinish7210437")
end

function Quest72104:OnSubFailed7210437(arg1)
    print("OnSubFailed7210437")
end

function Quest72104:OnSubStart7210424(arg1)
    print("OnSubStart7210424")
end

function Quest72104:OnSubFinish7210424(arg1)
    print("OnSubFinish7210424")
end

function Quest72104:OnSubFailed7210424(arg1)
    print("OnSubFailed7210424")
end

function Quest72104:OnSubStart7210401(arg1)
    print("OnSubStart7210401")
end

function Quest72104:OnSubFinish7210401(arg1)
    print("OnSubFinish7210401")
end

function Quest72104:OnSubFailed7210401(arg1)
    print("OnSubFailed7210401")
end

function Quest72104:OnSubStart7210402(arg1)
    print("OnSubStart7210402")
end

function Quest72104:OnSubFinish7210402(arg1)
    print("OnSubFinish7210402")
end

function Quest72104:OnSubFailed7210402(arg1)
    print("OnSubFailed7210402")
end

function Quest72104:OnSubStart7210403(arg1)
    print("OnSubStart7210403")
end

function Quest72104:OnSubFinish7210403(arg1)
    print("OnSubFinish7210403")
end

function Quest72104:OnSubFailed7210403(arg1)
    print("OnSubFailed7210403")
end

function Quest72104:OnSubStart7210404(arg1)
    print("OnSubStart7210404")
end

function Quest72104:OnSubFinish7210404(arg1)
    print("OnSubFinish7210404")
end

function Quest72104:OnSubFailed7210404(arg1)
    print("OnSubFailed7210404")
end

function Quest72104:OnSubStart7210405(arg1)
    print("OnSubStart7210405")
end

function Quest72104:OnSubFinish7210405(arg1)
    print("OnSubFinish7210405")
end

function Quest72104:OnSubFailed7210405(arg1)
    print("OnSubFailed7210405")
end

function Quest72104:OnSubStart7210406(arg1)
    print("OnSubStart7210406")
end

function Quest72104:OnSubFinish7210406(arg1)
    print("OnSubFinish7210406")
end

function Quest72104:OnSubFailed7210406(arg1)
    print("OnSubFailed7210406")
end

function Quest72104:OnSubStart7210407(arg1)
    print("OnSubStart7210407")
end

function Quest72104:OnSubFinish7210407(arg1)
    print("OnSubFinish7210407")
end

function Quest72104:OnSubFailed7210407(arg1)
    print("OnSubFailed7210407")
end

function Quest72104:OnSubStart7210426(arg1)
    print("OnSubStart7210426")
end

function Quest72104:OnSubFinish7210426(arg1)
    print("OnSubFinish7210426")
end

function Quest72104:OnSubFailed7210426(arg1)
    print("OnSubFailed7210426")
end

function Quest72104:OnSubStart7210427(arg1)
    print("OnSubStart7210427")
end

function Quest72104:OnSubFinish7210427(arg1)
    print("OnSubFinish7210427")
end

function Quest72104:OnSubFailed7210427(arg1)
    print("OnSubFailed7210427")
end

function Quest72104:OnSubStart7210428(arg1)
    print("OnSubStart7210428")
end

function Quest72104:OnSubFinish7210428(arg1)
    print("OnSubFinish7210428")
end

function Quest72104:OnSubFailed7210428(arg1)
    print("OnSubFailed7210428")
end

function Quest72104:OnSubStart7210429(arg1)
    print("OnSubStart7210429")
end

function Quest72104:OnSubFinish7210429(arg1)
    print("OnSubFinish7210429")
end

function Quest72104:OnSubFailed7210429(arg1)
    print("OnSubFailed7210429")
end

function Quest72104:OnSubStart7210430(arg1)
    print("OnSubStart7210430")
end

function Quest72104:OnSubFinish7210430(arg1)
    print("OnSubFinish7210430")
end

function Quest72104:OnSubFailed7210430(arg1)
    print("OnSubFailed7210430")
end

function Quest72104:OnSubStart7210431(arg1)
    print("OnSubStart7210431")
end

function Quest72104:OnSubFinish7210431(arg1)
    print("OnSubFinish7210431")
end

function Quest72104:OnSubFailed7210431(arg1)
    print("OnSubFailed7210431")
end

function Quest72104:OnSubStart7210432(arg1)
    print("OnSubStart7210432")
end

function Quest72104:OnSubFinish7210432(arg1)
    print("OnSubFinish7210432")
end

function Quest72104:OnSubFailed7210432(arg1)
    print("OnSubFailed7210432")
end

function Quest72104:OnSubStart7210433(arg1)
    print("OnSubStart7210433")
end

function Quest72104:OnSubFinish7210433(arg1)
    print("OnSubFinish7210433")
end

function Quest72104:OnSubFailed7210433(arg1)
    print("OnSubFailed7210433")
end

function Quest72104:OnSubStart7210434(arg1)
    print("OnSubStart7210434")
end

function Quest72104:OnSubFinish7210434(arg1)
    print("OnSubFinish7210434")
end

function Quest72104:OnSubFailed7210434(arg1)
    print("OnSubFailed7210434")
end

function Quest72104:OnSubStart7210408(arg1)
    print("OnSubStart7210408")
end

function Quest72104:OnSubFinish7210408(arg1)
    print("OnSubFinish7210408")
end

function Quest72104:OnSubFailed7210408(arg1)
    print("OnSubFailed7210408")
end

function Quest72104:OnSubStart7210409(arg1)
    print("OnSubStart7210409")
end

function Quest72104:OnSubFinish7210409(arg1)
    print("OnSubFinish7210409")
end

function Quest72104:OnSubFailed7210409(arg1)
    print("OnSubFailed7210409")
end

function Quest72104:OnSubStart7210410(arg1)
    print("OnSubStart7210410")
end

function Quest72104:OnSubFinish7210410(arg1)
    print("OnSubFinish7210410")
end

function Quest72104:OnSubFailed7210410(arg1)
    print("OnSubFailed7210410")
end

function Quest72104:OnSubStart7210411(arg1)
    print("OnSubStart7210411")
end

function Quest72104:OnSubFinish7210411(arg1)
    print("OnSubFinish7210411")
end

function Quest72104:OnSubFailed7210411(arg1)
    print("OnSubFailed7210411")
end

function Quest72104:OnSubStart7210412(arg1)
    print("OnSubStart7210412")
end

function Quest72104:OnSubFinish7210412(arg1)
    print("OnSubFinish7210412")
end

function Quest72104:OnSubFailed7210412(arg1)
    print("OnSubFailed7210412")
end

function Quest72104:OnSubStart7210413(arg1)
    print("OnSubStart7210413")
end

function Quest72104:OnSubFinish7210413(arg1)
    print("OnSubFinish7210413")
end

function Quest72104:OnSubFailed7210413(arg1)
    print("OnSubFailed7210413")
end

function Quest72104:OnSubStart7210414(arg1)
    print("OnSubStart7210414")
end

function Quest72104:OnSubFinish7210414(arg1)
    print("OnSubFinish7210414")
end

function Quest72104:OnSubFailed7210414(arg1)
    print("OnSubFailed7210414")
end

return Quest72104
