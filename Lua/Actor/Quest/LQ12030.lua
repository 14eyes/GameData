require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12030 = class("Quest12030", QuestActorProxy)
Quest12030.defaultAlias = "Quest12030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203001"] = self.OnSubStart1203001,
        ["1203002"] = self.OnSubStart1203002,
        ["1203003"] = self.OnSubStart1203003,
        ["1203004"] = self.OnSubStart1203004,
        ["1203005"] = self.OnSubStart1203005,
        ["1203006"] = self.OnSubStart1203006
    }
end

function Quest12030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203001"] = self.OnSubFinish1203001,
        ["1203002"] = self.OnSubFinish1203002,
        ["1203003"] = self.OnSubFinish1203003,
        ["1203004"] = self.OnSubFinish1203004,
        ["1203005"] = self.OnSubFinish1203005,
        ["1203006"] = self.OnSubFinish1203006
    }
end

function Quest12030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12030:Start()
    print("Start")
end

function Quest12030:OnDestroy()
    print("OnDestroy")
end

function Quest12030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12030:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorMgr:GetActor("12030"):FinishQuestID(false, 1203007)
        print("set state open")
    elseif arg1 == 0 then
        actorMgr:GetActor("12030"):FinishQuestID(false, 1203008)
        print("set state close")
    end
end

function Quest12030:OnSubStart1203001(arg1)
    print("OnSubStart1203001")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    end)
end

function Quest12030:OnSubFinish1203001(arg1)
    print("OnSubFinish1203001")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest12030:OnSubStart1203002(arg1)
    print("OnSubStart1203002")
end

function Quest12030:OnSubFinish1203002(arg1)
    print("OnSubFinish1203002")
end

function Quest12030:OnSubStart1203003(arg1)
    print("OnSubStart1203003")
    self:CreateQuestNpcWithTriggerBlack("1203003", 1203003, npcs.Npc1034Data.id, 1, 8, 2)
end

function Quest12030:OnSubFinish1203003(arg1)
    print("OnSubFinish1203003")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 20123)
end

function Quest12030:OnSubStart1203004(arg1)
    print("OnSubStart1203004")
end

function Quest12030:OnSubFinish1203004(arg1)
    print("OnSubFinish1203004")
end

function Quest12030:OnSubStart1203005(arg1)
    print("OnSubStart1203005")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    self:RequestInteraction(npcs.Npc1034Data.alias)
end

function Quest12030:OnSubFinish1203005(arg1)
    print("OnSubFinish1203005")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 20123)
end

function Quest12030:OnSubStart1203006(arg1)
    print("OnSubStart1203006")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
end

function Quest12030:OnSubFinish1203006(arg1)
    print("OnSubFinish1203006")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 20123)
end

return Quest12030
