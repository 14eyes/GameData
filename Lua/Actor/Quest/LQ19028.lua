require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19028 = class("Quest19028", QuestActorProxy)
Quest19028.defaultAlias = "Quest19028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902801"] = self.OnSubStart1902801,
        ["1902802"] = self.OnSubStart1902802,
        ["1902809"] = self.OnSubStart1902809,
        ["1902810"] = self.OnSubStart1902810,
        ["1902811"] = self.OnSubStart1902811,
        ["1902812"] = self.OnSubStart1902812,
        ["1902813"] = self.OnSubStart1902813,
        ["1902814"] = self.OnSubStart1902814,
        ["1902815"] = self.OnSubStart1902815,
        ["1902808"] = self.OnSubStart1902808,
        ["1902807"] = self.OnSubStart1902807,
        ["1902806"] = self.OnSubStart1902806,
        ["1902805"] = self.OnSubStart1902805,
        ["1902804"] = self.OnSubStart1902804,
        ["1902803"] = self.OnSubStart1902803
    }
end

function Quest19028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902801"] = self.OnSubFinish1902801,
        ["1902802"] = self.OnSubFinish1902802,
        ["1902809"] = self.OnSubFinish1902809,
        ["1902810"] = self.OnSubFinish1902810,
        ["1902811"] = self.OnSubFinish1902811,
        ["1902812"] = self.OnSubFinish1902812,
        ["1902813"] = self.OnSubFinish1902813,
        ["1902814"] = self.OnSubFinish1902814,
        ["1902815"] = self.OnSubFinish1902815,
        ["1902808"] = self.OnSubFinish1902808,
        ["1902807"] = self.OnSubFinish1902807,
        ["1902806"] = self.OnSubFinish1902806,
        ["1902805"] = self.OnSubFinish1902805,
        ["1902804"] = self.OnSubFinish1902804,
        ["1902803"] = self.OnSubFinish1902803
    }
end

function Quest19028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902801"] = self.OnSubFailed1902801,
        ["1902802"] = self.OnSubFailed1902802,
        ["1902809"] = self.OnSubFailed1902809,
        ["1902810"] = self.OnSubFailed1902810,
        ["1902811"] = self.OnSubFailed1902811,
        ["1902812"] = self.OnSubFailed1902812,
        ["1902813"] = self.OnSubFailed1902813,
        ["1902814"] = self.OnSubFailed1902814,
        ["1902815"] = self.OnSubFailed1902815,
        ["1902808"] = self.OnSubFailed1902808,
        ["1902807"] = self.OnSubFailed1902807,
        ["1902806"] = self.OnSubFailed1902806,
        ["1902805"] = self.OnSubFailed1902805,
        ["1902804"] = self.OnSubFailed1902804,
        ["1902803"] = self.OnSubFailed1902803
    }
end

function Quest19028:Start()
    print("Start")
end

function Quest19028:OnDestroy()
    print("OnDestroy")
end

function Quest19028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3004Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3009Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3010Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3194Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3194Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19028Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19028Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19028Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19028Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19028Trigger4", 3, false)
end

function Quest19028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19028:OnSubStart1902801(arg1)
    print("OnSubStart1902801")
    self:CreateQuestNpc(arg1, npcs.Npc3004Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(105501, 1902801)
end

function Quest19028:OnSubFinish1902801(arg1)
    print("OnSubFinish1902801")
end

function Quest19028:OnSubFailed1902801(arg1)
    print("OnSubFailed1902801")
end

function Quest19028:OnSubStart1902802(arg1)
    print("OnSubStart1902802")
    self:CreateQuestNpc(arg1, npcs.Npc3010Data.id, 0)
    actorMgr:CreateActorWithPos("Q19028Trigger3", "Actor/Gadget/Q19028Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q19028_Shao").pos, sceneData:GetDummyPoint(3, "Q19028_Shao").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3010Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest19028:OnSubFinish1902802(arg1)
    print("OnSubFinish1902802")
end

function Quest19028:OnSubFailed1902802(arg1)
    print("OnSubFailed1902802")
end

function Quest19028:OnSubStart1902809(arg1)
    print("OnSubStart1902809")
    self:RequestCoopInteractionFromSubStartPoint(105501, 1902802)
    self:RequestInteraction(npcs.Npc3010Data.alias)
end

function Quest19028:OnSubFinish1902809(arg1)
    print("OnSubFinish1902809")
end

function Quest19028:OnSubFailed1902809(arg1)
    print("OnSubFailed1902809")
end

function Quest19028:OnSubStart1902810(arg1)
    print("OnSubStart1902810")
    actorMgr:CreateActorWithPos("Q19028Trigger", "Actor/Gadget/Q19028Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q19028_Daobaotuan").pos, sceneData:GetDummyPoint(3, "Q19028_Daobaotuan").rot, true, false, 3)
end

function Quest19028:OnSubFinish1902810(arg1)
    print("OnSubFinish1902810")
end

function Quest19028:OnSubFailed1902810(arg1)
    print("OnSubFailed1902810")
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(1902812, npcs.Coop_GorouData.id, 0)
            arg1:RequestInteraction(npcs.Coop_GorouData.alias)
        end, nil, nil, "", false, true)
    end)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902803)
end

function Quest19028:OnSubStart1902811(arg1)
    print("OnSubStart1902811")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19028)
    actorMgr:CreateActorWithPos("Q19028Trigger4", "Actor/Gadget/Q19028Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q19028_Daobaotuan").pos, sceneData:GetDummyPoint(3, "Q19028_Daobaotuan").rot, true, false, 3)
end

function Quest19028:OnSubFinish1902811(arg1)
    print("OnSubFinish1902811")
    self:ActorDestroy("Q19028Trigger4")
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(1902812, npcs.Coop_GorouData.id, 0)
            arg1:RequestInteraction(npcs.Coop_GorouData.alias)
        end, nil, nil, "", false, true)
    end)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902803)
end

function Quest19028:OnSubFailed1902811(arg1)
    print("OnSubFailed1902811")
end

function Quest19028:OnSubStart1902812(arg1)
    print("OnSubStart1902812")
end

function Quest19028:OnSubFinish1902812(arg1)
    print("OnSubFinish1902812")
    self:DestroyQuestNpcActor(npcs.Npc3010Data.alias, 3)
end

function Quest19028:OnSubFailed1902812(arg1)
    print("OnSubFailed1902812")
end

function Quest19028:OnSubStart1902813(arg1)
    print("OnSubStart1902813")
    self:CreateQuestNpc(arg1, npcs.Npc3004Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(105501, 1902804)
end

function Quest19028:OnSubFinish1902813(arg1)
    print("OnSubFinish1902813")
end

function Quest19028:OnSubFailed1902813(arg1)
    print("OnSubFailed1902813")
end

function Quest19028:OnSubStart1902814(arg1)
    print("OnSubStart1902814")
    actorMgr:CreateActorWithPos("Q19028Trigger1", "Actor/Gadget/Q19028Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q19028_WulangEnd").pos, sceneData:GetDummyPoint(3, "Q19028_WulangEnd").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3194Data.alias, 1, true)
end

function Quest19028:OnSubFinish1902814(arg1)
    print("OnSubFinish1902814")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902815, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902805)
end

function Quest19028:OnSubFailed1902814(arg1)
    print("OnSubFailed1902814")
end

function Quest19028:OnSubStart1902815(arg1)
    print("OnSubStart1902815")
end

function Quest19028:OnSubFinish1902815(arg1)
    print("OnSubFinish1902815")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3194Data.alias, 0, true)
    end)
end

function Quest19028:OnSubFailed1902815(arg1)
    print("OnSubFailed1902815")
end

function Quest19028:OnSubStart1902808(arg1)
    print("OnSubStart1902808")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    end)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902805)
end

function Quest19028:OnSubFinish1902808(arg1)
    print("OnSubFinish1902808")
end

function Quest19028:OnSubFailed1902808(arg1)
    print("OnSubFailed1902808")
end

function Quest19028:OnSubStart1902807(arg1)
    print("OnSubStart1902807")
end

function Quest19028:OnSubFinish1902807(arg1)
    print("OnSubFinish1902807")
end

function Quest19028:OnSubFailed1902807(arg1)
    print("OnSubFailed1902807")
end

function Quest19028:OnSubStart1902806(arg1)
    print("OnSubStart1902806")
end

function Quest19028:OnSubFinish1902806(arg1)
    print("OnSubFinish1902806")
end

function Quest19028:OnSubFailed1902806(arg1)
    print("OnSubFailed1902806")
end

function Quest19028:OnSubStart1902805(arg1)
    print("OnSubStart1902805")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    end)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902804)
end

function Quest19028:OnSubFinish1902805(arg1)
    print("OnSubFinish1902805")
end

function Quest19028:OnSubFailed1902805(arg1)
    print("OnSubFailed1902805")
end

function Quest19028:OnSubStart1902804(arg1)
    print("OnSubStart1902804")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    end)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902803)
end

function Quest19028:OnSubFinish1902804(arg1)
    print("OnSubFinish1902804")
end

function Quest19028:OnSubFailed1902804(arg1)
    print("OnSubFailed1902804")
end

function Quest19028:OnSubStart1902803(arg1)
    print("OnSubStart1902803")
    self:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    self:RequestCoopInteractionFromSubStartPoint(105501, 1902802)
end

function Quest19028:OnSubFinish1902803(arg1)
    print("OnSubFinish1902803")
end

function Quest19028:OnSubFailed1902803(arg1)
    print("OnSubFailed1902803")
end

return Quest19028
