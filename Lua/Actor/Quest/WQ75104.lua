require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75104 = class("Quest75104", QuestActorProxy)
Quest75104.defaultAlias = "Quest75104"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75104:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7510423"] = self.OnSubStart7510423,
        ["7510401"] = self.OnSubStart7510401,
        ["7510402"] = self.OnSubStart7510402,
        ["7510412"] = self.OnSubStart7510412,
        ["7510413"] = self.OnSubStart7510413,
        ["7510414"] = self.OnSubStart7510414,
        ["7510415"] = self.OnSubStart7510415,
        ["7510416"] = self.OnSubStart7510416,
        ["7510417"] = self.OnSubStart7510417,
        ["7510403"] = self.OnSubStart7510403,
        ["7510418"] = self.OnSubStart7510418,
        ["7510419"] = self.OnSubStart7510419,
        ["7510422"] = self.OnSubStart7510422,
        ["7510420"] = self.OnSubStart7510420,
        ["7510421"] = self.OnSubStart7510421,
        ["7510404"] = self.OnSubStart7510404,
        ["7510405"] = self.OnSubStart7510405,
        ["7510406"] = self.OnSubStart7510406,
        ["7510407"] = self.OnSubStart7510407,
        ["7510408"] = self.OnSubStart7510408,
        ["7510409"] = self.OnSubStart7510409,
        ["7510410"] = self.OnSubStart7510410,
        ["7510411"] = self.OnSubStart7510411
    }
end

function Quest75104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7510423"] = self.OnSubFinish7510423,
        ["7510401"] = self.OnSubFinish7510401,
        ["7510402"] = self.OnSubFinish7510402,
        ["7510412"] = self.OnSubFinish7510412,
        ["7510413"] = self.OnSubFinish7510413,
        ["7510414"] = self.OnSubFinish7510414,
        ["7510415"] = self.OnSubFinish7510415,
        ["7510416"] = self.OnSubFinish7510416,
        ["7510417"] = self.OnSubFinish7510417,
        ["7510403"] = self.OnSubFinish7510403,
        ["7510418"] = self.OnSubFinish7510418,
        ["7510419"] = self.OnSubFinish7510419,
        ["7510422"] = self.OnSubFinish7510422,
        ["7510420"] = self.OnSubFinish7510420,
        ["7510421"] = self.OnSubFinish7510421,
        ["7510404"] = self.OnSubFinish7510404,
        ["7510405"] = self.OnSubFinish7510405,
        ["7510406"] = self.OnSubFinish7510406,
        ["7510407"] = self.OnSubFinish7510407,
        ["7510408"] = self.OnSubFinish7510408,
        ["7510409"] = self.OnSubFinish7510409,
        ["7510410"] = self.OnSubFinish7510410,
        ["7510411"] = self.OnSubFinish7510411
    }
end

function Quest75104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75104:Start()
    print("Start")
end

function Quest75104:OnDestroy()
    print("OnDestroy")
end

function Quest75104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75104:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest75104:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75104:OnSubStart7510423(arg1)
    print("OnSubStart7510423")
    this:CreateQuestNpc(arg1, npcs.Npc6258Data.id, 0, false, 0)
end

function Quest75104:OnSubFinish7510423(arg1)
    print("OnSubFinish7510423")
    this:SafeDestroyQuestNpc(npcs.Npc6258Data.alias, 3)
end

function Quest75104:OnSubStart7510401(arg1)
    print("OnSubStart7510401")
    this:CreateQuestNpc(arg1, npcs.Npc6257Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6258Data.id, 0, false, 0)
end

function Quest75104:OnSubFinish7510401(arg1)
    print("OnSubFinish7510401")
    this:SafeDestroyQuestNpc(npcs.Npc6258Data.alias, 3)
end

function Quest75104:OnSubStart7510402(arg1)
    print("OnSubStart7510402")
end

function Quest75104:OnSubFinish7510402(arg1)
    print("OnSubFinish7510402")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75104:OnSubStart7510412(arg1)
    print("OnSubStart7510412")
end

function Quest75104:OnSubFinish7510412(arg1)
    print("OnSubFinish7510412")
end

function Quest75104:OnSubStart7510413(arg1)
    print("OnSubStart7510413")
end

function Quest75104:OnSubFinish7510413(arg1)
    print("OnSubFinish7510413")
end

function Quest75104:OnSubStart7510414(arg1)
    print("OnSubStart7510414")
end

function Quest75104:OnSubFinish7510414(arg1)
    print("OnSubFinish7510414")
end

function Quest75104:OnSubStart7510415(arg1)
    print("OnSubStart7510415")
end

function Quest75104:OnSubFinish7510415(arg1)
    print("OnSubFinish7510415")
end

function Quest75104:OnSubStart7510416(arg1)
    print("OnSubStart7510416")
end

function Quest75104:OnSubFinish7510416(arg1)
    print("OnSubFinish7510416")
end

function Quest75104:OnSubStart7510417(arg1)
    print("OnSubStart7510417")
end

function Quest75104:OnSubFinish7510417(arg1)
    print("OnSubFinish7510417")
end

function Quest75104:OnSubStart7510403(arg1)
    print("OnSubStart7510403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6257Data.id, 7510403, 0, 60, 1, false)
end

function Quest75104:OnSubFinish7510403(arg1)
    print("OnSubFinish7510403")
end

function Quest75104:OnSubStart7510418(arg1)
    print("OnSubStart7510418")
end

function Quest75104:OnSubFinish7510418(arg1)
    print("OnSubFinish7510418")
end

function Quest75104:OnSubStart7510419(arg1)
    print("OnSubStart7510419")
end

function Quest75104:OnSubFinish7510419(arg1)
    print("OnSubFinish7510419")
end

function Quest75104:OnSubStart7510422(arg1)
    print("OnSubStart7510422")
end

function Quest75104:OnSubFinish7510422(arg1)
    print("OnSubFinish7510422")
end

function Quest75104:OnSubStart7510420(arg1)
    print("OnSubStart7510420")
end

function Quest75104:OnSubFinish7510420(arg1)
    print("OnSubFinish7510420")
end

function Quest75104:OnSubStart7510421(arg1)
    print("OnSubStart7510421")
end

function Quest75104:OnSubFinish7510421(arg1)
    print("OnSubFinish7510421")
end

function Quest75104:OnSubStart7510404(arg1)
    print("OnSubStart7510404")
end

function Quest75104:OnSubFinish7510404(arg1)
    print("OnSubFinish7510404")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75104:OnSubStart7510405(arg1)
    print("OnSubStart7510405")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6257Data.id, 7510405, 0, 60, 1, false)
end

function Quest75104:OnSubFinish7510405(arg1)
    print("OnSubFinish7510405")
end

function Quest75104:OnSubStart7510406(arg1)
    print("OnSubStart7510406")
    this:CreateQuestNpc(arg1, npcs.Npc6257Data.id, 0, false, 0)
end

function Quest75104:OnSubFinish7510406(arg1)
    print("OnSubFinish7510406")
end

function Quest75104:OnSubStart7510407(arg1)
    print("OnSubStart7510407")
    this:CreateQuestNpc(arg1, npcs.Npc6257Data.id, 0, false, 0)
end

function Quest75104:OnSubFinish7510407(arg1)
    print("OnSubFinish7510407")
end

function Quest75104:OnSubStart7510408(arg1)
    print("OnSubStart7510408")
end

function Quest75104:OnSubFinish7510408(arg1)
    print("OnSubFinish7510408")
end

function Quest75104:OnSubStart7510409(arg1)
    print("OnSubStart7510409")
    this:CreateQuestNpc(arg1, npcs.Npc6257Data.id, 0, false, 0)
end

function Quest75104:OnSubFinish7510409(arg1)
    print("OnSubFinish7510409")
end

function Quest75104:OnSubStart7510410(arg1)
    print("OnSubStart7510410")
end

function Quest75104:OnSubFinish7510410(arg1)
    print("OnSubFinish7510410")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75104:OnSubStart7510411(arg1)
    print("OnSubStart7510411")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6257Data.id, 7510411, 0, 60, 1, false)
    this:LightNotifyTo(npcs.Npc6257Data.alias, 0, true)
end

function Quest75104:OnSubFinish7510411(arg1)
    print("OnSubFinish7510411")
    this:SafeDestroyQuestNpc(npcs.Npc6257Data.alias, 3)
end

return Quest75104
