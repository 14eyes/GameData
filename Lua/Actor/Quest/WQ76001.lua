require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76001 = class("Quest76001", QuestActorProxy)
Quest76001.defaultAlias = "Quest76001"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600109"] = self.OnSubStart7600109,
        ["7600110"] = self.OnSubStart7600110,
        ["7600111"] = self.OnSubStart7600111,
        ["7600101"] = self.OnSubStart7600101,
        ["7600107"] = self.OnSubStart7600107,
        ["7600102"] = self.OnSubStart7600102,
        ["7600103"] = self.OnSubStart7600103,
        ["7600108"] = self.OnSubStart7600108,
        ["7600105"] = self.OnSubStart7600105,
        ["7600106"] = self.OnSubStart7600106,
        ["7600104"] = self.OnSubStart7600104
    }
end

function Quest76001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600109"] = self.OnSubFinish7600109,
        ["7600110"] = self.OnSubFinish7600110,
        ["7600111"] = self.OnSubFinish7600111,
        ["7600101"] = self.OnSubFinish7600101,
        ["7600107"] = self.OnSubFinish7600107,
        ["7600102"] = self.OnSubFinish7600102,
        ["7600103"] = self.OnSubFinish7600103,
        ["7600108"] = self.OnSubFinish7600108,
        ["7600105"] = self.OnSubFinish7600105,
        ["7600106"] = self.OnSubFinish7600106,
        ["7600104"] = self.OnSubFinish7600104
    }
end

function Quest76001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76001:Start()
    print("Start")
end

function Quest76001:OnDestroy()
    print("OnDestroy")
end

function Quest76001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76001:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600106Trigger")
end

function Quest76001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76001:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, arg4, avatarPos, avatarForward)
end

function Quest76001:OnSubStart7600109(arg1)
    print("OnSubStart7600109")
end

function Quest76001:OnSubFinish7600109(arg1)
    print("OnSubFinish7600109")
end

function Quest76001:OnSubStart7600110(arg1)
    print("OnSubStart7600110")
end

function Quest76001:OnSubFinish7600110(arg1)
    print("OnSubFinish7600110")
end

function Quest76001:OnSubStart7600111(arg1)
    print("OnSubStart7600111")
end

function Quest76001:OnSubFinish7600111(arg1)
    print("OnSubFinish7600111")
end

function Quest76001:OnSubStart7600101(arg1)
    print("OnSubStart7600101")
end

function Quest76001:OnSubFinish7600101(arg1)
    print("OnSubFinish7600101")
end

function Quest76001:OnSubStart7600107(arg1)
    print("OnSubStart7600107")
    this:CreateQuestNpcFaceToPlayer(7600107, 1005, 1, 0)
    this:RequestInteraction(npcs.Paimon.alias, "", true)
end

function Quest76001:OnSubFinish7600107(arg1)
    print("OnSubFinish7600107")
    this:GetQuestNpcActor(npcs.Paimon.alias, 76001):DestroyWithDisappear(false, nil)
end

function Quest76001:OnSubStart7600102(arg1)
    print("OnSubStart7600102")
end

function Quest76001:OnSubFinish7600102(arg1)
    print("OnSubFinish7600102")
    this:QuestNarratorTask(datas.NarratorWithId_finish2, nil)
end

function Quest76001:OnSubStart7600103(arg1)
    print("OnSubStart7600103")
end

function Quest76001:OnSubFinish7600103(arg1)
    print("OnSubFinish7600103")
end

function Quest76001:OnSubStart7600108(arg1)
    print("OnSubStart7600108")
    this:CreateQuestNpcFaceToPlayer(7600108, 1005, 1, 0)
    this:RequestInteraction(npcs.Paimon.alias, "", true)
end

function Quest76001:OnSubFinish7600108(arg1)
    print("OnSubFinish7600108")
    this:GetQuestNpcActor(npcs.Paimon.alias, 76001):DestroyWithDisappear(false, nil)
    this:SetNavigationByMainId(76001, true)
end

function Quest76001:OnSubStart7600105(arg1)
    print("OnSubStart7600105")
    this:CreateQuestNpc(arg1, npcs.Npc7066.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7067.id, 0, false, 0)
end

function Quest76001:OnSubFinish7600105(arg1)
    print("OnSubFinish7600105")
end

function Quest76001:OnSubStart7600106(arg1)
    print("OnSubStart7600106")
    this:CreateQuestNpc(arg1, npcs.Npc22163.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600106Trigger", "Actor/Gadget/Q7600106Trigger", 70900002, 0, points._Q7600106TriggerPoint_.pos, points._Q7600106TriggerPoint_.rot, true, false, 3)
end

function Quest76001:OnSubFinish7600106(arg1)
    print("OnSubFinish7600106")
    this:SafeDestroyQuestNpc(npcs.Npc7066.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7067.alias, 3)
    this:ClearNarratorTask()
end

function Quest76001:OnSubStart7600104(arg1)
    print("OnSubStart7600104")
    this:NpcCreateWithNpcTrigger(npcs.Npc22163.id, 0, 10, 7600104)
end

function Quest76001:OnSubFinish7600104(arg1)
    print("OnSubFinish7600104")
    this:SafeDestroyQuestNpc(npcs.Npc22163.alias, 3)
end

return Quest76001
