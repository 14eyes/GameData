require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72108 = class("Quest72108", QuestActorProxy)
Quest72108.defaultAlias = "Quest72108"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest72108:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest72108:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210810"] = self.OnSubStart7210810,
        ["7210801"] = self.OnSubStart7210801,
        ["7210811"] = self.OnSubStart7210811,
        ["7210819"] = self.OnSubStart7210819,
        ["7210802"] = self.OnSubStart7210802,
        ["7210812"] = self.OnSubStart7210812,
        ["7210816"] = self.OnSubStart7210816,
        ["7210813"] = self.OnSubStart7210813,
        ["7210814"] = self.OnSubStart7210814,
        ["7210803"] = self.OnSubStart7210803,
        ["7210804"] = self.OnSubStart7210804,
        ["7210805"] = self.OnSubStart7210805,
        ["7210806"] = self.OnSubStart7210806,
        ["7210821"] = self.OnSubStart7210821,
        ["7210807"] = self.OnSubStart7210807,
        ["7210815"] = self.OnSubStart7210815,
        ["7210808"] = self.OnSubStart7210808,
        ["7210809"] = self.OnSubStart7210809,
        ["7210817"] = self.OnSubStart7210817,
        ["7210820"] = self.OnSubStart7210820,
        ["7210818"] = self.OnSubStart7210818
    }
end

function Quest72108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210810"] = self.OnSubFinish7210810,
        ["7210801"] = self.OnSubFinish7210801,
        ["7210811"] = self.OnSubFinish7210811,
        ["7210819"] = self.OnSubFinish7210819,
        ["7210802"] = self.OnSubFinish7210802,
        ["7210812"] = self.OnSubFinish7210812,
        ["7210816"] = self.OnSubFinish7210816,
        ["7210813"] = self.OnSubFinish7210813,
        ["7210814"] = self.OnSubFinish7210814,
        ["7210803"] = self.OnSubFinish7210803,
        ["7210804"] = self.OnSubFinish7210804,
        ["7210805"] = self.OnSubFinish7210805,
        ["7210806"] = self.OnSubFinish7210806,
        ["7210821"] = self.OnSubFinish7210821,
        ["7210807"] = self.OnSubFinish7210807,
        ["7210815"] = self.OnSubFinish7210815,
        ["7210808"] = self.OnSubFinish7210808,
        ["7210809"] = self.OnSubFinish7210809,
        ["7210817"] = self.OnSubFinish7210817,
        ["7210820"] = self.OnSubFinish7210820,
        ["7210818"] = self.OnSubFinish7210818
    }
end

function Quest72108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210810"] = self.OnSubFailed7210810,
        ["7210801"] = self.OnSubFailed7210801,
        ["7210811"] = self.OnSubFailed7210811,
        ["7210819"] = self.OnSubFailed7210819,
        ["7210802"] = self.OnSubFailed7210802,
        ["7210812"] = self.OnSubFailed7210812,
        ["7210816"] = self.OnSubFailed7210816,
        ["7210813"] = self.OnSubFailed7210813,
        ["7210814"] = self.OnSubFailed7210814,
        ["7210803"] = self.OnSubFailed7210803,
        ["7210804"] = self.OnSubFailed7210804,
        ["7210805"] = self.OnSubFailed7210805,
        ["7210806"] = self.OnSubFailed7210806,
        ["7210821"] = self.OnSubFailed7210821,
        ["7210807"] = self.OnSubFailed7210807,
        ["7210815"] = self.OnSubFailed7210815,
        ["7210808"] = self.OnSubFailed7210808,
        ["7210809"] = self.OnSubFailed7210809,
        ["7210817"] = self.OnSubFailed7210817,
        ["7210820"] = self.OnSubFailed7210820,
        ["7210818"] = self.OnSubFailed7210818
    }
end

function Quest72108:Start()
    print("Start")
end

function Quest72108:OnDestroy()
    print("OnDestroy")
end

function Quest72108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72108:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("OnSubStart7210820")
        self:FinishQuestID(false, 7210820)
    end
end

function Quest72108:OnSubStart7210810(arg1)
    print("OnSubStart7210810")
end

function Quest72108:OnSubFinish7210810(arg1)
    print("OnSubFinish7210810")
end

function Quest72108:OnSubFailed7210810(arg1)
    print("OnSubFailed7210810")
end

function Quest72108:OnSubStart7210801(arg1)
    print("OnSubStart7210801")
end

function Quest72108:OnSubFinish7210801(arg1)
    print("OnSubFinish7210801")
end

function Quest72108:OnSubFailed7210801(arg1)
    print("OnSubFailed7210801")
end

function Quest72108:OnSubStart7210811(arg1)
    print("OnSubStart7210811")
    self.ShowBlackScreen(self, 1, 2, 1, nil, nil, nil, "", false, true)
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
    self.CreateQuestNpcByIdWithPos(self, 7210811, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72108:OnSubFinish7210811(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72108:OnSubFailed7210811(arg1)
    print("OnSubFailed7210811")
end

function Quest72108:OnSubStart7210819(arg1)
    print("OnSubStart7210819")
end

function Quest72108:OnSubFinish7210819(arg1)
    print("OnSubFinish7210819")
end

function Quest72108:OnSubFailed7210819(arg1)
    print("OnSubFailed7210819")
end

function Quest72108:OnSubStart7210802(arg1)
    print("OnSubStart7210802")
    self:CreateQuestNpc(arg1, npcs.Npc3159Data.id, 1)
end

function Quest72108:OnSubFinish7210802(arg1)
    print("OnSubFinish7210802")
end

function Quest72108:OnSubFailed7210802(arg1)
    print("OnSubFailed7210802")
end

function Quest72108:OnSubStart7210812(arg1)
    print("OnSubStart7210812")
end

function Quest72108:OnSubFinish7210812(arg1)
    print("OnSubFinish7210812")
end

function Quest72108:OnSubFailed7210812(arg1)
    print("OnSubFailed7210812")
end

function Quest72108:OnSubStart7210816(arg1)
    print("OnSubStart7210816")
    self.ShowBlackScreen(self, 1, 1, 1, nil, nil, nil, "", false, true)
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
    self.CreateQuestNpcByIdWithPos(self, 7210816, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72108:OnSubFinish7210816(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72108:OnSubFailed7210816(arg1)
    print("OnSubFailed7210816")
end

function Quest72108:OnSubStart7210813(arg1)
    print("OnSubStart7210813")
end

function Quest72108:OnSubFinish7210813(arg1)
    print("OnSubFinish7210813")
end

function Quest72108:OnSubFailed7210813(arg1)
    print("OnSubFailed7210813")
end

function Quest72108:OnSubStart7210814(arg1)
    print("OnSubStart7210814")
end

function Quest72108:OnSubFinish7210814(arg1)
    print("OnSubFinish7210814")
end

function Quest72108:OnSubFailed7210814(arg1)
    print("OnSubFailed7210814")
end

function Quest72108:OnSubStart7210803(arg1)
    print("OnSubStart7210803")
end

function Quest72108:OnSubFinish7210803(arg1)
    print("OnSubFinish7210803")
end

function Quest72108:OnSubFailed7210803(arg1)
    print("OnSubFailed7210803")
end

function Quest72108:OnSubStart7210804(arg1)
    print("OnSubStart7210804")
end

function Quest72108:OnSubFinish7210804(arg1)
    print("OnSubFinish7210804")
end

function Quest72108:OnSubFailed7210804(arg1)
    print("OnSubFailed7210804")
end

function Quest72108:OnSubStart7210805(arg1)
    print("OnSubStart7210805")
end

function Quest72108:OnSubFinish7210805(arg1)
    print("OnSubFinish7210805")
end

function Quest72108:OnSubFailed7210805(arg1)
    print("OnSubFailed7210805")
end

function Quest72108:OnSubStart7210806(arg1)
    print("OnSubStart7210806")
end

function Quest72108:OnSubFinish7210806(arg1)
    print("OnSubFinish7210806")
end

function Quest72108:OnSubFailed7210806(arg1)
    print("OnSubFailed7210806")
end

function Quest72108:OnSubStart7210821(arg1)
    print("OnSubStart7210821")
end

function Quest72108:OnSubFinish7210821(arg1)
    print("OnSubFinish7210821")
end

function Quest72108:OnSubFailed7210821(arg1)
    print("OnSubFailed7210821")
end

function Quest72108:OnSubStart7210807(arg1)
    print("OnSubStart7210807")
    self:CreateQuestNpc(arg1, npcs.Npc3161Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3188Data.id, 3)
end

function Quest72108:OnSubFinish7210807(arg1)
    print("OnSubFinish7210807")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_Q7210801", false, true)
end

function Quest72108:OnSubFailed7210807(arg1)
    print("OnSubFailed7210807")
end

function Quest72108:OnSubStart7210815(arg1)
    print("OnSubStart7210815")
end

function Quest72108:OnSubFinish7210815(arg1)
    print("OnSubFinish7210815")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72108:OnSubFailed7210815(arg1)
    print("OnSubFailed7210815")
end

function Quest72108:OnSubStart7210808(arg1)
    self:CallDelay(2, self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1))
end

function Quest72108:OnSubFinish7210808(arg1)
    print("OnSubFinish7210808")
end

function Quest72108:OnSubFailed7210808(arg1)
    print("OnSubFailed7210808")
end

function Quest72108:OnSubStart7210809(arg1)
    print("OnSubStart7210809")
    self.ShowBlackScreen(self, 1, 1, 1, nil, nil, nil, "", false, true)
    self.TransmitPlayerById(self, arg1, 7210809)
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
    self.CreateQuestNpcByIdWithPos(self, 7210809, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72108:OnSubFinish7210809(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72108:OnSubFailed7210809(arg1)
    print("OnSubFailed7210809")
end

function Quest72108:OnSubStart7210817(arg1)
    print("OnSubStart7210817")
end

function Quest72108:OnSubFinish7210817(arg1)
    print("OnSubFinish7210817")
end

function Quest72108:OnSubFailed7210817(arg1)
    print("OnSubFailed7210817")
end

function Quest72108:OnSubStart7210820(arg1)
    print("OnSubStart7210820")
end

function Quest72108:OnSubFinish7210820(arg1)
    print("OnSubFinish7210820")
end

function Quest72108:OnSubFailed7210820(arg1)
    print("OnSubFailed7210820")
end

function Quest72108:OnSubStart7210818(arg1)
    print("OnSubStart7210818")
end

function Quest72108:OnSubFinish7210818(arg1)
    print("OnSubFinish7210818")
    self:GetQuestNpcActor(npcs.Npc20221Data.alias):DestroyWithDither(false, 0.2)
end

function Quest72108:OnSubFailed7210818(arg1)
    print("OnSubFailed7210818")
end

return Quest72108
