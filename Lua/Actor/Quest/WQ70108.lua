require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70108 = class("Quest70108", QuestActorProxy)
Quest70108.defaultAlias = "Quest70108"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70108:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70108:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7010801"] = self.OnSubStart7010801,
        ["7010802"] = self.OnSubStart7010802,
        ["7010803"] = self.OnSubStart7010803,
        ["7010804"] = self.OnSubStart7010804,
        ["7010805"] = self.OnSubStart7010805
    }
end

function Quest70108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7010801"] = self.OnSubFinish7010801,
        ["7010802"] = self.OnSubFinish7010802,
        ["7010803"] = self.OnSubFinish7010803,
        ["7010804"] = self.OnSubFinish7010804,
        ["7010805"] = self.OnSubFinish7010805
    }
end

function Quest70108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7010801"] = self.OnSubFailed7010801,
        ["7010802"] = self.OnSubFailed7010802,
        ["7010803"] = self.OnSubFailed7010803,
        ["7010804"] = self.OnSubFailed7010804,
        ["7010805"] = self.OnSubFailed7010805
    }
end

function Quest70108:Start()
    print("Start")
end

function Quest70108:OnDestroy()
    print("OnDestroy")
end

function Quest70108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70108:OnSubStart7010801(arg1)
    print("OnSubStart7010801")
end

function Quest70108:OnSubFinish7010801(arg1)
    print("OnSubFinish7010801")
end

function Quest70108:OnSubFailed7010801(arg1)
    print("OnSubFailed7010801")
end

function Quest70108:OnSubStart7010802(arg1)
    print("OnSubStart7010802")
end

function Quest70108:OnSubFinish7010802(arg1)
    print("OnSubFinish7010802")
end

function Quest70108:OnSubFailed7010802(arg1)
    print("OnSubFailed7010802")
end

function Quest70108:OnSubStart7010803(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7010803, npcs.NpcData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.NpcData.alias)
    end)
end

function Quest70108:OnSubFinish7010803(arg1)
    self:GetQuestNpcActor(npcs.NpcData.alias):DestroyWithDisappear(false)
end

function Quest70108:OnSubFailed7010803(arg1)
    print("OnSubFailed7010803")
end

function Quest70108:OnSubStart7010804(arg1)
    print("OnSubStart7010804")
end

function Quest70108:OnSubFinish7010804(arg1)
    print("OnSubFinish7010804")
end

function Quest70108:OnSubFailed7010804(arg1)
    print("OnSubFailed7010804")
end

function Quest70108:OnSubStart7010805(arg1)
    self:NotifyTo("Npc1409", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest70108:OnSubFinish7010805(arg1)
    self:NotifyTo("Npc1409", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest70108:OnSubFailed7010805(arg1)
    print("OnSubFailed7010805")
end

return Quest70108
