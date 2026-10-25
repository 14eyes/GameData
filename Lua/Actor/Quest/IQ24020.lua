require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24020 = class("Quest24020", QuestActorProxy)
Quest24020.defaultAlias = "Quest24020"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24020:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2402001"] = self.OnSubStart2402001,
        ["2402002"] = self.OnSubStart2402002,
        ["2402003"] = self.OnSubStart2402003,
        ["2402004"] = self.OnSubStart2402004,
        ["2402005"] = self.OnSubStart2402005,
        ["2402006"] = self.OnSubStart2402006
    }
end

function Quest24020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2402001"] = self.OnSubFinish2402001,
        ["2402002"] = self.OnSubFinish2402002,
        ["2402003"] = self.OnSubFinish2402003,
        ["2402004"] = self.OnSubFinish2402004,
        ["2402005"] = self.OnSubFinish2402005,
        ["2402006"] = self.OnSubFinish2402006
    }
end

function Quest24020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24020:Start()
    print("Start")
end

function Quest24020:OnDestroy()
    print("OnDestroy")
end

function Quest24020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5142Data.alias, 3)
end

function Quest24020:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24020:OnSubStart2402001(arg1)
    print("OnSubStart2402001")
    this:CreateQuestNpc(arg1, npcs.Npc5142Data.id, 0)
end

function Quest24020:OnSubFinish2402001(arg1)
    print("OnSubFinish2402001")
end

function Quest24020:OnSubStart2402002(arg1)
    print("OnSubStart2402002")
end

function Quest24020:OnSubFinish2402002(arg1)
    print("OnSubFinish2402002")
end

function Quest24020:OnSubStart2402003(arg1)
    print("OnSubStart2402003")
end

function Quest24020:OnSubFinish2402003(arg1)
    print("OnSubFinish2402003")
end

function Quest24020:OnSubStart2402004(arg1)
    print("OnSubStart2402004")
end

function Quest24020:OnSubFinish2402004(arg1)
    print("OnSubFinish2402004")
end

function Quest24020:OnSubStart2402005(arg1)
    print("OnSubStart2402005")
end

function Quest24020:OnSubFinish2402005(arg1)
    print("OnSubFinish2402005")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5142Data.alias)
end

function Quest24020:OnSubStart2402006(arg1)
    print("OnSubStart2402006")
end

function Quest24020:OnSubFinish2402006(arg1)
    print("OnSubFinish2402006")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5142Data.alias)
end

return Quest24020
