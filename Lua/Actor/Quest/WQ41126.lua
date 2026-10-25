require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41126 = class("Quest41126", QuestActorProxy)
Quest41126.defaultAlias = "Quest41126"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41126:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112601"] = self.OnSubStart4112601,
        ["4112602"] = self.OnSubStart4112602,
        ["4112612"] = self.OnSubStart4112612,
        ["4112603"] = self.OnSubStart4112603,
        ["4112604"] = self.OnSubStart4112604,
        ["4112605"] = self.OnSubStart4112605,
        ["4112606"] = self.OnSubStart4112606,
        ["4112607"] = self.OnSubStart4112607,
        ["4112608"] = self.OnSubStart4112608,
        ["4112609"] = self.OnSubStart4112609,
        ["4112610"] = self.OnSubStart4112610,
        ["4112611"] = self.OnSubStart4112611
    }
end

function Quest41126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112601"] = self.OnSubFinish4112601,
        ["4112602"] = self.OnSubFinish4112602,
        ["4112612"] = self.OnSubFinish4112612,
        ["4112603"] = self.OnSubFinish4112603,
        ["4112604"] = self.OnSubFinish4112604,
        ["4112605"] = self.OnSubFinish4112605,
        ["4112606"] = self.OnSubFinish4112606,
        ["4112607"] = self.OnSubFinish4112607,
        ["4112608"] = self.OnSubFinish4112608,
        ["4112609"] = self.OnSubFinish4112609,
        ["4112610"] = self.OnSubFinish4112610,
        ["4112611"] = self.OnSubFinish4112611
    }
end

function Quest41126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112601"] = self.OnSubFailed4112601,
        ["4112602"] = self.OnSubFailed4112602,
        ["4112612"] = self.OnSubFailed4112612,
        ["4112603"] = self.OnSubFailed4112603,
        ["4112604"] = self.OnSubFailed4112604,
        ["4112605"] = self.OnSubFailed4112605,
        ["4112606"] = self.OnSubFailed4112606,
        ["4112607"] = self.OnSubFailed4112607,
        ["4112608"] = self.OnSubFailed4112608,
        ["4112609"] = self.OnSubFailed4112609,
        ["4112610"] = self.OnSubFailed4112610,
        ["4112611"] = self.OnSubFailed4112611
    }
end

function Quest41126:Start()
    print("Start")
end

function Quest41126:OnDestroy()
    print("OnDestroy")
end

function Quest41126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41126:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2308", 0, true)
    self:NotifyTo("Npc2307", 0, true)
    self:NotifyTo("Npc2304", 0, true)
    self:NotifyTo("Npc2135", 0, true)
    self:NotifyTo("Npc2056", 0, true)
end

function Quest41126:destoryjiayi()
    print("destoryjiayi")
    self:DestroyQuestNpcActor(npcs.Npc205601Data.alias, 3)
    self:NotifyTo("Npc2056", 0, true)
    self:NotifyTo("Npc2308", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc230801Data.alias, 3)
end

function Quest41126:interaction()
    print("interaction")
    self:RequestInteraction(npcs.Npc205601Data.alias)
end

function Quest41126:OnSubStart4112601(arg1)
    print("OnSubStart4112601")
end

function Quest41126:OnSubFinish4112601(arg1)
    print("OnSubFinish4112601")
end

function Quest41126:OnSubFailed4112601(arg1)
    print("OnSubFailed4112601")
end

function Quest41126:OnSubStart4112602(arg1)
    print("OnSubStart4112602")
    self:NotifyTo("Npc2056", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc205601Data.id, 1)
end

function Quest41126:OnSubFinish4112602(arg1)
    print("OnSubFinish4112602")
end

function Quest41126:OnSubFailed4112602(arg1)
    print("OnSubFailed4112602")
end

function Quest41126:OnSubStart4112612(arg1)
    print("OnSubStart4112612")
    actorMgr:CreateActorWithPos(datas.Q41126Trigger1_.alias, datas.Q41126Trigger1_.script, datas.Q41126Trigger1_.id, 0, datas.Q41126Trigger1_.point.pos, datas.Q41126Trigger1_.point.rot, true, false, 3)
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112612(arg1)
    self:NarratorOnlyTask({{dialogID = 411261101, duration = 3}})
end

function Quest41126:OnSubFailed4112612(arg1)
    print("OnSubFailed4112612")
end

function Quest41126:OnSubStart4112603(arg1)
    print("OnSubStart4112603")
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112603(arg1)
    self:NarratorOnlyTask({{dialogID = 411261102, duration = 3}})
end

function Quest41126:OnSubFailed4112603(arg1)
    print("OnSubFailed4112603")
end

function Quest41126:OnSubStart4112604(arg1)
    print("OnSubStart4112604")
    actorMgr:CreateActorWithPos(datas.Q41126Trigger2_.alias, datas.Q41126Trigger2_.script, datas.Q41126Trigger2_.id, 0, datas.Q41126Trigger2_.point.pos, datas.Q41126Trigger2_.point.rot, true, false, 3)
    self:NotifyTo("Npc2307", 2, true)
    self:NotifyTo("Npc2304", 2, true)
    self:NotifyTo("Npc2135", 2, true)
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112604(arg1)
    self:NarratorOnlyTask({{dialogID = 411261201, duration = 3}, {dialogID = 411261202, duration = 3}})
end

function Quest41126:OnSubFailed4112604(arg1)
    print("OnSubFailed4112604")
end

function Quest41126:OnSubStart4112605(arg1)
    print("OnSubStart4112605")
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112605(arg1)
    print("OnSubFinish4112605")
    self:SetQuestVar(4112605, 1, 1)
end

function Quest41126:OnSubFailed4112605(arg1)
    print("OnSubFailed4112605")
end

function Quest41126:OnSubStart4112606(arg1)
    print("OnSubStart4112606")
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112606(arg1)
    print("OnSubFinish4112606")
end

function Quest41126:OnSubFailed4112606(arg1)
    print("OnSubFailed4112606")
end

function Quest41126:OnSubStart4112607(arg1)
    print("OnSubStart4112607")
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112607(arg1)
    print("OnSubFinish4112607")
end

function Quest41126:OnSubFailed4112607(arg1)
    print("OnSubFailed4112607")
end

function Quest41126:OnSubStart4112608(arg1)
    print("OnSubStart4112608")
    self:NotifyTo("Npc2308", 1, true)
    self:NotifyTo("Npc2056", 1, true)
end

function Quest41126:OnSubFinish4112608(arg1)
    print("OnSubFinish4112608")
end

function Quest41126:OnSubFailed4112608(arg1)
    print("OnSubFailed4112608")
end

function Quest41126:OnSubStart4112609(arg1)
    print("OnSubStart4112609")
    self:NotifyTo("Npc2056", 1, true)
    self:NotifyTo("Npc2308", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc230801Data.id, 1)
end

function Quest41126:OnSubFinish4112609(arg1)
    print("OnSubFinish4112609")
end

function Quest41126:OnSubFailed4112609(arg1)
    print("OnSubFailed4112609")
end

function Quest41126:OnSubStart4112610(arg1)
    print("OnSubStart4112610")
    self:NotifyTo("Npc2056", 1, true)
    self:NotifyTo("Npc2308", 1, true)
end

function Quest41126:OnSubFinish4112610(arg1)
    print("OnSubFinish4112610")
end

function Quest41126:OnSubFailed4112610(arg1)
    print("OnSubFailed4112610")
end

function Quest41126:OnSubStart4112611(arg1)
    print("OnSubStart4112611")
    self:ActionSafeCall(self.interaction)
    self:NotifyTo("Npc2056", 1, true)
    self:NotifyTo("Npc2308", 1, true)
end

function Quest41126:OnSubFinish4112611(arg1)
    print("OnSubFinish4112611")
    self:NotifyTo("Npc2307", 0, true)
    self:NotifyTo("Npc2304", 0, true)
    self:NotifyTo("Npc2135", 0, true)
    self:ShowBlackScreen(0.5, 1, 0.5, self.destoryjiayi, nil, nil, "")
end

function Quest41126:OnSubFailed4112611(arg1)
    print("OnSubFailed4112611")
end

return Quest41126
