require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76029 = class("Quest76029", QuestActorProxy)
Quest76029.defaultAlias = "Quest76029"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76029:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602901"] = self.OnSubStart7602901,
        ["7602902"] = self.OnSubStart7602902,
        ["7602903"] = self.OnSubStart7602903,
        ["7602904"] = self.OnSubStart7602904,
        ["7602905"] = self.OnSubStart7602905
    }
end

function Quest76029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602901"] = self.OnSubFinish7602901,
        ["7602902"] = self.OnSubFinish7602902,
        ["7602903"] = self.OnSubFinish7602903,
        ["7602904"] = self.OnSubFinish7602904,
        ["7602905"] = self.OnSubFinish7602905
    }
end

function Quest76029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76029:Start()
    print("Start")
end

function Quest76029:OnDestroy()
    print("OnDestroy")
end

function Quest76029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:ActorDestroy("Q7602901Trigger")
    this:DestroyNpcTrigger("Q7602901N1318Trigger")
    this:DestroyNpcTrigger("Q7602902N1313Trigger")
end

function Quest76029:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7602901Trigger")
end

function Quest76029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76029:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76029:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76029:OnSubStart7602901(arg1)
    print("OnSubStart7602901")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1318.id, 0, 7602901, 50, true)
    actorMgr:CreateActorWithPos("Q7602901Trigger", "Actor/Gadget/Q7602901Trigger", 70900002, 0, points._Q7602901TriggerPoint_.pos, points._Q7602901TriggerPoint_.rot, true, false, 3)
end

function Quest76029:OnSubFinish7602901(arg1)
    print("OnSubFinish7602901")
    this:SetNavigationByMainId(76029, true)
    this:ActorDestroy("Q7602901Trigger")
end

function Quest76029:OnSubStart7602902(arg1)
    print("OnSubStart7602902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602902, 0, 10, 0, npcs.Npc1313.id)
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
end

function Quest76029:OnSubFinish7602902(arg1)
    print("OnSubFinish7602902")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

function Quest76029:OnSubStart7602903(arg1)
    print("OnSubStart7602903")
end

function Quest76029:OnSubFinish7602903(arg1)
    print("OnSubFinish7602903")
end

function Quest76029:OnSubStart7602904(arg1)
    print("OnSubStart7602904")
end

function Quest76029:OnSubFinish7602904(arg1)
    print("OnSubFinish7602904")
end

function Quest76029:OnSubStart7602905(arg1)
    print("OnSubStart7602905")
end

function Quest76029:OnSubFinish7602905(arg1)
    print("OnSubFinish7602905")
end

return Quest76029
