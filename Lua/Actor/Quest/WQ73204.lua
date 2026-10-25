require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73204 = class("Quest73204", QuestActorProxy)
Quest73204.defaultAlias = "Quest73204"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73204:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73204:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320410"] = self.OnSubStart7320410,
        ["7320401"] = self.OnSubStart7320401,
        ["7320409"] = self.OnSubStart7320409,
        ["7320402"] = self.OnSubStart7320402,
        ["7320404"] = self.OnSubStart7320404,
        ["7320408"] = self.OnSubStart7320408,
        ["7320411"] = self.OnSubStart7320411,
        ["7320407"] = self.OnSubStart7320407
    }
end

function Quest73204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320410"] = self.OnSubFinish7320410,
        ["7320401"] = self.OnSubFinish7320401,
        ["7320409"] = self.OnSubFinish7320409,
        ["7320402"] = self.OnSubFinish7320402,
        ["7320404"] = self.OnSubFinish7320404,
        ["7320408"] = self.OnSubFinish7320408,
        ["7320411"] = self.OnSubFinish7320411,
        ["7320407"] = self.OnSubFinish7320407
    }
end

function Quest73204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73204:Start()
    print("Start")
end

function Quest73204:OnDestroy()
    print("OnDestroy")
end

function Quest73204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73204:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73204:OnSubStart7320410(arg1)
    print("OnSubStart7320410")
end

function Quest73204:OnSubFinish7320410(arg1)
    print("OnSubFinish7320410")
end

function Quest73204:OnSubStart7320401(arg1)
    print("OnSubStart7320401")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73204:OnSubFinish7320401(arg1)
    print("OnSubFinish7320401")
    self:SetNavigationByMainId(73204, true)
end

function Quest73204:OnSubStart7320409(arg1)
    print("OnSubStart7320409")
end

function Quest73204:OnSubFinish7320409(arg1)
    print("OnSubFinish7320409")
    self:NarratorOnlyTaskByData(datas.Narrator_732040801)
end

function Quest73204:OnSubStart7320402(arg1)
    print("OnSubStart7320402")
end

function Quest73204:OnSubFinish7320402(arg1)
    print("OnSubFinish7320402")
    self:NarratorOnlyTaskByData(datas.Narrator_732040802)
end

function Quest73204:OnSubStart7320404(arg1)
    print("OnSubStart7320404")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73204:OnSubFinish7320404(arg1)
    print("OnSubFinish7320404")
end

function Quest73204:OnSubStart7320408(arg1)
    print("OnSubStart7320408")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73204:OnSubFinish7320408(arg1)
    print("OnSubFinish7320408")
end

function Quest73204:OnSubStart7320411(arg1)
    print("OnSubStart7320411")
end

function Quest73204:OnSubFinish7320411(arg1)
    print("OnSubFinish7320411")
end

function Quest73204:OnSubStart7320407(arg1)
    print("OnSubStart7320407")
end

function Quest73204:OnSubFinish7320407(arg1)
    print("OnSubFinish7320407")
end

return Quest73204
