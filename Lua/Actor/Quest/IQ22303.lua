require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22303 = class("Quest22303", QuestActorProxy)
Quest22303.defaultAlias = "Quest22303"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datase

function Quest22303:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datase = clientData.Datase
end

function Quest22303:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2230301"] = self.OnSubStart2230301,
        ["2230302"] = self.OnSubStart2230302,
        ["2230303"] = self.OnSubStart2230303
    }
end

function Quest22303:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2230301"] = self.OnSubFinish2230301,
        ["2230302"] = self.OnSubFinish2230302,
        ["2230303"] = self.OnSubFinish2230303
    }
end

function Quest22303:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2230301"] = self.OnSubFailed2230301,
        ["2230302"] = self.OnSubFailed2230302,
        ["2230303"] = self.OnSubFailed2230303
    }
end

function Quest22303:Start()
    print("Start")
end

function Quest22303:OnDestroy()
    print("OnDestroy")
end

function Quest22303:OnSubStart2230301(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    print("OnSubStart2230301")
    self:NotifyTo("Npc2040", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22303:OnSubFinish2230301(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 1)
    print("OnSubFinish2230301")
end

function Quest22303:OnSubFailed2230301(arg1)
    print("OnSubFailed2230301")
end

function Quest22303:OnSubStart2230302(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 2)
    print("OnSubStart2230302")
    self:NotifyTo("Npc2040", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22303:OnSubFinish2230302(arg1)
    print("OnSubFinish2230302")
end

function Quest22303:OnSubFailed2230302(arg1)
    print("OnSubFailed2230302")
end

function Quest22303:OnSubStart2230303(arg1)
    if self:GetQuestVar(arg1.QuestconfigId, 0) < 3 then
        self:RequestInteractionForceAlias("Npc2040")
    end

    self:SetQuestVar(arg1.QuestConfigId, 0, 3)
    print("OnSubStart2230303")
    self:NotifyTo("Npc2040", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22303:OnSubFinish2230303(arg1)
    print("OnSubFinish2230303")
end

function Quest22303:OnSubFailed2230303(arg1)
    print("OnSubFailed2230303")
end

function Quest22303:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc2040", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22303:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc2040", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22303:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc2040", NpcUtil.NpcEventType.STARTDAILY, true)
end

return Quest22303
