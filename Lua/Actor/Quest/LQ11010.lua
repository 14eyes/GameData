require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11010 = class("Quest11010", QuestActorProxy)
Quest11010.defaultAlias = "Quest11010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101001"] = self.OnSubStart1101001,
        ["1101002"] = self.OnSubStart1101002,
        ["1101007"] = self.OnSubStart1101007,
        ["1101008"] = self.OnSubStart1101008,
        ["1101010"] = self.OnSubStart1101010,
        ["1101003"] = self.OnSubStart1101003,
        ["1101009"] = self.OnSubStart1101009,
        ["1101004"] = self.OnSubStart1101004,
        ["1101005"] = self.OnSubStart1101005,
        ["1101006"] = self.OnSubStart1101006
    }
end

function Quest11010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101001"] = self.OnSubFinish1101001,
        ["1101002"] = self.OnSubFinish1101002,
        ["1101007"] = self.OnSubFinish1101007,
        ["1101008"] = self.OnSubFinish1101008,
        ["1101010"] = self.OnSubFinish1101010,
        ["1101003"] = self.OnSubFinish1101003,
        ["1101009"] = self.OnSubFinish1101009,
        ["1101004"] = self.OnSubFinish1101004,
        ["1101005"] = self.OnSubFinish1101005,
        ["1101006"] = self.OnSubFinish1101006
    }
end

function Quest11010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101001"] = self.OnSubFailed1101001,
        ["1101002"] = self.OnSubFailed1101002,
        ["1101007"] = self.OnSubFailed1101007,
        ["1101008"] = self.OnSubFailed1101008,
        ["1101010"] = self.OnSubFailed1101010,
        ["1101003"] = self.OnSubFailed1101003,
        ["1101009"] = self.OnSubFailed1101009,
        ["1101004"] = self.OnSubFailed1101004,
        ["1101005"] = self.OnSubFailed1101005,
        ["1101006"] = self.OnSubFailed1101006
    }
end

function Quest11010:Start()
    print("Start")
end

function Quest11010:OnDestroy()
    print("OnDestroy")
end

function Quest11010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11010:OnSubStart1101001(arg1)
    print("OnSubStart1101001")
    self:CreateQuestNpc(arg1, npcs.Npc10304Data.id, 1)
end

function Quest11010:OnSubFinish1101001(arg1)
    print("OnSubFinish1101001")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11010:OnSubFailed1101001(arg1)
    print("OnSubFailed1101001")
end

function Quest11010:OnSubStart1101002(arg1)
    print("OnSubStart1101002")
    actorMgr:CreateActorWithPos(datas.Q11010Trigger_.alias, datas.Q11010Trigger_.script, datas.Q11010Trigger_.id, 0, datas.Q11010Trigger_.point.pos, datas.Q11010Trigger_.point.rot, true, false, 3)
end

function Quest11010:OnSubFinish1101002(arg1)
    print("OnSubFinish1101002")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1)
end

function Quest11010:OnSubFailed1101002(arg1)
    print("OnSubFailed1101002")
end

function Quest11010:OnSubStart1101007(arg1)
    print("OnSubStart1101007")
    actorMgr:CreateActorWithPos(datas.Q11010Trigger2_.alias, datas.Q11010Trigger2_.script, datas.Q11010Trigger2_.id, 0, datas.Q11010Trigger2_.point.pos, datas.Q11010Trigger2_.point.rot, true, false, 3)
end

function Quest11010:OnSubFinish1101007(arg1)
    print("OnSubFinish1101007")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Quest11010:OnSubFailed1101007(arg1)
    print("OnSubFailed1101007")
end

function Quest11010:OnSubStart1101008(arg1)
    print("OnSubStart1101008")
    actorMgr:CreateActorWithPos(datas.Q11010Trigger3_.alias, datas.Q11010Trigger3_.script, datas.Q11010Trigger3_.id, 0, datas.Q11010Trigger3_.point.pos, datas.Q11010Trigger3_.point.rot, true, false, 3)
end

function Quest11010:OnSubFinish1101008(arg1)
    print("OnSubFinish1101008")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q11010Cam").pos, 0, 2, true, false)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest11010:OnSubFailed1101008(arg1)
    print("OnSubFailed1101008")
end

function Quest11010:OnSubStart1101010(arg1)
    print("OnSubStart1101010")
end

function Quest11010:OnSubFinish1101010(arg1)
    print("OnSubFinish1101010")
end

function Quest11010:OnSubFailed1101010(arg1)
    print("OnSubFailed1101010")
end

function Quest11010:OnSubStart1101003(arg1)
    if self:GetSubQuestState(1101010) == 3 then
        self:FinishQuestID(false, 1101003)
    end
end

function Quest11010:OnSubFinish1101003(arg1)
    print("OnSubFinish1101003")
end

function Quest11010:OnSubFailed1101003(arg1)
    print("OnSubFailed1101003")
end

function Quest11010:OnSubStart1101009(arg1)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.PaimonData.alias})
        self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
            local avatarPos = actorUtils.GetAvatarPos()
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 1.5
            print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
            avatarPos.x = avatarPos.x + avatarForward.x * n
            avatarPos.z = avatarPos.z + avatarForward.z * n
            local v = avatarForward
            v.x = v.x * -1
            v.z = v.z * -1
            arg1:CreateQuestNpcByIdWithPos(1101009, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v))
            arg1:RequestInteraction(npcs.PaimonData.alias)
            globalActor:EnablePlayerInput(true)
        end, nil, questNpcCreateTask)
    end)
end

function Quest11010:OnSubFinish1101009(arg1)
    print("OnSubFinish1101009")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11010:OnSubFailed1101009(arg1)
    print("OnSubFailed1101009")
end

function Quest11010:OnSubStart1101004(arg1)
    print("OnSubStart1101004")
    self:CreateQuestNpc(arg1, npcs.Npc10265Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):DoFreeStyle(0, true)
end

function Quest11010:OnSubFinish1101004(arg1)
    print("OnSubFinish1101004")
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10304Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11010:OnSubFailed1101004(arg1)
    print("OnSubFailed1101004")
end

function Quest11010:OnSubStart1101005(arg1)
    print("OnSubStart1101005")
end

function Quest11010:OnSubFinish1101005(arg1)
    print("OnSubFinish1101005")
end

function Quest11010:OnSubFailed1101005(arg1)
    print("OnSubFailed1101005")
end

function Quest11010:OnSubStart1101006(arg1)
    print("OnSubStart1101006")
    self:ShowBlackScreen(0, 1, 0.5)
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2145Data.id, 2)
end

function Quest11010:OnSubFinish1101006(arg1)
    print("OnSubFinish1101006")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 1033)
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 1033)
    self:DestroyQuestNpcActor(npcs.Npc2145Data.alias, 1033)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11010:OnSubFailed1101006(arg1)
    print("OnSubFailed1101006")
end

return Quest11010
