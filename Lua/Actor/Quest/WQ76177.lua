require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76177 = class("Quest76177", QuestActorProxy)
Quest76177.defaultAlias = "Quest76177"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76177:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76177:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7617702"] = self.OnSubStart7617702,
        ["7617711"] = self.OnSubStart7617711,
        ["7617704"] = self.OnSubStart7617704,
        ["7617701"] = self.OnSubStart7617701,
        ["7617705"] = self.OnSubStart7617705,
        ["7617706"] = self.OnSubStart7617706,
        ["7617709"] = self.OnSubStart7617709
    }
end

function Quest76177:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7617702"] = self.OnSubFinish7617702,
        ["7617711"] = self.OnSubFinish7617711,
        ["7617704"] = self.OnSubFinish7617704,
        ["7617701"] = self.OnSubFinish7617701,
        ["7617705"] = self.OnSubFinish7617705,
        ["7617706"] = self.OnSubFinish7617706,
        ["7617709"] = self.OnSubFinish7617709
    }
end

function Quest76177:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76177:Start()
    print("Start")
end

function Quest76177:OnDestroy()
    print("OnDestroy")
end

function Quest76177:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76177:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76177:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76177:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7617702Trigger", 0)
    this:ActorDestroy("Q7617705Trigger", 0)
end

function Quest76177:ActorDestroy(arg1, arg2)
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

function Quest76177:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76177:OnSubStart7617702(arg1)
    print("OnSubStart7617702")
    actorMgr:CreateActorWithPos("Q7617702Trigger", "Actor/Gadget/Q7617702Trigger", 70900002, 0, points._Q7617702TriggerPoint_.pos, points._Q7617702TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76177:OnSubFinish7617702(arg1)
    print("OnSubFinish7617702")
end

function Quest76177:OnSubStart7617711(arg1)
    print("OnSubStart7617711")
    this:NpcCreateWithNpcTrigger(npcs.Paimon.id, 0, 50, 7617711)
end

function Quest76177:OnSubFinish7617711(arg1)
    print("OnSubFinish7617711")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SetNavigationByMainId(76177, true)
end

function Quest76177:OnSubStart7617704(arg1)
    print("OnSubStart7617704")
end

function Quest76177:OnSubFinish7617704(arg1)
    print("OnSubFinish7617704")
end

function Quest76177:OnSubStart7617701(arg1)
    print("OnSubStart7617701")
end

function Quest76177:OnSubFinish7617701(arg1)
    print("OnSubFinish7617701")
end

function Quest76177:OnSubStart7617705(arg1)
    print("OnSubStart7617705")
    actorMgr:CreateActorWithPos("Q7617705Trigger", "Actor/Gadget/Q7617705Trigger", 70900002, 0, points._Q7617705TriggerPoint_.pos, points._Q7617705TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76177:OnSubFinish7617705(arg1)
    print("OnSubFinish7617705")
end

function Quest76177:OnSubStart7617706(arg1)
    print("OnSubStart7617706")
    this:NpcCreateWithNpcTrigger(npcs.Paimon.id, 0, 50, 7617706)
end

function Quest76177:OnSubFinish7617706(arg1)
    print("OnSubFinish7617706")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
end

function Quest76177:OnSubStart7617709(arg1)
    print("OnSubStart7617709")
end

function Quest76177:OnSubFinish7617709(arg1)
    print("OnSubFinish7617709")
end

return Quest76177
