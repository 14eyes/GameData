require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75134 = class("Quest75134", QuestActorProxy)
Quest75134.defaultAlias = "Quest75134"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75134:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75134:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513401"] = self.OnSubStart7513401,
        ["7513402"] = self.OnSubStart7513402,
        ["7513403"] = self.OnSubStart7513403,
        ["7513404"] = self.OnSubStart7513404,
        ["7513405"] = self.OnSubStart7513405,
        ["7513406"] = self.OnSubStart7513406,
        ["7513407"] = self.OnSubStart7513407,
        ["7513408"] = self.OnSubStart7513408,
        ["7513409"] = self.OnSubStart7513409,
        ["7513411"] = self.OnSubStart7513411,
        ["7513410"] = self.OnSubStart7513410
    }
end

function Quest75134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513401"] = self.OnSubFinish7513401,
        ["7513402"] = self.OnSubFinish7513402,
        ["7513403"] = self.OnSubFinish7513403,
        ["7513404"] = self.OnSubFinish7513404,
        ["7513405"] = self.OnSubFinish7513405,
        ["7513406"] = self.OnSubFinish7513406,
        ["7513407"] = self.OnSubFinish7513407,
        ["7513408"] = self.OnSubFinish7513408,
        ["7513409"] = self.OnSubFinish7513409,
        ["7513411"] = self.OnSubFinish7513411,
        ["7513410"] = self.OnSubFinish7513410
    }
end

function Quest75134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75134:Start()
    print("Start")
end

function Quest75134:OnDestroy()
    print("OnDestroy")
end

function Quest75134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75134:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75134:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7513411)
    end
end

function Quest75134:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75134:OnSubStart7513401(arg1)
    print("OnSubStart7513401")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21602Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7513401_Trigger", "Actor/Gadget/Q7513401_Trigger", 70900002, 0, {x = -147.758, y = 341.824, z = 10017.31}, {x = 356.687, y = 42.159, z = 12.747}, true, false, 3)
end

function Quest75134:OnSubFinish7513401(arg1)
    print("OnSubFinish7513401")
end

function Quest75134:OnSubStart7513402(arg1)
    print("OnSubStart7513402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513402, 20, false)
end

function Quest75134:OnSubFinish7513402(arg1)
    print("OnSubFinish7513402")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75134:OnSubStart7513403(arg1)
    print("OnSubStart7513403")
    actorMgr:CreateActorWithPos("Q7513403_Trigger", "Actor/Gadget/Q7513403_Trigger", 70900002, 0, {x = -167.11, y = 345.078, z = 10029.5}, {x = 0, y = 44.871, z = 0}, true, false, 3)
end

function Quest75134:OnSubFinish7513403(arg1)
    print("OnSubFinish7513403")
end

function Quest75134:OnSubStart7513404(arg1)
    print("OnSubStart7513404")
end

function Quest75134:OnSubFinish7513404(arg1)
    print("OnSubFinish7513404")
end

function Quest75134:OnSubStart7513405(arg1)
    print("OnSubStart7513405")
    this:PlayCutsceneIndex(7504844, function(arg1)
        actorUtils.FinishQuestID(false, 7513405)
    end, nil, nil, false)
end

function Quest75134:OnSubFinish7513405(arg1)
    print("OnSubFinish7513405")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId02)
    end)
end

function Quest75134:OnSubStart7513406(arg1)
    print("OnSubStart7513406")
    actorMgr:CreateActorWithPos("Q7513406_Trigger", "Actor/Gadget/Q7513406_Trigger", 70900002, 0, {x = -140.859, y = 305.188, z = 10062.26}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75134:OnSubFinish7513406(arg1)
    print("OnSubFinish7513406")
end

function Quest75134:OnSubStart7513407(arg1)
    print("OnSubStart7513407")
end

function Quest75134:OnSubFinish7513407(arg1)
    print("OnSubFinish7513407")
end

function Quest75134:OnSubStart7513408(arg1)
    print("OnSubStart7513408")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513408, 25, false)
end

function Quest75134:OnSubFinish7513408(arg1)
    print("OnSubFinish7513408")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75134:OnSubStart7513409(arg1)
    print("OnSubStart7513409")
    actorMgr:CreateActorWithPos("Q7513409_Trigger", "Actor/Gadget/Q7513409_Trigger", 70900002, 0, {x = -136.763, y = 452.994, z = 10017.39}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75134:OnSubFinish7513409(arg1)
    print("OnSubFinish7513409")
end

function Quest75134:OnSubStart7513411(arg1)
    print("OnSubStart7513411")
end

function Quest75134:OnSubFinish7513411(arg1)
    print("OnSubFinish7513411")
end

function Quest75134:OnSubStart7513410(arg1)
    print("OnSubStart7513410")
    this:RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Quest75134:OnSubFinish7513410(arg1)
    print("OnSubFinish7513410")
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21602Data.alias, 3)
end

return Quest75134
