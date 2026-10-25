require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76068 = class("Quest76068", QuestActorProxy)
Quest76068.defaultAlias = "Quest76068"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76068:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606804"] = self.OnSubStart7606804,
        ["7606801"] = self.OnSubStart7606801,
        ["7606802"] = self.OnSubStart7606802,
        ["7606803"] = self.OnSubStart7606803
    }
end

function Quest76068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606804"] = self.OnSubFinish7606804,
        ["7606801"] = self.OnSubFinish7606801,
        ["7606802"] = self.OnSubFinish7606802,
        ["7606803"] = self.OnSubFinish7606803
    }
end

function Quest76068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7606802"] = self.OnSubFailed7606802}
end

function Quest76068:Start()
    print("Start")
end

function Quest76068:OnDestroy()
    print("OnDestroy")
end

function Quest76068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76068:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76068:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7606801_Finish", 76068)
    this:ActorDestroy("Q7606802_Fail", 76068)
    this:ActorDestroy("Q7606803Trigger", nil)
    this:ActorDestroy("Q7606804Baodi", 76068)
end

function Quest76068:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76068:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76068:OnSubStart7606804(arg1)
    print("OnSubStart7606804")
    actorMgr:CreateActorWithPos("Q7606804Baodi", "Actor/Gadget/Q7606804Baodi", 70900002, 0, points._Q7606804BaodiPoint_.pos, points._Q7606804BaodiPoint_.rot, true, false, 102, nil, 0, 76068)
end

function Quest76068:OnSubFinish7606804(arg1)
    print("OnSubFinish7606804")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 102)
end

function Quest76068:OnSubStart7606801(arg1)
    print("OnSubStart7606801")
    actorMgr:CreateActorWithPos("Q7606801_Finish", "Actor/Gadget/Q7606801_Finish", 70900002, 0, points._Q7606801_FinishPoint_.pos, points._Q7606801_FinishPoint_.rot, true, false, 102, nil, 0, 76068)
end

function Quest76068:OnSubFinish7606801(arg1)
    print("OnSubFinish7606801")
end

function Quest76068:OnSubStart7606802(arg1)
    print("OnSubStart7606802")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22433.id, 0, 7606802, 80, true)
    this:CreateQuestNpc(arg1, npcs.Npc22434.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22435.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7606802_Fail", "Actor/Gadget/Q7606802_Fail", 70900002, 0, points._Q7606802_FailPoint_.pos, points._Q7606802_FailPoint_.rot, true, false, 102, nil, 0, 76068)
end

function Quest76068:OnSubFinish7606802(arg1)
    print("OnSubFinish7606802")
    this:SafeDestroyQuestNpc(npcs.Npc22433.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22434.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22435.alias, 102)
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 104)
end

function Quest76068:OnSubFailed7606802(arg1)
    print("OnSubFailed7606802")
    this:RecycleAllRes()
end

function Quest76068:OnSubStart7606803(arg1)
    print("OnSubStart7606803")
    actorMgr:CreateActorWithPos("Q7606803Trigger", "Actor/Gadget/Q7606803Trigger", 70900002, 0, points._Q7606803TriggerPoint_.pos, points._Q7606803TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76068:OnSubFinish7606803(arg1)
    print("OnSubFinish7606803")
end

return Quest76068
