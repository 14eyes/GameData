require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22115 = class("Quest22115", QuestActorProxy)
Quest22115.defaultAlias = "Quest22115"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22115:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211501"] = self.OnSubStart2211501,
        ["2211502"] = self.OnSubStart2211502,
        ["2211503"] = self.OnSubStart2211503,
        ["2211504"] = self.OnSubStart2211504,
        ["2211505"] = self.OnSubStart2211505,
        ["2211506"] = self.OnSubStart2211506,
        ["2211507"] = self.OnSubStart2211507,
        ["2211508"] = self.OnSubStart2211508,
        ["2211509"] = self.OnSubStart2211509,
        ["2211510"] = self.OnSubStart2211510,
        ["2211511"] = self.OnSubStart2211511
    }
end

function Quest22115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211501"] = self.OnSubFinish2211501,
        ["2211502"] = self.OnSubFinish2211502,
        ["2211503"] = self.OnSubFinish2211503,
        ["2211504"] = self.OnSubFinish2211504,
        ["2211505"] = self.OnSubFinish2211505,
        ["2211506"] = self.OnSubFinish2211506,
        ["2211507"] = self.OnSubFinish2211507,
        ["2211508"] = self.OnSubFinish2211508,
        ["2211509"] = self.OnSubFinish2211509,
        ["2211510"] = self.OnSubFinish2211510,
        ["2211511"] = self.OnSubFinish2211511
    }
end

function Quest22115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211501"] = self.OnSubFailed2211501,
        ["2211502"] = self.OnSubFailed2211502,
        ["2211503"] = self.OnSubFailed2211503,
        ["2211504"] = self.OnSubFailed2211504,
        ["2211505"] = self.OnSubFailed2211505,
        ["2211506"] = self.OnSubFailed2211506,
        ["2211507"] = self.OnSubFailed2211507,
        ["2211508"] = self.OnSubFailed2211508,
        ["2211509"] = self.OnSubFailed2211509,
        ["2211510"] = self.OnSubFailed2211510,
        ["2211511"] = self.OnSubFailed2211511
    }
end

function Quest22115:Start()
    print("Start")
end

function Quest22115:OnDestroy()
    print("OnDestroy")
end

function Quest22115:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyQuestNpcActor(npcs.Npc1624Data.alias, 0)
end

function Quest22115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22115:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1624Data.alias, 0)
end

function Quest22115:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = npcs.Npc1624Data.point.pos.x - avatarPos.x
        avatarForward.z = npcs.Npc1624Data.point.pos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + npcs.Npc1624Data.point.pos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + npcs.Npc1624Data.point.pos.z) + avatarForward.z * 1
        avatarForward.x = npcs.Npc1624Data.point.pos.x - avatarPos.x
        avatarForward.z = npcs.Npc1624Data.point.pos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2211504, 1005, 2, avatarPos, M.Dir2Euler(avatarForward))
    elseif arg1 == 2 then
    end
end

function Quest22115:DestroyNpc()
    print("DestroyNpc")
    self:DestroyQuestNpcActor(npcs.Npc1624Data.alias, 0)
end

function Quest22115:DestroyPaimon()
    print("DestroyPaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest22115:OnSubStart2211501(arg1)
    print("OnSubStart2211501")
    self:CreateQuestNpc(arg1, npcs.Npc1624Data.id, 1)
end

function Quest22115:OnSubFinish2211501(arg1)
    print("OnSubFinish2211501")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1624Data.alias)
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
end

function Quest22115:OnSubFailed2211501(arg1)
    print("OnSubFailed2211501")
end

function Quest22115:OnSubStart2211502(arg1)
    print("OnSubStart2211502")
end

function Quest22115:OnSubFinish2211502(arg1)
    print("OnSubFinish2211502")
end

function Quest22115:OnSubFailed2211502(arg1)
    print("OnSubFailed2211502")
end

function Quest22115:OnSubStart2211503(arg1)
    print("OnSubStart2211503")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1624Data.alias)
    questNpcActor:DoFreeStyle(4190, false)
    questNpcActor:EnableInteraction(false)
    self:NarratorOnlyTask(datas.PaimonReminder)
end

function Quest22115:OnSubFinish2211503(arg1)
    print("OnSubFinish2211503")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1624Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
end

function Quest22115:OnSubFailed2211503(arg1)
    print("OnSubFailed2211503")
end

function Quest22115:OnSubStart2211504(arg1)
    print("OnSubStart2211504")
end

function Quest22115:OnSubFinish2211504(arg1)
    print("OnSubFinish2211504")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNpc)
end

function Quest22115:OnSubFailed2211504(arg1)
    print("OnSubFailed2211504")
end

function Quest22115:OnSubStart2211505(arg1)
    print("OnSubStart2211505")
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest22115:OnSubFinish2211505(arg1)
    print("OnSubFinish2211505")
    self:ActionSafeCall(self.DestroyPaimon)
end

function Quest22115:OnSubFailed2211505(arg1)
    print("OnSubFailed2211505")
end

function Quest22115:OnSubStart2211506(arg1)
    print("OnSubStart2211506")
end

function Quest22115:OnSubFinish2211506(arg1)
    print("OnSubFinish2211506")
end

function Quest22115:OnSubFailed2211506(arg1)
    print("OnSubFailed2211506")
end

function Quest22115:OnSubStart2211507(arg1)
    print("OnSubStart2211507")
end

function Quest22115:OnSubFinish2211507(arg1)
    print("OnSubFinish2211507")
end

function Quest22115:OnSubFailed2211507(arg1)
    print("OnSubFailed2211507")
end

function Quest22115:OnSubStart2211508(arg1)
    print("OnSubStart2211508")
end

function Quest22115:OnSubFinish2211508(arg1)
    print("OnSubFinish2211508")
end

function Quest22115:OnSubFailed2211508(arg1)
    print("OnSubFailed2211508")
end

function Quest22115:OnSubStart2211509(arg1)
    print("OnSubStart2211509")
end

function Quest22115:OnSubFinish2211509(arg1)
    print("OnSubFinish2211509")
end

function Quest22115:OnSubFailed2211509(arg1)
    print("OnSubFailed2211509")
end

function Quest22115:OnSubStart2211510(arg1)
    print("OnSubStart2211510")
end

function Quest22115:OnSubFinish2211510(arg1)
    print("OnSubFinish2211510")
end

function Quest22115:OnSubFailed2211510(arg1)
    print("OnSubFailed2211510")
end

function Quest22115:OnSubStart2211511(arg1)
    print("OnSubStart2211511")
end

function Quest22115:OnSubFinish2211511(arg1)
    print("OnSubFinish2211511")
end

function Quest22115:OnSubFailed2211511(arg1)
    print("OnSubFailed2211511")
end

return Quest22115
