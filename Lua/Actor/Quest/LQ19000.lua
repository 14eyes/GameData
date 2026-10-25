require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19000 = class("Quest19000", QuestActorProxy)
Quest19000.defaultAlias = "Quest19000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900001"] = self.OnSubStart1900001,
        ["1900002"] = self.OnSubStart1900002,
        ["1900003"] = self.OnSubStart1900003,
        ["1900004"] = self.OnSubStart1900004,
        ["1900005"] = self.OnSubStart1900005,
        ["1900006"] = self.OnSubStart1900006,
        ["1900007"] = self.OnSubStart1900007,
        ["1900008"] = self.OnSubStart1900008,
        ["1900009"] = self.OnSubStart1900009,
        ["1900010"] = self.OnSubStart1900010,
        ["1900011"] = self.OnSubStart1900011
    }
end

function Quest19000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900001"] = self.OnSubFinish1900001,
        ["1900002"] = self.OnSubFinish1900002,
        ["1900003"] = self.OnSubFinish1900003,
        ["1900004"] = self.OnSubFinish1900004,
        ["1900005"] = self.OnSubFinish1900005,
        ["1900006"] = self.OnSubFinish1900006,
        ["1900007"] = self.OnSubFinish1900007,
        ["1900008"] = self.OnSubFinish1900008,
        ["1900009"] = self.OnSubFinish1900009,
        ["1900010"] = self.OnSubFinish1900010,
        ["1900011"] = self.OnSubFinish1900011
    }
end

function Quest19000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900001"] = self.OnSubFailed1900001,
        ["1900002"] = self.OnSubFailed1900002,
        ["1900003"] = self.OnSubFailed1900003,
        ["1900004"] = self.OnSubFailed1900004,
        ["1900005"] = self.OnSubFailed1900005,
        ["1900006"] = self.OnSubFailed1900006,
        ["1900007"] = self.OnSubFailed1900007,
        ["1900008"] = self.OnSubFailed1900008,
        ["1900009"] = self.OnSubFailed1900009,
        ["1900010"] = self.OnSubFailed1900010,
        ["1900011"] = self.OnSubFailed1900011
    }
end

function Quest19000:Start()
    print("Start")
end

function Quest19000:OnDestroy()
    print("OnDestroy")
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc147101Data.alias, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
end

function Quest19000:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc147101Data.alias, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
end

function Quest19000:OnMainFailed(arg1)
    print("OnMainFailed")
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc147101Data.alias, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
end

function Quest19000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc147101Data.alias, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
end

function Quest19000:NarratorWithId1900104()
    print("NarratorWithId1900104")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1900104)
end

function Quest19000:NarratorWithId1900105()
    print("NarratorWithId1900105")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1900105)
end

function Quest19000:OnSubStart1900001(arg1)
    print("OnSubStart1900001")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010101)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
end

function Quest19000:OnSubFinish1900001(arg1)
    print("OnSubFinish1900001")
    self:DestroyQuestNpcActor(npcs.Npc147101Data.alias, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
end

function Quest19000:OnSubFailed1900001(arg1)
    print("OnSubFailed1900001")
end

function Quest19000:OnSubStart1900002(arg1)
    print("OnSubStart1900002")
    actorMgr:CreateActorWithPos(datas.Q19000Trigger02_.alias, datas.Q19000Trigger02_.script, datas.Q19000Trigger02_.id, 0, datas.Q19000Trigger02_.point.pos, datas.Q19000Trigger02_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):DoFreeStyle(10601, true, nil, true, true)
end

function Quest19000:OnSubFinish1900002(arg1)
    print("OnSubFinish1900002")
end

function Quest19000:OnSubFailed1900002(arg1)
    print("OnSubFailed1900002")
end

function Quest19000:OnSubStart1900003(arg1)
    print("OnSubStart1900003")
    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010102)
end

function Quest19000:OnSubFinish1900003(arg1)
    print("OnSubFinish1900003")
end

function Quest19000:OnSubFailed1900003(arg1)
    print("OnSubFailed1900003")
end

function Quest19000:OnSubStart1900004(arg1)
    print("OnSubStart1900004")
    self:CallDelay(5, self.NarratorWithId1900104)
end

function Quest19000:OnSubFinish1900004(arg1)
    print("OnSubFinish1900004")
    self:CallDelay(5, self.NarratorWithId1900105)
end

function Quest19000:OnSubFailed1900004(arg1)
    print("OnSubFailed1900004")
end

function Quest19000:OnSubStart1900005(arg1)
    print("OnSubStart1900005")
    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010302)
end

function Quest19000:OnSubFinish1900005(arg1)
    print("OnSubFinish1900005")
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19000:OnSubFailed1900005(arg1)
    print("OnSubFailed1900005")
end

function Quest19000:OnSubStart1900006(arg1)
    print("OnSubStart1900006")
    actorMgr:CreateActorWithPos(datas.Q19000Trigger_.alias, datas.Q19000Trigger_.script, datas.Q19000Trigger_.id, 0, datas.Q19000Trigger_.point.pos, datas.Q19000Trigger_.point.rot, true, false, 3)
end

function Quest19000:OnSubFinish1900006(arg1)
    print("OnSubFinish1900006")
    actorMgr:DestroyEntityActor(datas.Q19000Trigger_.alias, 3, false)
end

function Quest19000:OnSubFailed1900006(arg1)
    print("OnSubFailed1900006")
end

function Quest19000:OnSubStart1900007(arg1)
    print("OnSubStart1900007")
    self:ShowBlackScreen(0.2, 1, 0.2, nil, nil, nil, "")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010303)
    self:RequestInteraction(npcs.Coop_BarbaraData.alias)
end

function Quest19000:OnSubFinish1900007(arg1)
    print("OnSubFinish1900007")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19000:OnSubFailed1900007(arg1)
    print("OnSubFailed1900007")
end

function Quest19000:OnSubStart1900008(arg1)
    print("OnSubStart1900008")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010304)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
end

function Quest19000:OnSubFinish1900008(arg1)
    print("OnSubFinish1900008")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc147101Data.alias, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
end

function Quest19000:OnSubFailed1900008(arg1)
    print("OnSubFailed1900008")
end

function Quest19000:OnSubStart1900009(arg1)
    print("OnSubStart1900009")
end

function Quest19000:OnSubFinish1900009(arg1)
    print("OnSubFinish1900009")
end

function Quest19000:OnSubFailed1900009(arg1)
    print("OnSubFailed1900009")
end

function Quest19000:OnSubStart1900010(arg1)
    print("1900010 Start : Creat Paimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcWithPos(arg1, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(npcs.PaimonData.id)
    end)

    self:CallDelay(2, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)

    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010305)
end

function Quest19000:OnSubFinish1900010(arg1)
    print("OnSubFinish1900010")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest19000:OnSubFailed1900010(arg1)
    print("OnSubFailed1900010")
end

function Quest19000:OnSubStart1900011(arg1)
    print("OnSubStart1900011")
    self:RequestCoopInteractionFromSubStartPoint(101401, 1014010306)
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
end

function Quest19000:OnSubFinish1900011(arg1)
    print("OnSubFinish1900011")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19000:OnSubFailed1900011(arg1)
    print("OnSubFailed1900011")
end

return Quest19000
