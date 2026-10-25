require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77211 = class("Quest77211", QuestActorProxy)
Quest77211.defaultAlias = "Quest77211"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77211:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77211:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721106"] = self.OnSubStart7721106,
        ["7721101"] = self.OnSubStart7721101,
        ["7721102"] = self.OnSubStart7721102,
        ["7721103"] = self.OnSubStart7721103,
        ["7721104"] = self.OnSubStart7721104,
        ["7721105"] = self.OnSubStart7721105
    }
end

function Quest77211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721106"] = self.OnSubFinish7721106,
        ["7721101"] = self.OnSubFinish7721101,
        ["7721102"] = self.OnSubFinish7721102,
        ["7721103"] = self.OnSubFinish7721103,
        ["7721104"] = self.OnSubFinish7721104,
        ["7721105"] = self.OnSubFinish7721105
    }
end

function Quest77211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77211:Start()
    print("Start")
end

function Quest77211:OnDestroy()
    print("OnDestroy")
end

function Quest77211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77211:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77211:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7721101Trigger", 77211)
end

function Quest77211:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7721103 then
        actorUtils.FinishQuestWithParam({false}, {7721103})
    elseif arg1 == 7721104 then
        actorUtils.FinishQuestWithParam({false}, {7721104})
    end
end

function Quest77211:ActorDestroy(arg1, arg2)
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

function Quest77211:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77211:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77211:OnSubStart7721106(arg1)
    print("OnSubStart7721106")
end

function Quest77211:OnSubFinish7721106(arg1)
    print("OnSubFinish7721106")
    this:SetNavigationByMainId(77211, true)
end

function Quest77211:OnSubStart7721101(arg1)
    print("OnSubStart7721101")
    actorMgr:CreateActorWithPos("Q7721101Trigger", "Actor/Gadget/Q7721101Trigger", 70900002, 0, points._Q7721101TriggerPoint_.pos, points._Q7721101TriggerPoint_.rot, true, false, 3, nil, 0, 77211)
end

function Quest77211:OnSubFinish7721101(arg1)
    print("OnSubFinish7721101")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77211:OnSubStart7721102(arg1)
    print("OnSubStart7721102")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc22734.id, 0, 7721102, 20, true)
end

function Quest77211:OnSubFinish7721102(arg1)
    print("OnSubFinish7721102")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22734.alias)
end

function Quest77211:OnSubStart7721103(arg1)
    print("OnSubStart7721103")
end

function Quest77211:OnSubFinish7721103(arg1)
    print("OnSubFinish7721103")
end

function Quest77211:OnSubStart7721104(arg1)
    print("OnSubStart7721104")
end

function Quest77211:OnSubFinish7721104(arg1)
    print("OnSubFinish7721104")
end

function Quest77211:OnSubStart7721105(arg1)
    print("OnSubStart7721105")
end

function Quest77211:OnSubFinish7721105(arg1)
    print("OnSubFinish7721105")
end

return Quest77211
