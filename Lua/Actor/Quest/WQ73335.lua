require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73335 = class("Quest73335", QuestActorProxy)
Quest73335.defaultAlias = "Quest73335"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73335:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73335:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7333502"] = self.OnSubStart7333502,
        ["7333504"] = self.OnSubStart7333504,
        ["7333508"] = self.OnSubStart7333508,
        ["7333503"] = self.OnSubStart7333503,
        ["7333506"] = self.OnSubStart7333506,
        ["7333507"] = self.OnSubStart7333507,
        ["7333505"] = self.OnSubStart7333505
    }
end

function Quest73335:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7333502"] = self.OnSubFinish7333502,
        ["7333504"] = self.OnSubFinish7333504,
        ["7333508"] = self.OnSubFinish7333508,
        ["7333503"] = self.OnSubFinish7333503,
        ["7333506"] = self.OnSubFinish7333506,
        ["7333507"] = self.OnSubFinish7333507,
        ["7333505"] = self.OnSubFinish7333505
    }
end

function Quest73335:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73335:Start()
    print("Start")
end

function Quest73335:OnDestroy()
    print("OnDestroy")
end

function Quest73335:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73335:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73335:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73335:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73335:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73335:OnSubStart7333502(arg1)
    print("OnSubStart7333502")
end

function Quest73335:OnSubFinish7333502(arg1)
    print("OnSubFinish7333502")
end

function Quest73335:OnSubStart7333504(arg1)
    print("OnSubStart7333504")
end

function Quest73335:OnSubFinish7333504(arg1)
    print("OnSubFinish7333504")
end

function Quest73335:OnSubStart7333508(arg1)
    print("OnSubStart7333508")
end

function Quest73335:OnSubFinish7333508(arg1)
    print("OnSubFinish7333508")
end

function Quest73335:OnSubStart7333503(arg1)
    print("OnSubStart7333503")
end

function Quest73335:OnSubFinish7333503(arg1)
    print("OnSubFinish7333503")
end

function Quest73335:OnSubStart7333506(arg1)
    print("OnSubStart7333506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20987Data.id, 7333506, 1, 80, 1)
end

function Quest73335:OnSubFinish7333506(arg1)
    print("OnSubFinish7333506")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73335:OnSubStart7333507(arg1)
    print("OnSubStart7333507")
    actorUtils.FinishQuestID(false, 7333507)
end

function Quest73335:OnSubFinish7333507(arg1)
    print("OnSubFinish7333507")
end

function Quest73335:OnSubStart7333505(arg1)
    print("OnSubStart7333505")
end

function Quest73335:OnSubFinish7333505(arg1)
    print("OnSubFinish7333505")
end

return Quest73335
