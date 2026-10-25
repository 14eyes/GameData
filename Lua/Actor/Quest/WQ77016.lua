require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77016 = class("Quest77016", QuestActorProxy)
Quest77016.defaultAlias = "Quest77016"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7701601"] = self.OnSubStart7701601,
        ["7701602"] = self.OnSubStart7701602,
        ["7701603"] = self.OnSubStart7701603,
        ["7701604"] = self.OnSubStart7701604,
        ["7701605"] = self.OnSubStart7701605,
        ["7701606"] = self.OnSubStart7701606
    }
end

function Quest77016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7701601"] = self.OnSubFinish7701601,
        ["7701602"] = self.OnSubFinish7701602,
        ["7701603"] = self.OnSubFinish7701603,
        ["7701604"] = self.OnSubFinish7701604,
        ["7701605"] = self.OnSubFinish7701605,
        ["7701606"] = self.OnSubFinish7701606
    }
end

function Quest77016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7701603"] = self.OnSubFailed7701603,
        ["7701604"] = self.OnSubFailed7701604,
        ["7701605"] = self.OnSubFailed7701605
    }
end

function Quest77016:Start()
    print("Start")
end

function Quest77016:OnDestroy()
    print("OnDestroy")
end

function Quest77016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77016:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77016:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1 == 2 then
        this:TransmitPlayerWithQuestIdByData(7701612, 1, datas.TransmitData_5, nil, nil, nil)
    elseif arg1 == 3 then
        this:TransmitPlayerWithQuestIdByData(7701613, 1, datas.TransmitData_5, nil, nil, nil)
    elseif arg1 == 4 then
        this:TransmitPlayerWithQuestIdByData(7701614, 1, datas.TransmitData_5, nil, nil, nil)
    elseif arg1 == 5 then
        this:TransmitPlayerWithQuestIdByData(7701615, 1, datas.TransmitData_5, nil, nil, nil)
    end
end

function Quest77016:OnSubStart7701601(arg1)
    print("OnSubStart7701601")
    actorUtils.FinishQuestWithParam({false}, {7701601})
end

function Quest77016:OnSubFinish7701601(arg1)
    print("OnSubFinish7701601")
end

function Quest77016:OnSubStart7701602(arg1)
    print("OnSubStart7701602")
end

function Quest77016:OnSubFinish7701602(arg1)
    print("OnSubFinish7701602")
end

function Quest77016:OnSubStart7701603(arg1)
    print("OnSubStart7701603")
end

function Quest77016:OnSubFinish7701603(arg1)
    print("OnSubFinish7701603")
end

function Quest77016:OnSubFailed7701603(arg1)
    print("OnSubFailed7701603")
    this:RecycleAllRes()
end

function Quest77016:OnSubStart7701604(arg1)
    print("OnSubStart7701604")
end

function Quest77016:OnSubFinish7701604(arg1)
    print("OnSubFinish7701604")
end

function Quest77016:OnSubFailed7701604(arg1)
    print("OnSubFailed7701604")
    this:RecycleAllRes()
end

function Quest77016:OnSubStart7701605(arg1)
    print("OnSubStart7701605")
end

function Quest77016:OnSubFinish7701605(arg1)
    print("OnSubFinish7701605")
end

function Quest77016:OnSubFailed7701605(arg1)
    print("OnSubFailed7701605")
    this:RecycleAllRes()
end

function Quest77016:OnSubStart7701606(arg1)
    print("OnSubStart7701606")
    actorUtils.FinishQuestWithParam({false}, {7701606})
end

function Quest77016:OnSubFinish7701606(arg1)
    print("OnSubFinish7701606")
end

return Quest77016
