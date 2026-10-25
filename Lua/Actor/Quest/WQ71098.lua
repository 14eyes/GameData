require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71098 = class("Quest71098", QuestActorProxy)
Quest71098.defaultAlias = "Quest71098"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71098:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7109801"] = self.OnSubStart7109801,
        ["7109802"] = self.OnSubStart7109802,
        ["7109803"] = self.OnSubStart7109803,
        ["7109804"] = self.OnSubStart7109804,
        ["7109809"] = self.OnSubStart7109809,
        ["7109805"] = self.OnSubStart7109805,
        ["7109806"] = self.OnSubStart7109806,
        ["7109807"] = self.OnSubStart7109807,
        ["7109810"] = self.OnSubStart7109810,
        ["7109808"] = self.OnSubStart7109808
    }
end

function Quest71098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7109801"] = self.OnSubFinish7109801,
        ["7109802"] = self.OnSubFinish7109802,
        ["7109803"] = self.OnSubFinish7109803,
        ["7109804"] = self.OnSubFinish7109804,
        ["7109809"] = self.OnSubFinish7109809,
        ["7109805"] = self.OnSubFinish7109805,
        ["7109806"] = self.OnSubFinish7109806,
        ["7109807"] = self.OnSubFinish7109807,
        ["7109810"] = self.OnSubFinish7109810,
        ["7109808"] = self.OnSubFinish7109808
    }
end

function Quest71098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71098:Start()
    print("Start")
end

function Quest71098:OnDestroy()
    print("OnDestroy")
end

function Quest71098:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71098:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71098:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71098:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71098:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71098:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71098:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7109809)
    end
end

function Quest71098:OnSubStart7109801(arg1)
    print("OnSubStart7109801")
    actorUtils.FinishQuestID(false, 7109801)
end

function Quest71098:OnSubFinish7109801(arg1)
    print("OnSubFinish7109801")
end

function Quest71098:OnSubStart7109802(arg1)
    print("OnSubStart7109802")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
end

function Quest71098:OnSubFinish7109802(arg1)
    print("OnSubFinish7109802")
end

function Quest71098:OnSubStart7109803(arg1)
    print("OnSubStart7109803")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):SitOnChair(8010)
end

function Quest71098:OnSubFinish7109803(arg1)
    print("OnSubFinish7109803")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20657Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20658Data.alias)
end

function Quest71098:OnSubStart7109804(arg1)
    print("OnSubStart7109804")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2204Data.id, 3)
end

function Quest71098:OnSubFinish7109804(arg1)
    print("OnSubFinish7109804")
end

function Quest71098:OnSubStart7109809(arg1)
    print("OnSubStart7109809")
    self.NpcCreateWithBlackscreen(self, arg1, npcs.Npc20657Data.id, 1)
    self.NpcCreateWithBlackscreen(self, arg1, npcs.Npc20658Data.id, 2)
    self.CreateQuestNpc(self, arg1, npcs.PaimonData.id, 3)
    actorMgr:GetActor(npcs.PaimonData.alias)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7109809, npcs.PaimonData.id, 3, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 0.2, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71098:OnSubFinish7109809(arg1)
    print("OnSubFinish7109809")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71098:OnSubStart7109805(arg1)
    print("OnSubStart7109805")
    self:NarratorOnlyTask(datas.narrator1, nil, "")
end

function Quest71098:OnSubFinish7109805(arg1)
    print("OnSubFinish7109805")
    self:NarratorOnlyTask(datas.narrator2, nil, "")
end

function Quest71098:OnSubStart7109806(arg1)
    print("OnSubStart7109806")
end

function Quest71098:OnSubFinish7109806(arg1)
    print("OnSubFinish7109806")
end

function Quest71098:OnSubStart7109807(arg1)
    print("OnSubStart7109807")
end

function Quest71098:OnSubFinish7109807(arg1)
    print("OnSubFinish7109807")
end

function Quest71098:OnSubStart7109810(arg1)
    print("OnSubStart7109810")
    actorUtils.FinishQuestID(false, 7109810)
end

function Quest71098:OnSubFinish7109810(arg1)
    print("OnSubFinish7109810")
end

function Quest71098:OnSubStart7109808(arg1)
    print("OnSubStart7109808")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20657Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20658Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20658Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):SitOnChair(0)
    self:TransmitPlayerWithTextByQuestId(7109808, 1, datas.TextmapId, 3, nil, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20657Data.id, 1, npcs.Npc20657Data.alias)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc20658Data.id, 2)
    end)

    actorMgr:CreateActorWithPos("Q7109808Trigger", "Actor/Gadget/Q7109808Trigger", 70900002, 0, {x = 937.185, y = 213.464, z = 334.657}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest71098:OnSubFinish7109808(arg1)
    print("OnSubFinish7109808")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20657Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20658Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc2204Data.alias, 3)
end

return Quest71098
