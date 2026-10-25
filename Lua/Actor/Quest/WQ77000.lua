require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77000 = class("Quest77000", QuestActorProxy)
Quest77000.defaultAlias = "Quest77000"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7700002"] = self.OnSubStart7700002,
        ["7700001"] = self.OnSubStart7700001,
        ["7700003"] = self.OnSubStart7700003,
        ["7700004"] = self.OnSubStart7700004,
        ["7700005"] = self.OnSubStart7700005
    }
end

function Quest77000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7700002"] = self.OnSubFinish7700002,
        ["7700001"] = self.OnSubFinish7700001,
        ["7700003"] = self.OnSubFinish7700003,
        ["7700004"] = self.OnSubFinish7700004,
        ["7700005"] = self.OnSubFinish7700005
    }
end

function Quest77000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77000:Start()
    print("Start")
end

function Quest77000:OnDestroy()
    print("OnDestroy")
end

function Quest77000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77000:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7700002Trigger", 77000)
end

function Quest77000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7700005)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7700003)
    end
end

function Quest77000:ActorDestroy(arg1, arg2)
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

function Quest77000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77000:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77000:OnSubStart7700002(arg1)
    print("OnSubStart7700002")
    actorMgr:CreateActorWithPos("Q7700002Trigger", "Actor/Gadget/Q7700002Trigger", 70900002, 0, points._Q7700002TriggerPoint_.pos, points._Q7700002TriggerPoint_.rot, true, false, 1159, nil, 0, 77000)
end

function Quest77000:OnSubFinish7700002(arg1)
    print("OnSubFinish7700002")
    this:ActorDestroy("Q7700002Trigger", 77000)
end

function Quest77000:OnSubStart7700001(arg1)
    print("OnSubStart7700001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 15, 7700001)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
end

function Quest77000:OnSubFinish7700001(arg1)
    print("OnSubFinish7700001")
end

function Quest77000:OnSubStart7700003(arg1)
    print("OnSubStart7700003")
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77000):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77000):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 77000):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 77000):DisableInteeHeadCtrl(true)
end

function Quest77000:OnSubFinish7700003(arg1)
    print("OnSubFinish7700003")
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1335.alias)
end

function Quest77000:OnSubStart7700004(arg1)
    print("OnSubStart7700004")
end

function Quest77000:OnSubFinish7700004(arg1)
    print("OnSubFinish7700004")
end

function Quest77000:OnSubStart7700005(arg1)
    print("OnSubStart7700005")
end

function Quest77000:OnSubFinish7700005(arg1)
    print("OnSubFinish7700005")
end

return Quest77000
