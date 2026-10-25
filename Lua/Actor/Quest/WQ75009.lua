require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75009 = class("Quest75009", QuestActorProxy)
Quest75009.defaultAlias = "Quest75009"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500901"] = self.OnSubStart7500901,
        ["7500907"] = self.OnSubStart7500907,
        ["7500908"] = self.OnSubStart7500908,
        ["7500903"] = self.OnSubStart7500903,
        ["7500904"] = self.OnSubStart7500904,
        ["7500905"] = self.OnSubStart7500905,
        ["7500902"] = self.OnSubStart7500902,
        ["7500906"] = self.OnSubStart7500906
    }
end

function Quest75009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500901"] = self.OnSubFinish7500901,
        ["7500907"] = self.OnSubFinish7500907,
        ["7500908"] = self.OnSubFinish7500908,
        ["7500903"] = self.OnSubFinish7500903,
        ["7500904"] = self.OnSubFinish7500904,
        ["7500905"] = self.OnSubFinish7500905,
        ["7500902"] = self.OnSubFinish7500902,
        ["7500906"] = self.OnSubFinish7500906
    }
end

function Quest75009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75009:Start()
    print("Start")
end

function Quest75009:OnDestroy()
    print("OnDestroy")
end

function Quest75009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21485.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21486.alias, 3)
    this:ActorDestroy("Q7500902Trigger")
    this:ActorDestroy("Q7500907Trigger")
    this:DestroyNpcTrigger("Q7500904N21486Trigger")
    this:DestroyNpcTrigger("Q7500906N21485Trigger")
end

function Quest75009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75009:OnSubStart7500901(arg1)
    print("OnSubStart7500901")
    this:CreateQuestNpc(arg1, npcs.Npc21485.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500901(arg1)
    print("OnSubFinish7500901")
    this:SetNavigationByMainId(75009, true)
end

function Quest75009:OnSubStart7500907(arg1)
    print("OnSubStart7500907")
    actorMgr:CreateActorWithPos("Q7500907Trigger", "Actor/Gadget/Q7500907Trigger", 70900002, 0, points._Q7500907TriggerPoint_.pos, points._Q7500907TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500907(arg1)
    print("OnSubFinish7500907")
end

function Quest75009:OnSubStart7500908(arg1)
    print("OnSubStart7500908")
    this:NpcCreateWithNpcTrigger(npcs.Npc21485.id, 0, 40, 7500908)
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500908(arg1)
    print("OnSubFinish7500908")
end

function Quest75009:OnSubStart7500903(arg1)
    print("OnSubStart7500903")
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500903(arg1)
    print("OnSubFinish7500903")
end

function Quest75009:OnSubStart7500904(arg1)
    print("OnSubStart7500904")
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500904(arg1)
    print("OnSubFinish7500904")
end

function Quest75009:OnSubStart7500905(arg1)
    print("OnSubStart7500905")
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500905(arg1)
    print("OnSubFinish7500905")
end

function Quest75009:OnSubStart7500902(arg1)
    print("OnSubStart7500902")
    this:NpcCreateWithNpcTrigger(npcs.Npc21486.id, 0, 30, 7500902)
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500902(arg1)
    print("OnSubFinish7500902")
    this:SafeDestroyQuestNpc(npcs.Npc21486.alias, 3)
end

function Quest75009:OnSubStart7500906(arg1)
    print("OnSubStart7500906")
    this:CreateQuestNpcWithTrigger("Q7500902Trigger", 7500906, 21485, 0, 20, 2)
    this:GetQuestNpcActor(npcs.Npc21485.alias, 75009):SitOnChair(0, false)
end

function Quest75009:OnSubFinish7500906(arg1)
    print("OnSubFinish7500906")
    this:SafeDestroyQuestNpc(npcs.Npc21485.alias, 3)
end

return Quest75009
