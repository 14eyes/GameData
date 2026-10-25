require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75018 = class("Quest75018", QuestActorProxy)
Quest75018.defaultAlias = "Quest75018"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501801"] = self.OnSubStart7501801,
        ["7501802"] = self.OnSubStart7501802,
        ["7501803"] = self.OnSubStart7501803,
        ["7501804"] = self.OnSubStart7501804,
        ["7501806"] = self.OnSubStart7501806,
        ["7501807"] = self.OnSubStart7501807,
        ["7501805"] = self.OnSubStart7501805,
        ["7501813"] = self.OnSubStart7501813,
        ["7501808"] = self.OnSubStart7501808,
        ["7501809"] = self.OnSubStart7501809,
        ["7501810"] = self.OnSubStart7501810,
        ["7501812"] = self.OnSubStart7501812,
        ["7501811"] = self.OnSubStart7501811
    }
end

function Quest75018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501801"] = self.OnSubFinish7501801,
        ["7501802"] = self.OnSubFinish7501802,
        ["7501803"] = self.OnSubFinish7501803,
        ["7501804"] = self.OnSubFinish7501804,
        ["7501806"] = self.OnSubFinish7501806,
        ["7501807"] = self.OnSubFinish7501807,
        ["7501805"] = self.OnSubFinish7501805,
        ["7501813"] = self.OnSubFinish7501813,
        ["7501808"] = self.OnSubFinish7501808,
        ["7501809"] = self.OnSubFinish7501809,
        ["7501810"] = self.OnSubFinish7501810,
        ["7501812"] = self.OnSubFinish7501812,
        ["7501811"] = self.OnSubFinish7501811
    }
end

function Quest75018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7501802"] = self.OnSubFailed7501802, ["7501808"] = self.OnSubFailed7501808}
end

function Quest75018:Start()
    print("Start")
end

function Quest75018:OnDestroy()
    print("OnDestroy")
end

function Quest75018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75018:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 11 then
        self:SetQuestVarByMainId(0, 1)
    elseif arg1 == 22 then
        self:SetQuestVarByMainId(0, 2)
    end
end

function Quest75018:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75018:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75018:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75018:OnSubStart7501801(arg1)
    print("OnSubStart7501801")
    this:CreateQuestNpc(arg1, npcs.Npc21634.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21685.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Trigger_7501801", "Actor/Gadget/Trigger_7501801", 70900002, 0, points._Trigger_7501801Point_.pos, points._Trigger_7501801Point_.rot, true, false, 3)
    this:DeployStoryByQuest(147501801)
end

function Quest75018:OnSubFinish7501801(arg1)
    print("OnSubFinish7501801")
    this:SafeDestroyQuestNpc(npcs.Npc21634.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21685.alias, 3)
    this:ActorDestroy("Trigger_7501801")
    this:CancelStoryByQuest(147501801)
end

function Quest75018:OnSubStart7501802(arg1)
    print("OnSubStart7501802")
end

function Quest75018:OnSubFinish7501802(arg1)
    print("OnSubFinish7501802")
end

function Quest75018:OnSubFailed7501802(arg1)
    print("OnSubFailed7501802")
    this:NatsaurusVehicleOff()
end

function Quest75018:OnSubStart7501803(arg1)
    print("OnSubStart7501803")
    this:NpcCreateWithNpcTrigger(npcs.Npc21634.id, 0, 40, 7501803)
end

function Quest75018:OnSubFinish7501803(arg1)
    print("OnSubFinish7501803")
    this:SafeDestroyQuestNpc(npcs.Npc21634.alias, 3)
end

function Quest75018:OnSubStart7501804(arg1)
    print("OnSubStart7501804")
end

function Quest75018:OnSubFinish7501804(arg1)
    print("OnSubFinish7501804")
end

function Quest75018:OnSubStart7501806(arg1)
    print("OnSubStart7501806")
end

function Quest75018:OnSubFinish7501806(arg1)
    print("OnSubFinish7501806")
end

function Quest75018:OnSubStart7501807(arg1)
    print("OnSubStart7501807")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21685.id, 0, 7501807, 20, false)
end

function Quest75018:OnSubFinish7501807(arg1)
    print("OnSubFinish7501807")
    this:SafeDestroyQuestNpc(npcs.Npc21685.alias, 3)
end

function Quest75018:OnSubStart7501805(arg1)
    print("OnSubStart7501805")
end

function Quest75018:OnSubFinish7501805(arg1)
    print("OnSubFinish7501805")
    this:SafeDestroyQuestNpc(npcs.Npc21685.alias, 3)
end

function Quest75018:OnSubStart7501813(arg1)
    print("OnSubStart7501813")
end

function Quest75018:OnSubFinish7501813(arg1)
    print("OnSubFinish7501813")
    this:SafeDestroyQuestNpc(npcs.Npc21685.alias, 3)
end

function Quest75018:OnSubStart7501808(arg1)
    print("OnSubStart7501808")
end

function Quest75018:OnSubFinish7501808(arg1)
    print("OnSubFinish7501808")
end

function Quest75018:OnSubFailed7501808(arg1)
    print("OnSubFailed7501808")
    this:NatsaurusVehicleOff()
end

function Quest75018:OnSubStart7501809(arg1)
    print("OnSubStart7501809")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21685.id, 0, 7501809, 20, false)
end

function Quest75018:OnSubFinish7501809(arg1)
    print("OnSubFinish7501809")
    this:SafeDestroyQuestNpc(npcs.Npc21685.alias, 3)
end

function Quest75018:OnSubStart7501810(arg1)
    print("OnSubStart7501810")
    this:CreateQuestNpc(arg1, npcs.Npc21634.id, 0, false, 0)
end

function Quest75018:OnSubFinish7501810(arg1)
    print("OnSubFinish7501810")
end

function Quest75018:OnSubStart7501812(arg1)
    print("OnSubStart7501812")
    this:RequestInteraction(npcs.Npc21634.alias, "", true)
end

function Quest75018:OnSubFinish7501812(arg1)
    print("OnSubFinish7501812")
end

function Quest75018:OnSubStart7501811(arg1)
    print("OnSubStart7501811")
    actorMgr:CreateActorWithPos("Trigger_7501811", "Actor/Gadget/Trigger_7501811", 70900002, 0, points._Trigger_7501811Point_.pos, points._Trigger_7501811Point_.rot, true, false, nil)
end

function Quest75018:OnSubFinish7501811(arg1)
    print("OnSubFinish7501811")
end

return Quest75018
