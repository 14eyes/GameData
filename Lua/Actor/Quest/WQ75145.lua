require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75145 = class("Quest75145", QuestActorProxy)
Quest75145.defaultAlias = "Quest75145"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75145:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75145:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7514502"] = self.OnSubStart7514502,
        ["7514501"] = self.OnSubStart7514501,
        ["7514503"] = self.OnSubStart7514503
    }
end

function Quest75145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7514502"] = self.OnSubFinish7514502,
        ["7514501"] = self.OnSubFinish7514501,
        ["7514503"] = self.OnSubFinish7514503
    }
end

function Quest75145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75145:Start()
    print("Start")
end

function Quest75145:OnDestroy()
    print("OnDestroy")
end

function Quest75145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75145:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75145:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75145:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7514501 then
        this:SetQuestVarByMainId(0, 1)
    elseif arg1 == 7514502 then
        actorUtils.FinishQuestID(false, 7514503)
    end
end

function Quest75145:OnSubStart7514502(arg1)
    print("OnSubStart7514502")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7514502)
    end)
end

function Quest75145:OnSubFinish7514502(arg1)
    print("OnSubFinish7514502")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_75145, nil, nil, nil)
end

function Quest75145:OnSubStart7514501(arg1)
    print("OnSubStart7514501")
    this:CreateQuestNpc(arg1, npcs.Npc21772.id, 0, false, 0)
end

function Quest75145:OnSubFinish7514501(arg1)
    print("OnSubFinish7514501")
    this:SafeDestroyQuestNpc(npcs.Npc21772.alias, 3)
end

function Quest75145:OnSubStart7514503(arg1)
    print("OnSubStart7514503")
end

function Quest75145:OnSubFinish7514503(arg1)
    print("OnSubFinish7514503")
end

return Quest75145
