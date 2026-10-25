require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20021 = class("Quest20021", QuestActorProxy)
Quest20021.defaultAlias = "Quest20021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2002101"] = self.OnSubStart2002101,
        ["2002102"] = self.OnSubStart2002102,
        ["2002103"] = self.OnSubStart2002103,
        ["2002104"] = self.OnSubStart2002104,
        ["2002105"] = self.OnSubStart2002105,
        ["2002106"] = self.OnSubStart2002106
    }
end

function Quest20021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2002101"] = self.OnSubFinish2002101,
        ["2002102"] = self.OnSubFinish2002102,
        ["2002103"] = self.OnSubFinish2002103,
        ["2002104"] = self.OnSubFinish2002104,
        ["2002105"] = self.OnSubFinish2002105,
        ["2002106"] = self.OnSubFinish2002106
    }
end

function Quest20021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20021:Start()
    print("Start")
end

function Quest20021:OnDestroy()
    print("OnDestroy")
end

function Quest20021:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
end

function Quest20021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
end

function Quest20021:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20021:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20021:OnSubStart2002101(arg1)
    print("OnSubStart2002101")
    self:NpcCreate(arg1, npcs.Npc1405Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1408Data.id, 2)
end

function Quest20021:OnSubFinish2002101(arg1)
    print("OnSubFinish2002101")
end

function Quest20021:OnSubStart2002102(arg1)
    print("OnSubStart2002102")
end

function Quest20021:OnSubFinish2002102(arg1)
    print("OnSubFinish2002102")
end

function Quest20021:OnSubStart2002103(arg1)
    print("OnSubStart2002103")
end

function Quest20021:OnSubFinish2002103(arg1)
    print("OnSubFinish2002103")
end

function Quest20021:OnSubStart2002104(arg1)
    print("OnSubStart2002104")
end

function Quest20021:OnSubFinish2002104(arg1)
    print("OnSubFinish2002104")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1405Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1408Data.alias)
end

function Quest20021:OnSubStart2002105(arg1)
    print("OnSubStart2002105")
end

function Quest20021:OnSubFinish2002105(arg1)
    print("OnSubFinish2002105")
end

function Quest20021:OnSubStart2002106(arg1)
    print("OnSubStart2002106")
end

function Quest20021:OnSubFinish2002106(arg1)
    print("OnSubFinish2002106")
end

return Quest20021
