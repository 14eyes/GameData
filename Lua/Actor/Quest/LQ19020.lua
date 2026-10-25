require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19020 = class("Quest19020", QuestActorProxy)
Quest19020.defaultAlias = "Quest19020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902001"] = self.OnSubStart1902001,
        ["1902002"] = self.OnSubStart1902002,
        ["1902003"] = self.OnSubStart1902003,
        ["1902004"] = self.OnSubStart1902004,
        ["1902005"] = self.OnSubStart1902005,
        ["1902006"] = self.OnSubStart1902006,
        ["1902007"] = self.OnSubStart1902007,
        ["1902008"] = self.OnSubStart1902008,
        ["1902009"] = self.OnSubStart1902009,
        ["1902010"] = self.OnSubStart1902010
    }
end

function Quest19020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902001"] = self.OnSubFinish1902001,
        ["1902002"] = self.OnSubFinish1902002,
        ["1902003"] = self.OnSubFinish1902003,
        ["1902004"] = self.OnSubFinish1902004,
        ["1902005"] = self.OnSubFinish1902005,
        ["1902006"] = self.OnSubFinish1902006,
        ["1902007"] = self.OnSubFinish1902007,
        ["1902008"] = self.OnSubFinish1902008,
        ["1902009"] = self.OnSubFinish1902009,
        ["1902010"] = self.OnSubFinish1902010
    }
end

function Quest19020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902001"] = self.OnSubFailed1902001,
        ["1902002"] = self.OnSubFailed1902002,
        ["1902003"] = self.OnSubFailed1902003,
        ["1902004"] = self.OnSubFailed1902004,
        ["1902005"] = self.OnSubFailed1902005,
        ["1902006"] = self.OnSubFailed1902006,
        ["1902007"] = self.OnSubFailed1902007,
        ["1902008"] = self.OnSubFailed1902008,
        ["1902009"] = self.OnSubFailed1902009,
        ["1902010"] = self.OnSubFailed1902010
    }
end

function Quest19020:Start()
    print("Start")
end

function Quest19020:OnDestroy()
    print("OnDestroy")
end

function Quest19020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3091Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19020Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19020Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19020Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19020Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19020Trigger4", 3, false)
end

function Quest19020:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19020:CheckDistance()
    if self:GetSubQuestState(1902005) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q19020_Wulang2").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 60 < dist then
            actorMgr:GetActor("19020"):FinishQuestID(true, 1902099)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest19020:MovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19020:NormalCheck()
    self:CheckDistance()
end

function Quest19020:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19020:OnSubStart1902001(arg1)
    print("OnSubStart1902001")
    actorMgr:CreateActorWithPos("Q19020Trigger", "Actor/Gadget/Q19020Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q19020_Wulang1").pos, sceneData:GetDummyPoint(3, "Q19020_Wulang1").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3091Data.alias, 1, true)
end

function Quest19020:OnSubFinish1902001(arg1)
    print("OnSubFinish1902001")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902002, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902001)
end

function Quest19020:OnSubFailed1902001(arg1)
    print("OnSubFailed1902001")
end

function Quest19020:OnSubStart1902002(arg1)
    print("OnSubStart1902002")
end

function Quest19020:OnSubFinish1902002(arg1)
    print("OnSubFinish1902002")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    end)
end

function Quest19020:OnSubFailed1902002(arg1)
    print("OnSubFailed1902002")
end

function Quest19020:OnSubStart1902003(arg1)
    print("OnSubStart1902003")
    actorMgr:CreateActorWithPos("Q19020Trigger1", "Actor/Gadget/Q19020Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q19020_Wulang2").pos, sceneData:GetDummyPoint(3, "Q19020_Wulang2").rot, true, false, 3)
end

function Quest19020:OnSubFinish1902003(arg1)
    print("OnSubFinish1902003")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902004, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902002)
    self:ActorDestroy("Q19020Trigger1")
end

function Quest19020:OnSubFailed1902003(arg1)
    print("OnSubFailed1902003")
end

function Quest19020:OnSubStart1902004(arg1)
    print("OnSubStart1902004")
end

function Quest19020:OnSubFinish1902004(arg1)
    print("OnSubFinish1902004")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    end)
end

function Quest19020:OnSubFailed1902004(arg1)
    print("OnSubFailed1902004")
end

function Quest19020:OnSubStart1902005(arg1)
    print("OnSubStart1902005")
    actorMgr:CreateActorWithPos("Q19020Trigger4", "Actor/Gadget/Q19020Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q19020_Wulang2").pos, sceneData:GetDummyPoint(3, "Q19020_Wulang2").rot, true, false, 3)
    self:CheckDistance()
end

function Quest19020:OnSubFinish1902005(arg1)
    print("OnSubFinish1902005")
    self:ActorDestroy("Q19020Trigger4")
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(1902006, npcs.Coop_GorouData.id, 0)
            arg1:RequestInteraction(npcs.Coop_GorouData.alias)
        end, nil, nil, "", false, true)

        arg1:RequestCoopInteractionFromSubStartPoint(105501, 1902003)
    end)
end

function Quest19020:OnSubFailed1902005(arg1)
    print("OnSubFailed1902005")
end

function Quest19020:OnSubStart1902006(arg1)
    print("OnSubStart1902006")
end

function Quest19020:OnSubFinish1902006(arg1)
    print("OnSubFinish1902006")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    end)
end

function Quest19020:OnSubFailed1902006(arg1)
    print("OnSubFailed1902006")
end

function Quest19020:OnSubStart1902007(arg1)
    print("OnSubStart1902007")
    actorMgr:CreateActorWithPos("Q19020Trigger2", "Actor/Gadget/Q19020Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q19020_Wulang4").pos, sceneData:GetDummyPoint(3, "Q19020_Wulang4").rot, true, false, 3)
end

function Quest19020:OnSubFinish1902007(arg1)
    print("OnSubFinish1902007")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902008, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902004)
end

function Quest19020:OnSubFailed1902007(arg1)
    print("OnSubFailed1902007")
end

function Quest19020:OnSubStart1902008(arg1)
    print("OnSubStart1902008")
end

function Quest19020:OnSubFinish1902008(arg1)
    print("OnSubFinish1902008")
end

function Quest19020:OnSubFailed1902008(arg1)
    print("OnSubFailed1902008")
end

function Quest19020:OnSubStart1902009(arg1)
    print("OnSubStart1902009")
    actorMgr:CreateActorWithPos("Q19020Trigger3", "Actor/Gadget/Q19020Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q19020_WulangWalk1").pos, sceneData:GetDummyPoint(3, "Q19020_WulangWalk1").rot, true, false, 3)
end

function Quest19020:OnSubFinish1902009(arg1)
    print("OnSubFinish1902009")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902010, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902005)
end

function Quest19020:OnSubFailed1902009(arg1)
    print("OnSubFailed1902009")
end

function Quest19020:OnSubStart1902010(arg1)
    print("OnSubStart1902010")
end

function Quest19020:OnSubFinish1902010(arg1)
    print("OnSubFinish1902010")
end

function Quest19020:OnSubFailed1902010(arg1)
    print("OnSubFailed1902010")
end

return Quest19020
