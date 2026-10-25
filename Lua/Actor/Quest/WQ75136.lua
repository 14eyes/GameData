require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75136 = class("Quest75136", QuestActorProxy)
Quest75136.defaultAlias = "Quest75136"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75136:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513601"] = self.OnSubStart7513601,
        ["7513602"] = self.OnSubStart7513602,
        ["7513603"] = self.OnSubStart7513603,
        ["7513617"] = self.OnSubStart7513617,
        ["7513604"] = self.OnSubStart7513604,
        ["7513620"] = self.OnSubStart7513620,
        ["7513605"] = self.OnSubStart7513605,
        ["7513614"] = self.OnSubStart7513614,
        ["7513615"] = self.OnSubStart7513615,
        ["7513616"] = self.OnSubStart7513616,
        ["7513619"] = self.OnSubStart7513619,
        ["7513618"] = self.OnSubStart7513618,
        ["7513606"] = self.OnSubStart7513606,
        ["7513607"] = self.OnSubStart7513607,
        ["7513608"] = self.OnSubStart7513608,
        ["7513609"] = self.OnSubStart7513609,
        ["7513610"] = self.OnSubStart7513610,
        ["7513611"] = self.OnSubStart7513611,
        ["7513613"] = self.OnSubStart7513613,
        ["7513612"] = self.OnSubStart7513612
    }
end

function Quest75136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513601"] = self.OnSubFinish7513601,
        ["7513602"] = self.OnSubFinish7513602,
        ["7513603"] = self.OnSubFinish7513603,
        ["7513617"] = self.OnSubFinish7513617,
        ["7513604"] = self.OnSubFinish7513604,
        ["7513620"] = self.OnSubFinish7513620,
        ["7513605"] = self.OnSubFinish7513605,
        ["7513614"] = self.OnSubFinish7513614,
        ["7513615"] = self.OnSubFinish7513615,
        ["7513616"] = self.OnSubFinish7513616,
        ["7513619"] = self.OnSubFinish7513619,
        ["7513618"] = self.OnSubFinish7513618,
        ["7513606"] = self.OnSubFinish7513606,
        ["7513607"] = self.OnSubFinish7513607,
        ["7513608"] = self.OnSubFinish7513608,
        ["7513609"] = self.OnSubFinish7513609,
        ["7513610"] = self.OnSubFinish7513610,
        ["7513611"] = self.OnSubFinish7513611,
        ["7513613"] = self.OnSubFinish7513613,
        ["7513612"] = self.OnSubFinish7513612
    }
end

function Quest75136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7513611"] = self.OnSubFailed7513611}
end

function Quest75136:Start()
    print("Start")
end

function Quest75136:OnDestroy()
    print("OnDestroy")
end

function Quest75136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75136:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75136:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7513620)
    end
end

function Quest75136:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75136:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75136:OnSubStart7513601(arg1)
    print("OnSubStart7513601")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513601, 8, false)
end

function Quest75136:OnSubFinish7513601(arg1)
    print("OnSubFinish7513601")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75136:OnSubStart7513602(arg1)
    print("OnSubStart7513602")
    actorMgr:CreateActorWithPos("Q7513602_Trigger", "Actor/Gadget/Q7513602_Trigger", 70900002, 0, {x = -174.234, y = 1237.339, z = 10041.32}, {x = 0, y = 45.1, z = 0}, true, false, 3)
end

function Quest75136:OnSubFinish7513602(arg1)
    print("OnSubFinish7513602")
end

function Quest75136:OnSubStart7513603(arg1)
    print("OnSubStart7513603")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513603, 13, false)
    this:RequestInteraction(npcs.Npc21604Data.alias, "", true)
end

function Quest75136:OnSubFinish7513603(arg1)
    print("OnSubFinish7513603")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75136:OnSubStart7513617(arg1)
    print("OnSubStart7513617")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
end

function Quest75136:OnSubFinish7513617(arg1)
    print("OnSubFinish7513617")
end

function Quest75136:OnSubStart7513604(arg1)
    print("OnSubStart7513604")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21583Data.id, 0, 7513604, 20, false)
end

function Quest75136:OnSubFinish7513604(arg1)
    print("OnSubFinish7513604")
    this:ActorDestroy("Q7513604_Trigger")
end

function Quest75136:OnSubStart7513620(arg1)
    print("OnSubStart7513620")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
end

function Quest75136:OnSubFinish7513620(arg1)
    print("OnSubFinish7513620")
end

function Quest75136:OnSubStart7513605(arg1)
    print("OnSubStart7513605")
end

function Quest75136:OnSubFinish7513605(arg1)
    print("OnSubFinish7513605")
end

function Quest75136:OnSubStart7513614(arg1)
    print("OnSubStart7513614")
end

function Quest75136:OnSubFinish7513614(arg1)
    print("OnSubFinish7513614")
end

function Quest75136:OnSubStart7513615(arg1)
    print("OnSubStart7513615")
end

function Quest75136:OnSubFinish7513615(arg1)
    print("OnSubFinish7513615")
end

function Quest75136:OnSubStart7513616(arg1)
    print("OnSubStart7513616")
end

function Quest75136:OnSubFinish7513616(arg1)
    print("OnSubFinish7513616")
end

function Quest75136:OnSubStart7513619(arg1)
    print("OnSubStart7513619")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
end

function Quest75136:OnSubFinish7513619(arg1)
    print("OnSubFinish7513619")
end

function Quest75136:OnSubStart7513618(arg1)
    print("OnSubStart7513618")
end

function Quest75136:OnSubFinish7513618(arg1)
    print("OnSubFinish7513618")
end

function Quest75136:OnSubStart7513606(arg1)
    print("OnSubStart7513606")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
end

function Quest75136:OnSubFinish7513606(arg1)
    print("OnSubFinish7513606")
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
end

function Quest75136:OnSubStart7513607(arg1)
    print("OnSubStart7513607")
    this:PlayCutsceneIndex(7504850, function(arg1)
        actorUtils.FinishQuestID(false, 7513607)
    end, nil, nil, false)
end

function Quest75136:OnSubFinish7513607(arg1)
    print("OnSubFinish7513607")
    this:TransmitPlayerById(arg1, 7513607, nil, nil, nil)
end

function Quest75136:OnSubStart7513608(arg1)
    print("OnSubStart7513608")
    actorMgr:CreateActorWithPos("Q7513608_Trigger", "Actor/Gadget/Q7513608_Trigger", 70900002, 0, {x = -143.405, y = 1330.153, z = 10074.11}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75136:OnSubFinish7513608(arg1)
    print("OnSubFinish7513608")
end

function Quest75136:OnSubStart7513609(arg1)
    print("OnSubStart7513609")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21583Data.id, 0, 7513609, 10, false)
end

function Quest75136:OnSubFinish7513609(arg1)
    print("OnSubFinish7513609")
end

function Quest75136:OnSubStart7513610(arg1)
    print("OnSubStart7513610")
    this:PlayCutsceneIndex(7504832, function(arg1)
        actorUtils.FinishQuestID(false, 7513610)
    end, nil, nil, false)
end

function Quest75136:OnSubFinish7513610(arg1)
    print("OnSubFinish7513610")
    this:SetNavigationByMainId(75136, true)
end

function Quest75136:OnSubStart7513611(arg1)
    print("OnSubStart7513611")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21583Data.alias, 75136):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
end

function Quest75136:OnSubFinish7513611(arg1)
    print("OnSubFinish7513611")
    this:TransmitPlayerById(arg1, 7513610, nil, nil, nil)
end

function Quest75136:OnSubFailed7513611(arg1)
    print("OnSubFailed7513611")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, nil, nil, nil, 751330199, false, true)
end

function Quest75136:OnSubStart7513613(arg1)
    print("OnSubStart7513613")
    this:GetQuestNpcActor(npcs.Npc21583Data.alias, 75136):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest75136:OnSubFinish7513613(arg1)
    print("OnSubFinish7513613")
    this:SetNavigationByMainId(75136, true)
end

function Quest75136:OnSubStart7513612(arg1)
    print("OnSubStart7513612")
    actorUtils.FinishQuestID(false, 7513612)
end

function Quest75136:OnSubFinish7513612(arg1)
    print("OnSubFinish7513612")
end

return Quest75136
