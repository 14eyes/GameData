require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19015 = class("Quest19015", QuestActorProxy)
Quest19015.defaultAlias = "Quest19015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901501"] = self.OnSubStart1901501,
        ["1901502"] = self.OnSubStart1901502,
        ["1901511"] = self.OnSubStart1901511,
        ["1901503"] = self.OnSubStart1901503,
        ["1901508"] = self.OnSubStart1901508,
        ["1901509"] = self.OnSubStart1901509,
        ["1901510"] = self.OnSubStart1901510,
        ["1901504"] = self.OnSubStart1901504,
        ["1901505"] = self.OnSubStart1901505,
        ["1901506"] = self.OnSubStart1901506,
        ["1901507"] = self.OnSubStart1901507
    }
end

function Quest19015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901501"] = self.OnSubFinish1901501,
        ["1901502"] = self.OnSubFinish1901502,
        ["1901511"] = self.OnSubFinish1901511,
        ["1901503"] = self.OnSubFinish1901503,
        ["1901508"] = self.OnSubFinish1901508,
        ["1901509"] = self.OnSubFinish1901509,
        ["1901510"] = self.OnSubFinish1901510,
        ["1901504"] = self.OnSubFinish1901504,
        ["1901505"] = self.OnSubFinish1901505,
        ["1901506"] = self.OnSubFinish1901506,
        ["1901507"] = self.OnSubFinish1901507
    }
end

function Quest19015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901501"] = self.OnSubFailed1901501,
        ["1901502"] = self.OnSubFailed1901502,
        ["1901511"] = self.OnSubFailed1901511,
        ["1901503"] = self.OnSubFailed1901503,
        ["1901508"] = self.OnSubFailed1901508,
        ["1901509"] = self.OnSubFailed1901509,
        ["1901510"] = self.OnSubFailed1901510,
        ["1901504"] = self.OnSubFailed1901504,
        ["1901505"] = self.OnSubFailed1901505,
        ["1901506"] = self.OnSubFailed1901506,
        ["1901507"] = self.OnSubFailed1901507
    }
end

function Quest19015:Start()
    print("Start")
end

function Quest19015:OnDestroy()
    print("OnDestroy")
end

function Quest19015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19015:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19015Trigger_BattleArea", 3, false)
    actorMgr:DestroyEntityActor("Q19015Trigger_Run1", 3, false)
    actorMgr:DestroyEntityActor("Q19015Trigger_Run2", 3, false)
    actorMgr:DestroyEntityActor("Q19015Trigger_Run3", 3, false)
    actorMgr:DestroyEntityActor("Q19015Trigger_Run4", 3, false)
    actorMgr:DestroyEntityActor("Q19015Trigger_RunFinsh", 3, false)
    actorMgr:DestroyEntityActor("Q19015Trigger_TrainningArea", 3, false)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
end

function Quest19015:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19015:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19015:OnSubStart1901501(arg1)
    print("OnSubStart1901501")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901501)
end

function Quest19015:OnSubFinish1901501(arg1)
    print("OnSubFinish1901501")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
end

function Quest19015:OnSubFailed1901501(arg1)
    print("OnSubFailed1901501")
end

function Quest19015:OnSubStart1901502(arg1)
    print("OnSubStart1901502")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
end

function Quest19015:OnSubFinish1901502(arg1)
    print("OnSubFinish1901502")
end

function Quest19015:OnSubFailed1901502(arg1)
    print("OnSubFailed1901502")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "COOP_Black_Q19015_fail2", false, true)
end

function Quest19015:OnSubStart1901511(arg1)
    print("OnSubStart1901511")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19015Trigger_TrainningArea", "Actor/Gadget/Q19015Trigger_TrainningArea", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest19015:OnSubFinish1901511(arg1)
    print("OnSubFinish1901511")
end

function Quest19015:OnSubFailed1901511(arg1)
    print("OnSubFailed1901511")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "COOP_Black_Q19015_fail", false, true)
end

function Quest19015:OnSubStart1901503(arg1)
    print("OnSubStart1901503")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
end

function Quest19015:OnSubFinish1901503(arg1)
    print("OnSubFinish1901503")
end

function Quest19015:OnSubFailed1901503(arg1)
    print("OnSubFailed1901503")
end

function Quest19015:OnSubStart1901508(arg1)
    print("OnSubStart1901508")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
end

function Quest19015:OnSubFinish1901508(arg1)
    print("OnSubFinish1901508")
end

function Quest19015:OnSubFailed1901508(arg1)
    print("OnSubFailed1901508")
end

function Quest19015:OnSubStart1901509(arg1)
    print("OnSubStart1901509")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
end

function Quest19015:OnSubFinish1901509(arg1)
    print("OnSubFinish1901509")
end

function Quest19015:OnSubFailed1901509(arg1)
    print("OnSubFailed1901509")
end

function Quest19015:OnSubStart1901510(arg1)
    print("OnSubStart1901510")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:FinishQuestID(false, 1901502)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901503)
    self:RequestInteraction(npcs.Npc12170Data.alias)
end

function Quest19015:OnSubFinish1901510(arg1)
    print("OnSubFinish1901510")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
end

function Quest19015:OnSubFailed1901510(arg1)
    print("OnSubFailed1901510")
end

function Quest19015:OnSubStart1901504(arg1)
    print("OnSubStart1901504")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901504)
end

function Quest19015:OnSubFinish1901504(arg1)
    print("OnSubFinish1901504")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
end

function Quest19015:OnSubFailed1901504(arg1)
    print("OnSubFailed1901504")
end

function Quest19015:OnSubStart1901505(arg1)
    print("OnSubStart1901505")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19015Trigger_BattleArea", "Actor/Gadget/Q19015Trigger_BattleArea", 70900002, 0, sceneData:GetDummyPoint(3, "Q19015_Battle_Pos").pos, sceneData:GetDummyPoint(3, "Q19015_Battle_Pos").rot, true, false, 3)
end

function Quest19015:OnSubFinish1901505(arg1)
    print("OnSubFinish1901505")
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
end

function Quest19015:OnSubFailed1901505(arg1)
    print("OnSubFailed1901505")
    self:ActorDestroy(datas.Q19015Trigger_BattleArea.alias)
end

function Quest19015:OnSubStart1901506(arg1)
    print("OnSubStart1901506")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901506)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc12170Data.alias)
    end)
end

function Quest19015:OnSubFinish1901506(arg1)
    print("OnSubFinish1901506")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19015:OnSubFailed1901506(arg1)
    print("OnSubFailed1901506")
end

function Quest19015:OnSubStart1901507(arg1)
    print("OnSubStart1901507")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3106Data.id, 3)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901507)
end

function Quest19015:OnSubFinish1901507(arg1)
    print("OnSubFinish1901507")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
end

function Quest19015:OnSubFailed1901507(arg1)
    print("OnSubFailed1901507")
end

return Quest19015
