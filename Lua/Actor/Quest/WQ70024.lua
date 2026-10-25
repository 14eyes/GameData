require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70024 = class("Quest70024", QuestActorProxy)
Quest70024.defaultAlias = "Quest70024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002401"] = self.OnSubStart7002401,
        ["7002402"] = self.OnSubStart7002402,
        ["7002403"] = self.OnSubStart7002403,
        ["7002404"] = self.OnSubStart7002404
    }
end

function Quest70024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002401"] = self.OnSubFinish7002401,
        ["7002402"] = self.OnSubFinish7002402,
        ["7002403"] = self.OnSubFinish7002403,
        ["7002404"] = self.OnSubFinish7002404
    }
end

function Quest70024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002401"] = self.OnSubFailed7002401,
        ["7002402"] = self.OnSubFailed7002402,
        ["7002403"] = self.OnSubFailed7002403,
        ["7002404"] = self.OnSubFailed7002404
    }
end

function Quest70024:Start()
    print("Start")
end

function Quest70024:OnDestroy()
    print("OnDestroy")
end

function Quest70024:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70024Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70024:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70024Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70024:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70024Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70024:OnSubStart7002401(arg1)
    print("OnSubStart7002401")
    self:CreateQuestNpc(arg1, npcs.Npc151201Data.id, 1)
    self:NotifyTo("NPC1512", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest70024:OnSubFinish7002401(arg1)
    print("OnSubFinish7002401")
    self:ShowBlackScreen(0.5, 1, 0.5)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
end

function Quest70024:OnSubFailed7002401(arg1)
    print("OnSubFailed7002401")
end

function Quest70024:OnSubStart7002402(arg1)
    print("OnSubStart7002402")
    self:NotifyTo("NPC1565", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcs.Npc156501Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc156501Data.alias):DoFreeStyle(1070, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q70024Trigger_.alias, datas.Q70024Trigger_.script, datas.Q70024Trigger_.id, 0, datas.Q70024Trigger_.point.pos, datas.Q70024Trigger_.point.rot, true, false, 3)
end

function Quest70024:OnSubFinish7002402(arg1)
    print("OnSubFinish7002402")
end

function Quest70024:OnSubFailed7002402(arg1)
    print("OnSubFailed7002402")
end

function Quest70024:OnSubStart7002403(arg1)
    print("OnSubStart7002403")
    self:NotifyTo("NPC1565", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcs.Npc156501Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc156501Data.alias):DoFreeStyle(1070, true, nil, true, true)
end

function Quest70024:OnSubFinish7002403(arg1)
    print("OnSubFinish7002403")
end

function Quest70024:OnSubFailed7002403(arg1)
    print("OnSubFailed7002403")
end

function Quest70024:OnSubStart7002404(arg1)
    print("OnSubStart7002404")
    self:NotifyTo("NPC1565", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcs.Npc156501Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc156501Data.alias):DoFreeStyle(9030, true, nil, true, true)
end

function Quest70024:OnSubFinish7002404(arg1)
    print("OnSubFinish7002404")
    self:LightNotifyTo("Npc1565", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:ShowTutorialDialog(811, function()
                actorUtils.ShowActivityMimiTomoPage()
            end)
        end)
    end)
end

function Quest70024:OnSubFailed7002404(arg1)
    print("OnSubFailed7002404")
end

return Quest70024
