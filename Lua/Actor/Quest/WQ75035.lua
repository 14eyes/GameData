require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75035 = class("Quest75035", QuestActorProxy)
Quest75035.defaultAlias = "Quest75035"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503501"] = self.OnSubStart7503501,
        ["7503502"] = self.OnSubStart7503502,
        ["7503512"] = self.OnSubStart7503512,
        ["7503503"] = self.OnSubStart7503503,
        ["7503504"] = self.OnSubStart7503504,
        ["7503505"] = self.OnSubStart7503505,
        ["7503506"] = self.OnSubStart7503506,
        ["7503509"] = self.OnSubStart7503509,
        ["7503510"] = self.OnSubStart7503510,
        ["7503511"] = self.OnSubStart7503511,
        ["7503507"] = self.OnSubStart7503507,
        ["7503508"] = self.OnSubStart7503508,
        ["7503513"] = self.OnSubStart7503513,
        ["7503514"] = self.OnSubStart7503514
    }
end

function Quest75035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503501"] = self.OnSubFinish7503501,
        ["7503502"] = self.OnSubFinish7503502,
        ["7503512"] = self.OnSubFinish7503512,
        ["7503503"] = self.OnSubFinish7503503,
        ["7503504"] = self.OnSubFinish7503504,
        ["7503505"] = self.OnSubFinish7503505,
        ["7503506"] = self.OnSubFinish7503506,
        ["7503509"] = self.OnSubFinish7503509,
        ["7503510"] = self.OnSubFinish7503510,
        ["7503511"] = self.OnSubFinish7503511,
        ["7503507"] = self.OnSubFinish7503507,
        ["7503508"] = self.OnSubFinish7503508,
        ["7503513"] = self.OnSubFinish7503513,
        ["7503514"] = self.OnSubFinish7503514
    }
end

function Quest75035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75035:Start()
    print("Start")
end

function Quest75035:OnDestroy()
    print("OnDestroy")
end

function Quest75035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21460_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6084_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21580.alias, 3)
    this:ActorDestroy("Q7503503Trigger")
    this:ActorDestroy("Q7503505Trigger")
    this:DestroyNpcTrigger("Q7503502N21460Trigger")
end

function Quest75035:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7503502 then
        actorUtils.FinishQuestID(false, 7503502)
    end
end

function Quest75035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75035:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75035:OnSubStart7503501(arg1)
    print("OnSubStart7503501")
end

function Quest75035:OnSubFinish7503501(arg1)
    print("OnSubFinish7503501")
end

function Quest75035:OnSubStart7503502(arg1)
    print("OnSubStart7503502")
end

function Quest75035:OnSubFinish7503502(arg1)
    print("OnSubFinish7503502")
end

function Quest75035:OnSubStart7503512(arg1)
    print("OnSubStart7503512")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7503512, 0, 30, 1, npcs.Npc21460_1.id)
end

function Quest75035:OnSubFinish7503512(arg1)
    print("OnSubFinish7503512")
    this:SafeDestroyQuestNpc(npcs.Npc21460_1.alias, 3)
end

function Quest75035:OnSubStart7503503(arg1)
    print("OnSubStart7503503")
    this:SafeDestroyQuestNpc(npcs.Npc21460_1.alias, 3)
    actorMgr:CreateActorWithPos("Q7503503Trigger", "Actor/Gadget/Q7503503Trigger", 70900002, 0, points.Q7503503_trigger.pos, points.Q7503503_trigger.rot, true, false, 3)
end

function Quest75035:OnSubFinish7503503(arg1)
    print("OnSubFinish7503503")
end

function Quest75035:OnSubStart7503504(arg1)
    print("OnSubStart7503504")
end

function Quest75035:OnSubFinish7503504(arg1)
    print("OnSubFinish7503504")
end

function Quest75035:OnSubStart7503505(arg1)
    print("OnSubStart7503505")
    this:CreateQuestNpc(arg1, npcs.Npc21580.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21580.alias, 75035):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7503505Trigger", "Actor/Gadget/Q7503505Trigger", 70900002, 0, points.Q7503505Trigger.pos, points.Q7503505Trigger.rot, true, false, 3)
end

function Quest75035:OnSubFinish7503505(arg1)
    print("OnSubFinish7503505")
end

function Quest75035:OnSubStart7503506(arg1)
    print("OnSubStart7503506")
end

function Quest75035:OnSubFinish7503506(arg1)
    print("OnSubFinish7503506")
end

function Quest75035:OnSubStart7503509(arg1)
    print("OnSubStart7503509")
end

function Quest75035:OnSubFinish7503509(arg1)
    print("OnSubFinish7503509")
end

function Quest75035:OnSubStart7503510(arg1)
    print("OnSubStart7503510")
end

function Quest75035:OnSubFinish7503510(arg1)
    print("OnSubFinish7503510")
end

function Quest75035:OnSubStart7503511(arg1)
    print("OnSubStart7503511")
end

function Quest75035:OnSubFinish7503511(arg1)
    print("OnSubFinish7503511")
end

function Quest75035:OnSubStart7503507(arg1)
    print("OnSubStart7503507")
end

function Quest75035:OnSubFinish7503507(arg1)
    print("OnSubFinish7503507")
end

function Quest75035:OnSubStart7503508(arg1)
    print("OnSubStart7503508")
    this:CreateQuestNpc(arg1, npcs.Npc21580.id, 0, false, 0)
end

function Quest75035:OnSubFinish7503508(arg1)
    print("OnSubFinish7503508")
    this:SafeDestroyQuestNpc(npcs.Npc21580.alias, 3)
end

function Quest75035:OnSubStart7503513(arg1)
    print("OnSubStart7503513")
end

function Quest75035:OnSubFinish7503513(arg1)
    print("OnSubFinish7503513")
end

function Quest75035:OnSubStart7503514(arg1)
    print("OnSubStart7503514")
end

function Quest75035:OnSubFinish7503514(arg1)
    print("OnSubFinish7503514")
end

return Quest75035
