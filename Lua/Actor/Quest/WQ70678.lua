require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70678 = class("Quest70678", QuestActorProxy)
Quest70678.defaultAlias = "Quest70678"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70678:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70678:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7067801"] = self.OnSubStart7067801,
        ["7067802"] = self.OnSubStart7067802,
        ["7067803"] = self.OnSubStart7067803
    }
end

function Quest70678:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7067801"] = self.OnSubFinish7067801,
        ["7067802"] = self.OnSubFinish7067802,
        ["7067803"] = self.OnSubFinish7067803
    }
end

function Quest70678:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70678:Start()
    print("Start")
end

function Quest70678:OnDestroy()
    print("OnDestroy")
end

function Quest70678:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70678:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70678:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70678:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest70678:OnSubStart7067801(arg1)
    print("OnSubStart7067801")
    this:CreateQuestNpc(arg1, npcs.Npc9500Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc9500Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
end

function Quest70678:OnSubFinish7067801(arg1)
    print("OnSubFinish7067801")
end

function Quest70678:OnSubStart7067802(arg1)
    print("OnSubStart7067802")
    actorUtils.FinishQuestID(false, 7067802)
end

function Quest70678:OnSubFinish7067802(arg1)
    print("OnSubFinish7067802")
end

function Quest70678:OnSubStart7067803(arg1)
    print("OnSubStart7067803")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc9500Data.id, 7067803, 0, 40, 1, true)
end

function Quest70678:OnSubFinish7067803(arg1)
    print("OnSubFinish7067803")
    this:SafeDestroyQuestNpc(npcs.Npc9500Data.alias, 48000)
end

return Quest70678
